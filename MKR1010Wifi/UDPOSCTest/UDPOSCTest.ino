// Requires OSC Library by Adrian Freed, Yotam Mann
// tested with v. 1.3.5
// Install via Arduino Package Manager or https://github.com/CNMAT/OSC


// Requires WiFiNINA library
// tested with v 1.8.3
// Install via Arduino Package Manager
// More info here: https://www.arduino.cc/en/Reference/WiFiNINA

#include <OSCMessage.h>
#include <SPI.h>
#include <WiFiNINA.h>
#include <WiFiUdp.h>

#include "arduino_secrets.h"

#define REMOTE_PORT 9876

int status = WL_IDLE_STATUS;

// enter your SSID and password in arduino_secrets.h
// that way if you share the .ino with anyone, they won't be able to see your password

char ssid[] = SECRET_SSID;        // your network SSID (name)
char pass[] = SECRET_PASS;        // your network password (use for WPA, or use as key for WEP)
int keyIndex = 0;                 // your network key Index number (needed only for WEP)

unsigned int localPort = 2390;    // local port to listen on; shouldn't need to change this;
// must match the port argument of [udpsend] in Max

char packetBuffer[256]; //buffer to hold incoming packet

WiFiUDP Udp;    // create a Udp object

void setup() {

  //Initialize serial and wait for port to open:
  Serial.begin(9600);
  while (!Serial);

  // attempt to connect to Wifi network:
  while (status != WL_CONNECTED) {
    Serial.print("Attempting to connect to SSID: ");
    Serial.println(ssid);

    // Connect to WPA/WPA2 network. Change this line if using open or WEP network:
    status = WiFi.begin(ssid);

    // wait 10 seconds for connection:
    delay(10000);
  }

  // we only exit the while loop above when there is a successful connection
  // if you get a connection, report back via serial:
  Serial.println("Connected to wifi");
  printWifiStatus();
  Serial.println("\nStarting connection to server...");

  // Initialize Udp
  Udp.begin(localPort);
}

void loop() {

  // check if Udp data is received
  // if it is, send data back
  if (receiveUdp()) {
    sendUdp();
  }
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

  // OSC Address String
  OSCMessage msg("/analog");

  // Add arguments
  for (int i = 0; i < 6; i++) {
    msg.add(analogRead(i));
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
