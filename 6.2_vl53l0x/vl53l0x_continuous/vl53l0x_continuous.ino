/* 
  vl53l0x.ino
  Adapted from vl53l0x_continuous.ino from Adafruit_VL53L0X library

*/

// need to install this library via the Arduino package manager
#include "Adafruit_VL53L0X.h"

//object for the sensor
Adafruit_VL53L0X lox = Adafruit_VL53L0X();

void setup() {
  Serial.begin(115200);

  // wait until serial port opens for native USB devices
  while (!Serial) {
    delay(1);
  }

  if (!lox.begin()) {
    Serial.write(128);  // arbitrary value to indicate failure to start
    while (1)
      ;
  }
  // start continuous ranging, update every 50ms
  lox.startRangeContinuous(50);
}

void loop() {

  // becomes true when a new range reading is available
  if (lox.isRangeComplete()) {

    float range_f = lox.readRange();  // get the new reading

    uint16_t range_i = (uint16_t)range_f;  // convert to int -- valid readings are in the range of 0-1200
    //when it's out of range, the sensor reading is 8191 or 8190
    if (range_i < 1200) {
      Serial.write(255);
      Serial.write(range_i >> 4);
      Serial.write(range_i & 15);
    } else 
      Serial.write(129);
  }

  delay(25);
}