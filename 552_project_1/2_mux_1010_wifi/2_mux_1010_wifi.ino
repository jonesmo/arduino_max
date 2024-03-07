#include <OSCMessage.h>
#include <SPI.h>
#include <WiFiNINA.h>
#include <WiFiUdp.h>
#include "arduino_secrets.h"

#define NSENSORS 10
#define REMOTE_PORT 9876

int s0 = 2;     // pin number connected to pin S0 of the 4051
int s1 = 3;     // pin number connected to pin S1 of the 4051
int s2 = 4;     // pin number connected to pin S2 of the 4051
int s3 = 5;

int analogPin = 0;

char ssid[] = SECRET_SSID;
char pass[] = SECRET_PASS;

int status = WL_IDLE_STATUS;
unsigned int localPort = 2390;
char packetBuffer[256];
WiFiUDP Udp;
 
void setup(){
 
  pinMode(s0, OUTPUT);    // s0
  pinMode(s1, OUTPUT);    // s1
  pinMode(s2, OUTPUT);    // s2
  pinMode(s3, OUTPUT);    // s3

  Serial.begin(9600);
  while (!Serial);

  // attempt to connect to Wifi network:
  while (status != WL_CONNECTED) {
    Serial.print("Attempting to connect to network: ");
    Serial.println(ssid);
    // Connect to WPA/WPA2 network:
    status = WiFi.begin(ssid, pass);

    // wait 10 seconds for connection:
    delay(10000);
  }

  Serial.println("Connected to wifi");
  printWifiStatus();
  Serial.println("\nStarting connection to server...");

  Udp.begin(localPort);

}

void loop () {
  if (receiveUdp()) {
    sendUdp();
  }
  sendUdp();
  
  // Serial.write(255);
  // for (int count=0; count<NSENSORS; count++) {
  //   // select the bit  
  //   b0 = bitRead(count,0);  // bit 0 of count
  //   b1 = bitRead(count,1);  // bit 1 of count
  //   b2 = bitRead(count,2);  // bit 2 of count 
  //   b3 = bitRead(count,3);  // bit 3 of count    

  //   digitalWrite(s0, b0);   // set address pin 0 of the mux
  //   digitalWrite(s1, b1);   // set address pin 1 of the mux
  //   digitalWrite(s2, b2);   // set address pin 2 of the mux
  //   digitalWrite(s3, b3);   // set address pin 3 of the mux

  //   sensors[count] = analogRead(analogPin);   // get the analog value -- only read 1 pin
  //   // Serial.print(sensors[count]);  //print to serial monitor
  //   // Serial.print(" | "); 

  //   Serial.write(sensors[count] >> 3);
  //   Serial.write(sensors[count] & 7);         
  // }  
  // Serial.println();
  delay(100);
}

/*****************************************************
   int receiveUdp()

   Look for incoming Udp packets.
   If received, print the packet size, sending IP and port to Serial.
   Read the packet contents into a char array and print to Serial.
   Returns the packet size -- should be 0 if no data received.
*/
int receiveUdp() {
  // look for a UDP a packet
  int packetSize = Udp.parsePacket();

  // if packetSize is non-zero, we've received new data
  if (packetSize) {
    Serial.print("Received packet of size ");
    Serial.println(packetSize);
    Serial.print("From ");
    IPAddress remoteIp = Udp.remoteIP();
    Serial.print(remoteIp);
    Serial.print(", port ");
    Serial.println(Udp.remotePort());

    // read the packet into packetBufffer
    // Note that this only works if the incoming udp data is a string
    // If the data is udp
    int len = Udp.read(packetBuffer, 255);
    if (len > 0) {
      packetBuffer[len] = 0;
    }

    Serial.println("Contents:");
    Serial.println(packetBuffer);
  }

  return (packetSize);

}

/***********************************************
 * void sendUdp()
 * 
 * Send an OSC message over UDP
 * Demonstrates sending a single address string and a list of arguments
 * Arguments are integer values from the 6 Arduino analog inputs.
 * 
 */
void sendUdp() {
  int b0, b1, b2, b3;
  int sensors[NSENSORS];
  OSCMessage msg("/analog");

  // Add arguments
  for (int count=0; count<NSENSORS; count++) {
    b0 = bitRead(count,0);  // bit 0 of count
    b1 = bitRead(count,1);  // bit 1 of count
    b2 = bitRead(count,2);  // bit 2 of count 
    b3 = bitRead(count,3);  // bit 3 of count    

    digitalWrite(s0, b0);   // set address pin 0 of the mux
    digitalWrite(s1, b1);   // set address pin 1 of the mux
    digitalWrite(s2, b2);   // set address pin 2 of the mux
    digitalWrite(s3, b3);   // set address pin 3 of the mux

    sensors[count] = analogRead(analogPin);
    msg.add(sensors[count]);
    // msg.add(sensors[count] >> 3);
    // msg.add(sensors[count] & 7);       
  }  

  // send a reply, to the IP address and specified port
  Udp.beginPacket(Udp.remoteIP(), REMOTE_PORT);
  msg.send(Udp);    // write the OSC msg into the UDP packet
  Udp.endPacket();  // terminate and send the UDP packet
  msg.empty();      // free space occupied by message
}

void printWifiStatus() {
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