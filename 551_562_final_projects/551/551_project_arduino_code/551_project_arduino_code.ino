///////////////////////// DECLARATIONS //////////////////////
#include <Adafruit_DotStar.h>
#include <SPI.h>   
#include "MPU9250.h" 

#define NUMPIXELS 7
#define NUMBUTTONS 4
#define DEBOUNCETIME 40
#define ACCEL_RANGE 4
#define GYRO_RANGE 500
#define YPR_RANGE 180
#define updateRate 25
#define MPU9250_ADDRESS 0x68

////////// LEDs
// Dotstar clock pin (blue) is D13
// Dotstar data pin (green) is D11
Adafruit_DotStar strip(NUMPIXELS, DOTSTAR_BRG);
uint32_t colors[NUMBUTTONS] = {0x42cbf5, 0xe642f5, 0x74fe00, 0xff0000};

////////// BUTTONS
byte buttonPins[NUMBUTTONS] = {4, 5, 6, 7};
int debounceTimer[NUMBUTTONS];
enum btn{ON, DEBOUNCE, OFF};
btn buttonStates[NUMBUTTONS] = {OFF, OFF, OFF, OFF};
boolean toggledOn[NUMBUTTONS] = {false, false, false, false};
boolean toggledOff[NUMBUTTONS] = {false, false, false, false};

////////// IMU
struct YPR {
  float r;
  float p;
  float y;
} ypr;

MPU9250 mpu;

//////////////////////////// SETUP AND LOOP /////////////////////////////
void setup() {
  strip.begin();
  strip.show();  // Turn all LEDs off

  for (int i = 0; i < NUMBUTTONS; i++) {
    pinMode(buttonPins[i], INPUT_PULLUP);
  }

  analogReadResolution(14);

  Wire.begin(); // initialize I2C
  delay(2000);
  Serial.begin(230400);
  while (!Serial) {
    ;  // wait for serial port to connect
  }
  delay(2000);
  initMPU9250();
}

void loop() {
  buttonStep(); // detect contact with copper tape ("button")
  imuStep();    // read IMU and send data
  ledStep();    // change light color
}

////////////////////////////////// STEP FUNCTIONS ///////////////////////////////
void buttonStep() {
  for (int i=0; i<NUMBUTTONS; i++) {
    int reading = digitalRead(buttonPins[i]);

    switch (buttonStates[i]) {
      case OFF:
        if (toggledOff[i]) {
          toggledOff[i] = false;
        }
        if (reading == LOW) {
          buttonStates[i] = DEBOUNCE;
          debounceTimer[i] = DEBOUNCETIME;
        } break;
      case DEBOUNCE:
        if (reading == LOW) {
          if (debounceTimer[i] <= 0) {
            buttonStates[i] = ON;
            toggledOn[i] = true;
          } else debounceTimer[i]--;
        } else buttonStates[i] = OFF;
        break;
      case ON:
        if (toggledOn[i]) {
          toggledOn[i] = false;
        }
        if (reading == HIGH) {
          buttonStates[i] = OFF;
          toggledOff[i] = true;
        }
    }
  }
}

void imuStep() {
  if (mpu.update()) {
    static uint32_t prev_ms = millis();
    if (millis() > prev_ms + updateRate) {
      imuUpdate();
      imuSerial();
      prev_ms = millis();
    }   
  }
}

void ledStep() {
  for (int i = 0; i < NUMBUTTONS; i++) {
    if (buttonStates[i] == ON) {
      for(int j = 0; j < NUMPIXELS; j++) {
        strip.setPixelColor(j, colors[i]);
      }

      strip.show();
    }
  }
}

////////////////////////////////// IMU FUNCTIONS /////////////////////////
void imuSerial() {
    //  ypr readings are floating point numbers in the range of -180 to +180
    // So we add 360 to convert to a range of 0.0 to 360
    // then multiply by (2^14 - 1) / 360.  to make it in the range of 0 to 2^14 - 1

  float scaleNumerator = (1 << 14) - 1.0;
  float yprScale = scaleNumerator / ((float)YPR_RANGE * 2.0);

  unsigned int ypr_y_out = (unsigned int)((ypr.y + YPR_RANGE) * yprScale);
  unsigned int ypr_p_out = (unsigned int)((ypr.p + YPR_RANGE) * yprScale);
  unsigned int ypr_r_out = (unsigned int)((ypr.r + YPR_RANGE) * yprScale);


  //separate packets with the value 255
  Serial.write(255);

  // send button pressed
  for (int i = 0; i < NUMBUTTONS; i++) {
    if (buttonStates[i] == ON) {
      Serial.write(250 - i);
    }
    // purple = 0 or 250
    // yellow = 2 or 248
    // blue = 1 or 249
    // green = 3 or 247
  }

  // for each axis, send 7MSB by right shifting by 7
  // then send 7LSB by binary & with 0b1111111 (==127)

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
}

void imuUpdate() {
  ypr.r = mpu.getRoll();
  ypr.p = mpu.getPitch();
  ypr.y = mpu.getYaw();
}