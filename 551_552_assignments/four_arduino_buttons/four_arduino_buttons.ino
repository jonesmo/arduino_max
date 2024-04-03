#include "notes.h"

int baudrate = 9600;
const byte numButtons = 4;
const byte tonePin = 2;

const byte buttonPin1 = 3;
const byte ledPin1 = 4;
const byte buttonPin2 = 5;
const byte ledPin2 = 6;
const byte buttonPin3 = 7;
const byte ledPin3 = 8;
const byte buttonPin4 = 9;
const byte ledPin4 = 10;

byte buttonPins[numButtons] = {buttonPin1, buttonPin2, buttonPin3, buttonPin4};
byte ledPins[numButtons] = {ledPin1, ledPin2, ledPin3, ledPin4};
int buttonStates[numButtons] = {HIGH, HIGH, HIGH, HIGH};
unsigned int pitches[numButtons] = {NOTE_E4, NOTE_B4, NOTE_CS5, NOTE_D5};

void setup() {
  Serial.begin(baudrate);
  Serial.print("Initialized.");

  for (int i = 0; i < numButtons; i++) {
    pinMode(buttonPins[i], INPUT_PULLUP);
    pinMode(ledPins[i], OUTPUT);
  }
}

void loop() {
  for (int j = 0; j < numButtons; j++) {
    buttonStep(j);
    delay(10);
  }
}

void buttonStep(int buttonNumber) {
  int reading = digitalRead(buttonPins[buttonNumber]);
  int buttonState = buttonStates[buttonNumber];
  byte ledPin = ledPins[buttonNumber];
  unsigned int pitch = pitches[buttonNumber];

  if (buttonState == HIGH && reading == LOW) {
      // have gone from not-pressed to pressed
      Serial.print("Button pressed!");
      digitalWrite(ledPin, HIGH);
      tone(tonePin, pitch);
  } else if (buttonState == LOW && reading == HIGH) {
      Serial.print("Button un-pressed!");
      digitalWrite(ledPin, LOW);
      noTone(tonePin);
  }

  buttonStates[buttonNumber] = reading;
}
