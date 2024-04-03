/* MPU9250Serial.ino
   Michael Gurevich

  Get data from MPU9250 IMU and send to Max via serial port
  Uses MPU9250 library from hideakitai 0.4.8 (via package manager)
  https://github.com/hideakitai/MPU9250

  based on examples from MPU9250 library
  */


#include "MPU9250.h"

#define ACCEL_RANGE 4
#define GYRO_RANGE 500
#define YPR_RANGE 180

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


MPU9250 mpu;

void setup() {
  Wire.begin(); // initialize I2C
  delay(2000);  // not sure why this is necessary, but it seems to help some initialization issues
  Serial.begin(230400); //maximum baud rate supported by Max
  while (!Serial) {
    ;  // wait for serial port to connect. Needed for native USB port only
  }
  delay(2000);  // not sure why this is necessary, but it seems to help some initialization issues
  initMPU9250();
}



void loop() {
  if (mpu.update()) {
    static uint32_t prev_ms = millis();
    if (millis() > prev_ms + updateRate) {
      imuUpdate();
      imuSerial();
      prev_ms = millis();
    }   
  }
}

void imuSerial() {

  // accelerometer readings are floating point numbers in the range of -4.0 to +4.0
  // So we add 4.0 to convert to a range of 0.0 to 8.0
  // then multiply by (2^14 - 1) / 8.0  to make it in the range of 0 to 2^14 - 1

  float scaleNumerator = (1 << 14) - 1.0;
  float accelScale = scaleNumerator / ((float)ACCEL_RANGE * 2.0);

  unsigned int a_x_out = (unsigned int)((acc.x + ACCEL_RANGE) * accelScale);
  unsigned int a_y_out = (unsigned int)((acc.y + ACCEL_RANGE) * accelScale);
  unsigned int a_z_out = (unsigned int)((acc.z + ACCEL_RANGE) * accelScale);


  // gyro readings are floating point numbers in the range of -500 to +500
  // So we add 500 to convert to a range of 0.0 to 1000.0
  // then multiply by (2^14 - 1) / 1000.  to make it in the range of 0 to 2^14 - 1

 float gyroScale = scaleNumerator / ((float)GYRO_RANGE * 2.0);

 unsigned int g_x_out = (unsigned int)((gyr.x + GYRO_RANGE) * gyroScale);
 unsigned int g_y_out = (unsigned int)((gyr.y + GYRO_RANGE) * gyroScale);
 unsigned int g_z_out = (unsigned int)((gyr.z + GYRO_RANGE) * gyroScale);


  //  ypr readings are floating point numbers in the range of -180 to +180
  // So we add 360 to convert to a range of 0.0 to 360
  // then multiply by (2^14 - 1) / 360.  to make it in the range of 0 to 2^14 - 1

 float yprScale = scaleNumerator / ((float)YPR_RANGE * 2.0);

 unsigned int ypr_y_out = (unsigned int)((ypr.y + YPR_RANGE) * yprScale);
 unsigned int ypr_p_out = (unsigned int)((ypr.p + YPR_RANGE) * yprScale);
 unsigned int ypr_r_out = (unsigned int)((ypr.r + YPR_RANGE) * yprScale);


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

  Serial.write(ypr_y_out >> 7);
  Serial.write(ypr_y_out & 127);
  Serial.write(ypr_p_out >> 7);
  Serial.write(ypr_p_out & 127);
  Serial.write(ypr_r_out >> 7);
  Serial.write(ypr_r_out & 127);
}


void initMPU9250() {

  if (!mpu.setup(MPU9250_ADDRESS)) {  // change to your own address
    while (1) {
      Serial.write(254);  //failed to connect
      delay(5000);
    }
  }
  Serial.write(253);
  // OPTIONAL CALIBRATION
  // Probably want to add buttons to begin calibration on button press
  // delay(1000);
  // mpu.calibrateAccelGyro();
  // delay(5000);
  // Serial.write(252);   // idicates accelerometer/gyro calibration complete
  // mpu.calibrateMag();
  // Serial.write(251);  // indicates magnetometer calibration complete
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
