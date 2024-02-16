#include <WiFiS3.h>
#include <OSCMessage.h>
#include "arduino_secrets.h"

// set up wifi
char ssid[] = SECRET_SSID;
char pass[] = SECRET_PASS;

int status = WL_IDLE_STATUS;

int keyIndex = 0;

IPAddress remoteIp;
WiFiUDP Udp;

unsigned int localPort = 8888;   // local port to listen for OSC messages on
unsigned int remotePort = 9999;  // remote port to send OSC messages to

boolean streamData_flag = true;

// set up sensors
#define NSENSORS 2

int s0 = 7;
int s1 = 6;
int s2 = 5;
int s3 = 4;

int analogPin = 0;  // pin number connected to the multiplexer's z pin
 
void setup(){
  // wifi setup
  while (!Serial) {
    ;  // wait for serial port to connect. Needed for native USB port only
  }

  if (WiFi.status() == WL_NO_MODULE) {
    Serial.println("Communication with WiFi module failed!");
    // don't continue
    while (true)
      ;
  }
  // attempt to connect to WiFi network:
  while (status != WL_CONNECTED) {
    Serial.print("Attempting to connect to SSID: ");
    Serial.println(ssid);
    // Connect to WPA/WPA2 network. Change this line if using open or WEP network:
    status = WiFi.begin(ssid, pass);

    delay(5000);
  }

  printWifiStatus();

  Udp.begin(localPort);
 
  // pin setup
  pinMode(s0, OUTPUT);    // s0
  pinMode(s1, OUTPUT);    // s1
  pinMode(s2, OUTPUT);    // s2
  pinMode(s3, OUTPUT);    // s3

  Serial.begin(9600);
}

 
void loop () {
  OSCMessage msgIN;
  int packetSize = Udp.parsePacket(); 

  if (packetSize) {             //if size is nonzero (there is a packet)
    remoteIp = Udp.remoteIP();  //set our destination to the IP address of the requester

    displayPacketInfo(packetSize);  //Debug packet info on serial port

    while (packetSize--) {  //read the UDP data into the OSC message object
      msgIN.fill(Udp.read());
    }

    if (!msgIN.hasError()) {             // error checking
      if (msgIN.fullMatch("/stream")) {  //parse for stream mesage
        streamData_flag = true;
        Serial.println("streaming data...");
      }
      if (msgIN.fullMatch("/stop")) {  //parse for stream mesage
        streamData_flag = false;
        Serial.println("streaming stopped.");
      }
    } else {
      Serial.print("Error in msg: ");
      Serial.println(msgIN.getError());
    }
  }

  if (streamData_flag) {  //we've received the stream message, begin sending data
    sendAnalogOSC();
  }

  delay(50);
}

////////////// WIFI UTILITIES ////////////////////////////
void sendAnalogOSC() {
  int b0, b1, b2, b3;   //variables for storing the 4 bits of the y pin number
  int sensors[NSENSORS];   //sensor values
  OSCMessage msg("/analog");

  for (int count=0; count<NSENSORS; count++) {
    // select the bit  
    b0 = bitRead(count,0);  // bit 0 of count
    b1 = bitRead(count,1);  // bit 1 of count
    b2 = bitRead(count,2);  // bit 2 of count 
    b3 = bitRead(count,3);  // bit 3 of count    

    digitalWrite(s0, b0);   // set address pin 0 of the mux
    digitalWrite(s1, b1);   // set address pin 1 of the mux
    digitalWrite(s2, b2);   // set address pin 2 of the mux
    digitalWrite(s3, b3);   // set address pin 3 of the mux

    sensors[count] = analogRead(analogPin);   // get the analog value -- only read 1 pin
    int32_t a = (int32_t)analogRead(analogPin);

    msg.add(a);
    Serial.print(sensors[count]);  //print to serial monitor
    Serial.print(" | ");          
  }  
  Serial.println();

  Udp.beginPacket(remoteIp, remotePort);  // create a new UDP packet
  msg.send(Udp);                          // write the OSC msg into the UDP packet
  Udp.endPacket();                        // terminate and send the UDP packet
  msg.empty();                            // free space occupied by message
}

void displayPacketInfo(int size) {

  Serial.print("Received packet of size ");
  Serial.println(size);
  Serial.print("From ");
  Serial.print(remoteIp);
  Serial.print(", port ");
  Serial.println(Udp.remotePort());
}

void printWifiStatus() {

  Serial.println("Connected to WiFi");

  // print the SSID of the network you're attached to:
  Serial.print("SSID: ");
  Serial.println(WiFi.SSID());

  // print your board's IP address:
  IPAddress ip = WiFi.localIP();
  Serial.print("IP Address: ");
  Serial.println(ip);

  // print the received signal strength:
  long rssi = WiFi.RSSI();
  Serial.print("signal strength (RSSI):");
  Serial.print(rssi);
  Serial.println(" dBm");
}
