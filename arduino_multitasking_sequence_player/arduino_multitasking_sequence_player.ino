#include <NewhavenLCDSerial.h>
#include "notes.h"

byte lcdPin = 1;
NewhavenLCDSerial lcd(lcdPin);
const byte tonePin = 2;
const byte buttonPin = 3;
byte buttonState = 0;
int buttonCount = 0;
int timer;

const byte numLEDs = 4;
const byte numSteps = 10;

byte sequence[numSteps];
byte ledPins[numLEDs] = {4, 5, 6, 7};
unsigned int pitches[numLEDs] = {NOTE_E4, NOTE_B4, NOTE_CS5, NOTE_D5};

void setup() {
  lcd.begin(9600);
  lcd.clear();
  lcd.setBrightness(7);
  lcd.setContrast(50);

  lcd.setCursor(0, 0);
  lcd.print("Press button");
  lcd.setCursor(1, 0);
  lcd.print("to begin");

  pinMode(buttonPin, INPUT_PULLUP);

  for (int i = 0; i < numLEDs; i++) {
    pinMode(ledPins[i], OUTPUT);
  }
}

void loop() {
  int reading = digitalRead(buttonPin);

  // button pressed for the first time, aka buttonState == 0
  if (buttonState == 0 && reading == LOW && buttonCount == 0) {
    buttonCount++;
    randomSeed(millis());

    lcd.clear();
    delay(500);

    // fill array with random sequence of LED numbers
    for (int j = 0; j < numSteps; j++) {
      sequence[j] = random(numLEDs);
    }

    // auto play sequence
    for (int k = 0; k < numSteps; k++) {
      playStep(sequence[k]);
    }

    buttonState = 1;
  }

  // button pressed after auto play completed, aka buttonState == 1
  // manual play
  else if (buttonState == 1 && reading == LOW && buttonCount > 0 && buttonCount < numSteps + 1) {
    playStep(sequence[buttonCount - 1]);
    buttonCount++;
  }

  // manual play completed; back to initial state
  if (buttonCount == numSteps + 1) {
    buttonCount = 0;
    buttonState = 0;

    lcd.setCursor(0, 0);
    lcd.print("Press button");
    lcd.setCursor(1, 0);
    lcd.print("to play again");
  }
}

void playStep(byte pinNum) {
  digitalWrite(ledPins[pinNum], HIGH);
  tone(tonePin, pitches[pinNum]);
  lcd.setCursor(0, 0);
  lcd.print(String(pinNum + 1));

  delay(200);

  digitalWrite(ledPins[pinNum], LOW);
  noTone(tonePin);
  lcd.clear();

  delay(70);
}

int debounceReadButton(buttonPin) {
  int reading = digitalRead(buttonPin);

  switch (state) {
    case OFF: 
      if (reading == LOW) { // button press?
        state = DEBOUNCE;
        timer = debounceTime;
      } break;
    case DEBOUNCE:
     if (reading == LOW) {  // if button reading remains low
        if (timer <= 0) {   // and the time elapses
          state = ON;       // this is a "real" button press"
          digitalWrite(LEDPin, HIGH);
          Serial.println(++count);    
        } else timer--;     // if time hasn't elapsed, but button is still low, keep waiting
     } else state = OFF;     
     break;
    case ON:
      if (reading == HIGH) {
        state = OFF;
        digitalWrite(LEDPin,LOW);
      }
  }
}