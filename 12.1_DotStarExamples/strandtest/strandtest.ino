// strandtest.ino
// adapted from the Adafruit_DotStar example code.
//
// Simple strand test for Adafruit Dot Star RGB LED strip.
// This is a basic diagnostic tool, NOT a graphics demo...helps confirm
// correct wiring and tests each pixel's ability to display red, green
// and blue and to forward data down the line.  By limiting the number
// and color of LEDs, it's reasonably safe to power around 10 from the
// the Arduino's 5V pin.  DON'T try that with other code!


#include <Adafruit_DotStar.h>
#include <SPI.h>        

#define NUMPIXELS 7 // Number of LEDs in strip

// Here's how to control the LEDs from any two pins (works for Uno R3):
// #define DATAPIN    4
// #define CLOCKPIN   5
// Adafruit_DotStar strip(NUMPIXELS, DATAPIN, CLOCKPIN, DOTSTAR_BRG);

// Need to use hardware SPI on Arduino Uno R4
// Clock pin is D13
// Data pin is D11
Adafruit_DotStar strip(NUMPIXELS, DOTSTAR_BRG);


void setup() {

  strip.begin(); // Initialize pins for output
  strip.show();  // Turn all LEDs off ASAP
}

// Runs 1 LED at a time along strip, cycling through red, green and blue.

int      head  = 0, tail = -2; // Index of first 'on' and 'off' pixels
uint32_t color = 0xFF0000;      // 'On' color (starts red)

void loop() {

  strip.setPixelColor(head, color); // 'On' pixel at head
  strip.setPixelColor(tail, 0);     // 'Off' pixel at tail
  strip.show();                     // Refresh strip
  delay(40);                        // Pause 100 milliseconds 

  if(++head >= NUMPIXELS) {         // Increment head index.  Off end of strip?
    head = 0;                       //  Yes, reset head index to start
    if((color >>= 8) == 0)          //  Next color (R->G->B) ... past blue now?
      color = 0xFF0000;             //   Yes, reset to red
  }
  if(++tail >= NUMPIXELS) tail = 0; // Increment, reset tail index
}
