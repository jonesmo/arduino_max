#include "FastIMU.h"
#include <Wire.h>
#include "Adafruit_MPR121.h"

//////////////////////// IMU ///////////////////////
#define ACCEL_RANGE 4
#define GYRO_RANGE 500

#define IMU_ADDRESS 0x69
BMI160 IMU;

calData calib = { 0 };
AccelData accelData;
GyroData gyroData;

// unsigned 16-bit variables for adjusted values to be sent to max
unsigned int a_x_out, a_y_out, a_z_out;
unsigned int g_x_out, g_y_out, g_z_out;

/////////////////////// TOUCH CAPACITOR /////////////////
#define TOUCH_ADDRESS 0x5A

#ifndef _BV
#define _BV(bit) (1 << (bit)) 
#endif

Adafruit_MPR121 cap = Adafruit_MPR121();
uint16_t lasttouched = 0;
uint16_t currtouched = 0;

////////////////////// PRESSURE SENSOR ////////////////////
int a_reading;
int analogPin = 0;

///////////////////// LIGHT BULBS ////////////////////////
int ledPin   = 3;
int i = 0;
bool increasing = true;

void setup() {
  Serial.begin(115200);
  while (!Serial) ;
  delay(1000); //kill some time while while the IMU powers up

  Wire.begin();

  int err = IMU.init(calib, IMU_ADDRESS);

  if (err != 0) {
    Serial.print("Error initializing IMU: ");
    Serial.println(err);
    while (true) {
      ;
    }
  }

  err = IMU.setAccelRange(ACCEL_RANGE);   //Valid ranges are  ±2g, ±4g, ±8g, ±16g
  err = IMU.setGyroRange(GYRO_RANGE);  //Valid ranges are: ±125, ±250, ±500, ±1000, ±2000 (degrees per second)  

  if (err != 0) {
    Serial.print("Error setting accel/gyro range: ");
    Serial.println(err);
    while (true) {
      ;
    }
  }

  if (!cap.begin(0x5A)) {
    Serial.println("MPR121 not found, check wiring?");
    while (1);
  }
  Serial.println("MPR121 found!");

  pinMode(ledPin,OUTPUT);
}

void loop()
{
  imuStep();
  touchStep();
  pressureStep();
  lightStep();
  serialStep();
  delay(10);
}

void imuStep() {
  IMU.update();
  IMU.getAccel(&accelData);
  IMU.getGyro(&gyroData);
}

void touchStep() {
  currtouched = cap.touched();
  
  for (uint8_t i=0; i<12; i++) {
    if ((currtouched & _BV(i)) && !(lasttouched & _BV(i)) ) {
      Serial.print(i); Serial.println(" touched");
    }
    if (!(currtouched & _BV(i)) && (lasttouched & _BV(i)) ) {
      Serial.print(i); Serial.println(" released");
    }
  }

  lasttouched = currtouched;

  // comment out this line for detailed data from the sensor!
  return;

  // debugging info
  Serial.print("\t\t\t\t\t\t\t\t\t\t\t\t\t 0x"); Serial.println(cap.touched(), HEX);
  Serial.print("Filt: ");
  for (uint8_t i=0; i<12; i++) {
    Serial.print(cap.filteredData(i)); Serial.print("\t");
  }
  Serial.println();
  Serial.print("Base: ");
  for (uint8_t i=0; i<12; i++) {
    Serial.print(cap.baselineData(i)); Serial.print("\t");
  }
  Serial.println();
}

void pressureStep() {
  a_reading = analogRead(analogPin);

  Serial.println(a_reading);
}

void lightStep() {
  if (increasing == true) {
    if (i < 255) {
        i++;
        analogWrite(ledPin, i);
    }
    if (i == 255) {
      increasing = false;
    }
  }

  if (increasing == false) {
    if (i > 0) {
      i--;
      analogWrite(ledPin, i);
    }
    if (i == 0) {
      increasing = true;
    }
  }
}

void serialStep() {

  float scaleNumerator = (1<<14) - 1.0;
  float accelScale = scaleNumerator / ((float) ACCEL_RANGE * 2.0);
  
  a_x_out = (unsigned int) ((accelData.accelX + ACCEL_RANGE) * accelScale);
  a_y_out = (unsigned int) ((accelData.accelY + ACCEL_RANGE) * accelScale);
  a_z_out = (unsigned int) ((accelData.accelZ + ACCEL_RANGE) * accelScale);

  float gyroScale = scaleNumerator / ((float) GYRO_RANGE * 2.0);

  g_x_out = (unsigned int) ((gyroData.gyroX + GYRO_RANGE) * gyroScale);
  g_y_out = (unsigned int) ((gyroData.gyroY + GYRO_RANGE) * gyroScale);
  g_z_out = (unsigned int) ((gyroData.gyroZ + GYRO_RANGE) * gyroScale);


  Serial.print("acc: ");
  Serial.print(a_x_out);
  Serial.print(" | ");
  Serial.print(a_y_out);
  Serial.print(" | ");  
  Serial.println(a_z_out);

  //separate packets with the value 255
  // Serial.write(255);

  // for each axis, send 7MSB by right shifting by 7
  // then send 7LSB by binary & with 0b1111111 (==127)
  
  // Serial.write(a_x_out >> 7);
  // Serial.write(a_x_out & 127);
  // Serial.write(a_y_out >> 7);
  // Serial.write(a_y_out & 127);
  // Serial.write(a_z_out >> 7);
  // Serial.write(a_z_out & 127);

  // Serial.write(g_x_out >> 7);
  // Serial.write(g_x_out & 127);
  // Serial.write(g_y_out >> 7);
  // Serial.write(g_y_out & 127);
  // Serial.write(g_z_out >> 7);
  // Serial.write(g_z_out & 127);
}