/*
  OSCWifi.ino
  Michael Gurevich

  Stream analog input data as OSC Messages via UDP 

  based on "UDPSendMessage.ino" by Adrian Freed in the OSC library
  and 
  "WIFISendReceiveString.ino" by dlf in the WiFiNINA library

 */

#include <WiFiS3.h>
#include <OSCMessage.h>
#include "arduino_secrets.h"
// if you are using this on a private WIFI router, you can put your SSID and Password in the
// arduino_secrets.h file, and not include this file when you share it with others

#define NSENSORS 2  // number of analog channels to stream

char ssid[] = SECRET_SSID;  // your network SSID (name)
char pass[] = SECRET_PASS;  // your network password (use for WPA, or use as key for WEP)
                            // -- initialize these in arduino_secrets.h

int status = WL_IDLE_STATUS;  // WIFI hardware status

int keyIndex = 0;  // your network key index number (needed only for WEP)

IPAddress remoteIp;

WiFiUDP Udp;      

unsigned int localPort = 8888;   // local port to listen for OSC messages on
unsigned int remotePort = 9999;  // remote port to send OSC messages to

boolean streamData_flag = false;

void setup() {
  //Initialize serial and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ;  // wait for serial port to connect. Needed for native USB port only
  }

  // check for the WiFi module:
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

    // wait 5 seconds for connection:
    delay(5000);
  }

  printWifiStatus();

  Udp.begin(localPort);  // begin UDP
}


void loop() {
  OSCMessage msgIN;  // object to store incoming OSC messages

  int packetSize = Udp.parsePacket();  // returns the size if there is an incoming UDP packet

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

void sendAnalogOSC() {

  //create a new OSC message with address "/analog" -- all messages need an address string
  OSCMessage msg("/analog");

  // add analog values to the message
  for (int i = 0; i < NSENSORS; i++) {
    int32_t a = (int32_t)analogRead(i);
    msg.add(a);
  }

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
