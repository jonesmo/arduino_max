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

unsigned int a_x_out, a_y_out, a_z_out;
unsigned int g_x_out, g_y_out, g_z_out;

/////////////////////// TOUCH CAPACITOR /////////////////
#define TOUCH_ADDRESS 0x5A

Adafruit_MPR121 cap = Adafruit_MPR121();

uint16_t R_state;
uint16_t L_state;

////////////////////// PRESSURE SENSOR ////////////////////
int pressure_reading;
int analogPin = 0;

///////////////////// LIGHT BULBS ////////////////////////
int ledPin   = 3;
int i = 0;
// bool increasing = false;
// bool decreasing = false;
byte inbyte;
// bool lights_on = false;

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
  pressureStep();
  touchStep();
  lightStep();
  serialStep();
  delay(10);
}

void imuStep() {
  IMU.update();
  IMU.getAccel(&accelData);
  IMU.getGyro(&gyroData);
}

void pressureStep() {
  pressure_reading = analogRead(analogPin);

  // Serial.println(pressure_reading);
}

void touchStep() {
  R_state = cap.filteredData(0);
  L_state = cap.filteredData(1);

  // Serial.println(R_state);
  // Serial.println(L_state);
  // Serial.println();
}

void lightStep() {
  if (Serial.available()) {
    inbyte = Serial.read();

    if (inbyte == 254) {
      for (i; i < 255; i++) {
        analogWrite(ledPin, i);
      }
    }
    if (inbyte == 253) {
      for (i; i > 0; i--) {
        analogWrite(ledPin, i);
      }
    }
  }

  // if (increasing == true) {
  //   if (i < 255) {
  //       i++;
  //       analogWrite(ledPin, i);
  //   }
  //   if (i == 255) {
  //     increasing = false;
  //   }
  // }

  // if (increasing == false) {
  //   if (i > 0) {
  //     i--;
  //     analogWrite(ledPin, i);
  //   }
  //   if (i == 0) {
  //     increasing = true;
  //   }
  // }
}

void serialStep() {
  /////// IMU data ///////////////
  float scaleNumerator = (1<<14) - 1.0;

  float gyroScale = scaleNumerator / ((float) GYRO_RANGE * 2.0);

  g_x_out = (unsigned int) ((gyroData.gyroX + GYRO_RANGE) * gyroScale);
  g_y_out = (unsigned int) ((gyroData.gyroY + GYRO_RANGE) * gyroScale);
  g_z_out = (unsigned int) ((gyroData.gyroZ + GYRO_RANGE) * gyroScale);

  Serial.write(255);

  Serial.write(g_x_out >> 7);
  Serial.write(g_x_out & 127);
  Serial.write(g_y_out >> 7);
  Serial.write(g_y_out & 127);
  Serial.write(g_z_out >> 7);
  Serial.write(g_z_out & 127);

  /////// pressure data ///////////////
  Serial.write(pressure_reading >> 7);
  Serial.write(pressure_reading & 127);

  /////// touch capacitor data ///////////////
  Serial.write(L_state >> 7);
  Serial.write(L_state & 127);
  Serial.write(R_state >> 7);
  Serial.write(R_state & 127);
}
