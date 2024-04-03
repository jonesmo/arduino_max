#include "notes.h"

const byte buttonPin = 10;
const byte ledPin = 2;
const byte tonePin = 5;
const byte arraySize = 12;  // number of steps in the tune

int last_reading; // stores button state
int count = 0;  // button press counter

unsigned int melody[arraySize] = {NOTE_E4,NOTE_FS4,NOTE_B4,NOTE_CS5,NOTE_D5,NOTE_FS4,NOTE_E4,NOTE_CS5,NOTE_B4,NOTE_FS4,NOTE_D5,NOTE_CS5};
unsigned int noteDurations[arraySize] = {8,8,8,8,8,8,8,8,8,8,8,8};

void setup() {
  pinMode(buttonPin, INPUT_PULLUP);  // initialize the button pin as an input and activate pull-up resistor
  pinMode(ledPin, OUTPUT);
  for (int i = 0; i < arraySize; i++) {
    noteDurations[i] = random(5, 12);
  }
}

void loop() {
  buttonStep();
  delay(10);
}

void buttonStep() {
  int reading = digitalRead(buttonPin);

  if (last_reading == HIGH && reading == LOW) {
      // have gone from not-pressed to pressed
      digitalWrite(ledPin, HIGH);
      playNote();
  } else if (last_reading == LOW && reading == HIGH) {
      digitalWrite(ledPin, LOW);
  }

  last_reading = reading;
}

void playNote() {
  int noteDuration = 1000/noteDurations[count];
  tone(tonePin, melody[count], noteDuration);

  if (count++ >= arraySize-1) {
    count = 0;
  }
}
