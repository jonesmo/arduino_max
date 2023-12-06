// strandtest.ino
// adapted from the Adafruit_DotStar example code.

#include <Adafruit_DotStar.h>
#include <SPI.h>        

#define NUMPIXELS 7
#define NUMBUFFERS 4
#define DEBOUNCETIME 20

// Dotstar clock pin is D13
// Dotstar data pin is D11
Adafruit_DotStar strip(NUMPIXELS, DOTSTAR_BRG);
uint32_t colors[NUMBUFFERS] = {0x42cbf5, 0xe642f5, 0x74fe00, 0xff0000};

byte buttonPins[NUMBUFFERS] = {4, 5, 6, 7};
int debounceTimer[NUMBUFFERS];

enum btn{ON, DEBOUNCE, OFF};
btn buttonStates[NUMBUFFERS] = {OFF, OFF, OFF, OFF};
boolean toggledOn[NUMBUFFERS] = {false, false, false, false};
boolean toggledOff[NUMBUFFERS] = {false, false, false, false};

void setup() {
  strip.begin(); // Initialize pins for output
  strip.show();  // Turn all LEDs off ASAP

  for (int i = 0; i < NUMBUFFERS; i++) {
    pinMode(buttonPins[i], INPUT_PULLUP);
  }

  Serial.begin(115200);
  analogReadResolution(14);
}

void loop() {
  buttonStep(); // detect contact with copper tape
  a2dStep();    // read IMU
  serialStep(); // IMU data to Max
  ledStep();    // change light color
}

void ledStep() {
  for (int i = 0; i < NUMBUFFERS; i++) {
    if (buttonStates[i] == ON) {
      for(int j = 0; j < NUMPIXELS; j++) {
        strip.setPixelColor(j, colors[i]);
      }
    } break;

    strip.show();
  }
}

void buttonStep() {
  for (int i=0; i<NUMBUFFERS; i++) {
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