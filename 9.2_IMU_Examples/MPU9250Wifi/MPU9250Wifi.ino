
/* MPU9250Wifi.ino
   Michael Gurevich

  Get data from MPU9250 IMU and send via OSC over Wifi
  Uses MPU9250 library from hideakitai 0.4.8 (via package manager)
  https://github.com/hideakitai/MPU9250

  based on examples from MPU9250 library

  Uses OSC library by Adrian Freed (tested v 1.3.7)
  */

#include "MPU9250.h"

#include <WiFiS3.h>
#include <OSCBundle.h>
#include "arduino_secrets.h"

#define updateRate 25

#define MPU9250_ADDRESS 0x68

struct Quat {
  float x;
  float y;
  float z;
  float w;
} quat;
struct Euler {
  float x;
  float y;
  float z;
} euler;

struct YPR {
  float r;
  float p;
  float y;
} ypr;

struct Acc {
  float x;
  float y;
  float z;
} acc;

struct LinAcc {
  float x;
  float y;
  float z;
} linAcc;

struct Mag {
  float x;
  float y;
  float z;
} mag;

struct Gyr {
  float x;
  float y;
  float z;
} gyr;


char ssid[] = SECRET_SSID;    // your network SSID (name)
char pass[] = SECRET_PASS;    // your network password (use for WPA, or use as key
int status = WL_IDLE_STATUS;  // WIFI hardware status

IPAddress remoteIp;

WiFiUDP Udp;

unsigned int localPort = 8888;   // local port to listen for OSC messages on
unsigned int remotePort = 9999;  // remote port to send OSC messages to

boolean streamData_flag = false;
boolean serialDebug = false;

MPU9250 mpu;

void setup() {
  Wire.begin();        // initialize I2C
  delay(2000);         // not sure why this is necessary, but it seems to help some initialization issues
  Serial.begin(9600);  //maximum baud rate supported by Max
  while (!Serial) {
    ;  // wait for serial port to connect. Needed for native USB port only
  }
  delay(2000);  // not sure why this is necessary, but it seems to help some initialization issues


  initWifi();
  mpu.verbose(true);
  initMPU9250();
}

void loop() {
  if (mpu.update()) {
    
    static uint32_t prev_ms = millis();
    if (millis() > prev_ms + updateRate) {
      imuUpdate();
      if (streamData_flag) {  //we've received the stream message, begin sending data
        imuOSC();
      }
      if (serialDebug) {
        imuSerialDebug();
      }
      prev_ms = millis();
    }
  }

  int packetSize = Udp.parsePacket();  // returns the size if there is an incoming UDP packet
  if (packetSize) {                    //if size is nonzero (there is a packet)
    parseUDP(packetSize);
  }
}


void initMPU9250() {

  if (!mpu.setup(0x68)) {  // change to your own address
    while (1) {
      Serial.println("MPU connection failed. Please check your connection with `connection_check` example.");
      delay(5000);
    }
  }

  // OPTIONAL CALIBRATION
  // TODO: make these occur based on OSC messages from Max
  Serial.println("Accel Gyro calibration will start in 5sec.");
  Serial.println("Please leave the device still on the flat plane.");
  mpu.verbose(true);
  delay(5000);

  mpu.calibrateAccelGyro();
  //Serial.println("Mag calibration will start in 5sec.");
  //Serial.println("Please Wave device in a figure eight until done.");
  //delay(5000);
  //mpu.calibrateMag();

  print_calibration();
  mpu.verbose(false);
}

void initWifi() {

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


void parseUDP(int size) {
  OSCMessage msgIN;  // object to store incoming OSC messages

  remoteIp = Udp.remoteIP();  //set our destination to the IP address of the requester

  displayPacketInfo(size);  //Debug packet info on serial port

  while (size--) {  //read the UDP data into the OSC message object
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

void imuOSC() {

  // send acceleration
  OSCMessage msg("/imu/acc");
  msg.add(acc.x).add(acc.y).add(acc.z);

  Udp.beginPacket(remoteIp, remotePort);
  msg.send(Udp);   // send the bytes to the SLIP stream
  Udp.endPacket();  // mark the end of the OSC Packet
  msg.empty();

  // send gyro
  msg.setAddress("/imu/gyr");
  msg.add(gyr.x).add(gyr.y).add(gyr.z);

  Udp.beginPacket(remoteIp, remotePort);
  msg.send(Udp);   // send the bytes to the SLIP stream
  Udp.endPacket();  // mark the end of the OSC Packet
  msg.empty();

  // send ypr
  msg.setAddress("/imu/ypr");
  msg.add(ypr.y).add(ypr.p).add(ypr.r);

  Udp.beginPacket(remoteIp, remotePort);
  msg.send(Udp);   // send the bytes to the SLIP stream
  Udp.endPacket();  // mark the end of the OSC Packet
  msg.empty();

}

void imuUpdate() {
  // don't necessarily need to get all of these if they aren't being used.
  // quat.x = mpu.getQuaternionX();
  // quat.y = mpu.getQuaternionY();
  // quat.z = mpu.getQuaternionZ();
  // quat.w = mpu.getQuaternionW();
  // euler.x = mpu.getEulerX();
  // euler.y = mpu.getEulerY();
  // euler.z = mpu.getEulerZ();
  ypr.r = mpu.getRoll();
  ypr.p = mpu.getPitch();
  ypr.y = mpu.getYaw();
  acc.x = mpu.getAccX();
  acc.y = mpu.getAccY();
  acc.z = mpu.getAccZ();
  // linAcc.x = mpu.getLinearAccX();
  // linAcc.y = mpu.getLinearAccY();
  // linAcc.z = mpu.getLinearAccZ();
  mag.x = mpu.getMagX();
  mag.y = mpu.getMagY();
  mag.z = mpu.getMagZ();
  gyr.x = mpu.getGyroX();
  gyr.y = mpu.getGyroY();
  gyr.z = mpu.getGyroZ();
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

void displayPacketInfo(int size) {
  Serial.print("Received packet of size ");
  Serial.println(size);
  Serial.print("From ");
  Serial.print(remoteIp);
  Serial.print(", port ");
  Serial.println(Udp.remotePort());
}

void imuSerialDebug() {
  Serial.print("Yaw, Pitch, Roll: ");
  Serial.print(ypr.y, 2);
  Serial.print(", ");
  Serial.print(ypr.p, 2);
  Serial.print(", ");
  Serial.print(ypr.r, 2);
  Serial.print(" | ");
  Serial.print("Mag : ");
  Serial.print(mag.x, 2);
  Serial.print(", ");
  Serial.print(mag.y, 2);
  Serial.print(", ");
  Serial.print(mag.z, 2);
  Serial.print(", ");
  Serial.print(" | Acc: = ");
  Serial.print(acc.x, 2);
  Serial.print(", ");
  Serial.print(acc.y, 2);
  Serial.print(", ");
  Serial.println(acc.z, 2);
  Serial.print(" | Gyro: = ");
  Serial.print(gyr.x, 2);
  Serial.print(", ");
  Serial.print(gyr.y, 2);
  Serial.print(", ");
  Serial.println(gyr.z, 2);
}

void print_calibration() {
  Serial.println("< calibration parameters >");
  Serial.println("accel bias [g]: ");
  Serial.print(mpu.getAccBiasX() * 1000.f / (float)MPU9250::CALIB_ACCEL_SENSITIVITY);
  Serial.print(", ");
  Serial.print(mpu.getAccBiasY() * 1000.f / (float)MPU9250::CALIB_ACCEL_SENSITIVITY);
  Serial.print(", ");
  Serial.print(mpu.getAccBiasZ() * 1000.f / (float)MPU9250::CALIB_ACCEL_SENSITIVITY);
  Serial.println();
  Serial.println("gyro bias [deg/s]: ");
  Serial.print(mpu.getGyroBiasX() / (float)MPU9250::CALIB_GYRO_SENSITIVITY);
  Serial.print(", ");
  Serial.print(mpu.getGyroBiasY() / (float)MPU9250::CALIB_GYRO_SENSITIVITY);
  Serial.print(", ");
  Serial.print(mpu.getGyroBiasZ() / (float)MPU9250::CALIB_GYRO_SENSITIVITY);
  Serial.println();
  Serial.println("mag bias [mG]: ");
  Serial.print(mpu.getMagBiasX());
  Serial.print(", ");
  Serial.print(mpu.getMagBiasY());
  Serial.print(", ");
  Serial.print(mpu.getMagBiasZ());
  Serial.println();
  Serial.println("mag scale []: ");
  Serial.print(mpu.getMagScaleX());
  Serial.print(", ");
  Serial.print(mpu.getMagScaleY());
  Serial.print(", ");
  Serial.print(mpu.getMagScaleZ());
  Serial.println();
}