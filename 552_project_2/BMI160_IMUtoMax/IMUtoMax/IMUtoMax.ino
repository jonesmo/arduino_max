/******************************************************************************

  IMUtoMax.ino

  Michael Gurevich

  Example sending raw data from the BMI160 IMU to Max

  Resources:
  Uses FastIMU.h library

  Hardware connections:
  Connect I2C SDA line to A4
  Connect I2C SCL line to A5
  Connect GND and 3.3v power to the IMU

******************************************************************************/
#include "FastIMU.h"

#define ACCEL_RANGE 4
#define GYRO_RANGE 500

#define IMU_ADDRESS 0x69 //The I2C address of the BMI160 IMU; change for other IMUS
BMI160 IMU;                   //Our IMU

// These are structs to contain the relevant data
calData calib = { 0 };  //Calibration data
AccelData accelData;    //Sensor data
GyroData gyroData;

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
  
  //IF AN INVALID RANGE IS SET IT WILL RETURN -1

  if (err != 0) {
    Serial.print("Error Setting range: ");
    Serial.println(err);
    while (true) {
      ;
    }
  }

}

// unsigned 16-bit variables for adjusted values to be sent to max
unsigned int a_x_out, a_y_out, a_z_out;
unsigned int g_x_out, g_y_out, g_z_out;



void loop()
{
  imuStep();
  serialStep();
  delay(10);
}

void imuStep() {
  IMU.update();
  IMU.getAccel(&accelData);
  IMU.getGyro(&gyroData);
}

void serialStep() {
  
  // raw accelerometer readings are floating point numbers in the range of -4.0 to +4.0
  // So we add 4.0 to convert to a range of 0.0 to 8.0
  // then multiply by (2^14 - 1) / 8.0  to make it in the range of 0 to 2^14 - 1

  float scaleNumerator = (1<<14) - 1.0;
  float accelScale = scaleNumerator / ((float) ACCEL_RANGE * 2.0);
  
  a_x_out = (unsigned int) ((accelData.accelX + ACCEL_RANGE) * accelScale);
  a_y_out = (unsigned int) ((accelData.accelY + ACCEL_RANGE) * accelScale);
  a_z_out = (unsigned int) ((accelData.accelZ + ACCEL_RANGE) * accelScale);

  // raw gyro readings are floating point numbers in the range of -500 to +500
  // So we add 500 to convert to a range of 0.0 to 1000.0
  // then multiply by (2^14 - 1) / 1000.  to make it in the range of 0 to 2^14 - 1

  float gyroScale = scaleNumerator / ((float) GYRO_RANGE * 2.0);

  g_x_out = (unsigned int) ((gyroData.gyroX + GYRO_RANGE) * gyroScale);
  g_y_out = (unsigned int) ((gyroData.gyroY + GYRO_RANGE) * gyroScale);
  g_z_out = (unsigned int) ((gyroData.gyroZ + GYRO_RANGE) * gyroScale);


  // Serial.print("acc: ");
  // Serial.print(a_x_out);
  // Serial.print(" | ");
  // Serial.print(a_y_out);
  // Serial.print(" | ");  
  // Serial.println(a_z_out);

  //separate packets with the value 255
  Serial.write(255);

  // for each axis, send 7MSB by right shifting by 7
  // then send 7LSB by binary & with 0b1111111 (==127)
  
  Serial.write(a_x_out >> 7);
  Serial.write(a_x_out & 127);
  Serial.write(a_y_out >> 7);
  Serial.write(a_y_out & 127);
  Serial.write(a_z_out >> 7);
  Serial.write(a_z_out & 127);

  Serial.write(g_x_out >> 7);
  Serial.write(g_x_out & 127);
  Serial.write(g_y_out >> 7);
  Serial.write(g_y_out & 127);
  Serial.write(g_z_out >> 7);
  Serial.write(g_z_out & 127);
}
