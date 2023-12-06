// strandtest.ino
// adapted from the Adafruit_DotStar example code.

#include <Adafruit_DotStar.h>
#include <SPI.h>        

#define NUMPIXELS 7 // Number of LEDs in strip

// Clock pin is D13
// Data pin is D11
Adafruit_DotStar strip(NUMPIXELS, DOTSTAR_BRG);

uint32_t color_1 = 0x42cbf5;
uint32_t color_2 = 0xe642f5;
uint32_t color_3 = 0x74fe00;
uint32_t color_4 = 0xff0000;


void setup() {
  strip.begin(); // Initialize pins for output
  strip.show();  // Turn all LEDs off ASAP
}

void loop() {

  for (int j = 0; j < NUMPIXELS; j++) {
    strip.setPixelColor(j, color_4);
  }

  strip.show();
  delay(40);
}

