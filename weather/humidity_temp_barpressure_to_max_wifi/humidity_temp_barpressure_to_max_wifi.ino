#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h>
#include "WiFiS3.h"
#include "arduino_secrets.h"
#include <OSCMessage.h>

#define SEALEVELPRESSURE_HPA (1013.25)

#define BME_ADDRESS 0x76
Adafruit_BME280 bme;

#define REMOTE_PORT 9876
unsigned int localPort = 2390;
char ssid[] = SECRET_SSID;
char pass[] = SECRET_PASS;
int status = WL_IDLE_STATUS;
char packetBuffer[256];
WiFiUDP Udp;

float tempC, tempF, pressure, humidity, altitudeM, altitudeF;
unsigned int tempF_out, pressure_out, humidity_out, altitudeF_out;

void setup() {
  Serial.begin(9600);

	if (!bme.begin(BME_ADDRESS)) {
		Serial.println("Could not find a valid BME280 sensor, check wiring!");
		while (1);
	}

  Wire.begin();

  if (WiFi.status() == WL_NO_MODULE) {
    Serial.println("Communication with WiFi module failed!");
    // don't continue
    while (true);
  }

  String fv = WiFi.firmwareVersion();
  if (fv < WIFI_FIRMWARE_LATEST_VERSION) {
    Serial.println("Please upgrade the firmware");
  }

  while (status != WL_CONNECTED) {
    Serial.print("Attempting to connect to SSID: ");
    Serial.println(ssid);
    // Connect to WPA/WPA2 network. Change this line if using open or WEP network:
    status = WiFi.begin(ssid, pass);

    // wait 10 seconds for connection:
    delay(10000);
  }

  Serial.println("Connected to WiFi");
  printWifiStatus();

  Serial.println("\nStarting connection to server...");
  Udp.begin(localPort);
}

void loop() {
  readStep();
  if (receiveUdp()) {
    sendUdp();
  }
  // printStep();
  // serialStep();
	delay(100);
}

void readStep() {
  // temperature in Celsius and Fahrenheit
  tempC = bme.readTemperature();
  tempF = tempC * 9 / 5 + 32;

  // barometric pressure in hectopascals, aka millibars
  pressure = bme.readPressure() / 100.0F;

  // humidity as a percent
  humidity = bme.readHumidity();

  // altitude in meters and feet
  altitudeM = bme.readAltitude(SEALEVELPRESSURE_HPA);
  altitudeF = altitudeM * 3.280839895;
}

// void printStep() {
//   Serial.print("Temperature = ");
// 	Serial.print(tempC);
// 	Serial.print("*C / ");
//   Serial.print(tempF);
//   Serial.println("*F");

// 	Serial.print("Pressure = ");
// 	Serial.print(pressure);
// 	Serial.println("hPa");

// 	Serial.print("Humidity = ");
// 	Serial.print(humidity);
// 	Serial.println("%");

// 	Serial.print("Approx. Altitude = ");
// 	Serial.print(altitudeM);
// 	Serial.print("m / ");
//   Serial.print(altitudeF);
//   Serial.println("ft");

// 	Serial.println();
// }

// void serialStep() {
//   float scaleNumerator = (1<<14) - 1.0;

//   float tempScale = scaleNumerator / ((float) 100 * 2.0);
//   tempF_out = (unsigned int) ((tempF + 100) * tempScale);

//   float pressureScale = scaleNumerator / ((float) 1050);
//   pressure_out = (unsigned int) (pressure * pressureScale);

//   float humidityScale = scaleNumerator / ((float) 100);
//   humidity_out = (unsigned int) (humidity * humidityScale);

//   float altitudeScale = scaleNumerator / ((float) 8000);
//   altitudeF_out = (unsigned int) ((altitudeF + 50) * altitudeScale);

//   Serial.write(255);

//   Serial.write(tempF_out >> 7);
//   Serial.write(tempF_out & 127);
//   Serial.write(pressure_out >> 7);
//   Serial.write(pressure_out & 127);
//   Serial.write(humidity_out >> 7);
//   Serial.write(humidity_out & 127);
//   Serial.write(altitudeF_out >> 7);
//   Serial.write(altitudeF_out & 127);
// }

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

int receiveUdp() {
  // look for a UDP a packet
  int packetSize = Udp.parsePacket();

  // if packetSize is non-zero, we've received new data
  if (packetSize) {
    Serial.print("-- Received packet of size ");
    Serial.println(packetSize);
    Serial.print("From ");
    IPAddress remoteIp = Udp.remoteIP();
    Serial.print(remoteIp);
    Serial.print(", port ");
    Serial.println(Udp.remotePort());

    // read the packet into packetBufffer
    int len = Udp.read(packetBuffer, 255);
    if (len > 0) {
      packetBuffer[len] = 0;
    }

    Serial.println("Contents:");
    Serial.println(packetBuffer);
  }

  return (packetSize);

}

void sendUdp() {
    // scale for sending data
  float scaleNumerator = (1<<14) - 1.0;

  float tempScale = scaleNumerator / ((float) 100 * 2.0);
  tempF_out = (unsigned int) ((tempF + 100) * tempScale);

  float pressureScale = scaleNumerator / ((float) 1050);
  pressure_out = (unsigned int) (pressure * pressureScale);

  float humidityScale = scaleNumerator / ((float) 100);
  humidity_out = (unsigned int) (humidity * humidityScale);

  float altitudeScale = scaleNumerator / ((float) 8000);
  altitudeF_out = (unsigned int) ((altitudeF + 50) * altitudeScale);

  OSCMessage msg("/analog");

  msg.add(tempF_out >> 7);
  msg.add(tempF_out & 127);
  msg.add(pressure_out >> 7);
  msg.add(pressure_out & 127);
  msg.add(humidity_out >> 7);
  msg.add(humidity_out & 127);
  msg.add(altitudeF_out >> 7);
  msg.add(altitudeF_out & 127);

  Serial.println("-- Sending an OSC message to ");
  Serial.print(Udp.remoteIP());
  Serial.print(", port ");
  Serial.println(REMOTE_PORT);

  Udp.beginPacket(Udp.remoteIP(), REMOTE_PORT);
  msg.send(Udp);    // write the OSC msg into the UDP packet
  Udp.endPacket();  // terminate and send the UDP packet
  msg.empty();      // free space occupied by message
}