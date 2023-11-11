#include <NewhavenLCDSerial.h>
#include "notes.h"

#define DEBOUNCETIME 20
int debounceTimer;

const byte lcdPin = 1;
NewhavenLCDSerial lcd(lcdPin);
const byte tonePin = 2;
const byte numLEDs = 4;
// numSteps can be adjusted for difficulty
const byte numSteps = 15;
byte sequence[numSteps];
// at the start, the sequence is four steps long
byte sequenceLength = 4;
byte playerIndex = 0;

unsigned int pitches[numLEDs] = {NOTE_D4, NOTE_FS4, NOTE_G4, NOTE_A4};
unsigned int welcomeMelody[7] = {NOTE_D3, NOTE_A3, NOTE_GS3, NOTE_A3, NOTE_FS3, NOTE_A3, NOTE_D4};
unsigned int winMelody[4] = {NOTE_D4, NOTE_FS4, NOTE_A4, NOTE_D5};
unsigned int lossMelody[4] = {NOTE_D4, NOTE_A3, NOTE_D3, NOTE_D3};

enum btn{ON, DEBOUNCE, OFF};
enum simonMode{SIMONSAYS, IMITATE};
simonMode simonState = SIMONSAYS;
byte ledPins[numLEDs] = {4, 5, 6, 7};
byte buttonPins[numLEDs] = {8, 9, 10, 11};
btn buttonStates[numLEDs] = {OFF, OFF, OFF, OFF};
int previousButtonState = 100;
int buttonCounts[numLEDs] = {0, 0, 0, 0};
int readings[numLEDs];

void setup() {
  lcd.begin(9600);
  lcd.clear();
  lcd.setBrightness(7);
  lcd.setContrast(50);

  lcd.setCursor(0, 0);
  lcd.print("Press any button");
  lcd.setCursor(1, 0);
  lcd.print("to play Simon!");

  for (int a = 0; a < numLEDs; a++) {
    pinMode(buttonPins[a], INPUT_PULLUP);
  }

  for (int i = 0; i < numLEDs; i++) {
    pinMode(ledPins[i], OUTPUT);
  }

  playMelody(welcomeMelody, 7);
}

void loop() {
  int onButton = readButtons(); // onButton is either 0-4 or an arbitrary large integer (100) when no buttons pressed
  int buttonPresses = totalButtonPresses(); // this exists only to check whether it's the very first button press of the game
  // it could probably be simpler

  // button pressed for the first time; start the game
  if (simonState == SIMONSAYS && onButton < numLEDs && buttonPresses == 1) {
    randomSeed(millis());

    lcd.clear();
    delay(500);

    // fill the sequence with random ints
    for (int j = 0; j < numSteps; j++) {
      sequence[j] = random(numLEDs);
    }

    lcd.setCursor(0, 0);
    lcd.print("Get ready!");

    delay(1000);

    lcd.clear();
    lcd.setCursor(0, 0);
    
    // play the initial, 4-long sequence
    for (int k = 0; k < sequenceLength; k++) {
      playStep(sequence[k], 150);
    }

    simonState = IMITATE;
  }

  // player imitates Simon (all steps until final step)
  else if (simonState == IMITATE && onButton < numLEDs && onButton != previousButtonState && playerIndex < sequenceLength - 1) {
    byte expectedInput = sequence[playerIndex];

    // player is not correct
    if (onButton != expectedInput) {
      failure();
    }

    // player is correct; expect the next button in the sequence
    else if (onButton == expectedInput && playerIndex < numSteps - 1) {
      playStep(onButton, 25);
      playerIndex++;
    }
  }

  // player has successfully reproduced the sequence up to the last step
  else if (simonState == IMITATE && onButton < numLEDs && onButton != previousButtonState && playerIndex == sequenceLength - 1) {
    byte expectedInput = sequence[playerIndex];

    // player is not correct on the last step
    if (onButton != expectedInput) {
      failure();
      return;
    }
    else {
      playStep(onButton, 25);
    }

    // increase sequence length by one if it's not yet numSteps long
    if (sequenceLength < numSteps) {
      lcd.setCursor(0, 0);
      lcd.print("    Next level!");
      delay(500);
      lcd.clear();

      playerIndex = 0;
      sequenceLength++;
      simonState = SIMONSAYS;
    } 
    // if the sequence is already numSteps long, player wins
    else {
      win();
    }
  }

  // Simon Says
  else if (simonState == SIMONSAYS && buttonPresses > 0) {
    for (int k = 0; k < sequenceLength; k++) {
      playStep(sequence[k], 150);
    }

    simonState = IMITATE;
  }

  previousButtonState = onButton;
}

int readButtons() {
  // read all four button pins
  for (int c = 0; c < numLEDs; c++) {
    readings[c] = digitalRead(buttonPins[c]);
  }

  // debounce all four button pins
  for (int d = 0; d < numLEDs; d++) {
    switch(buttonStates[d]) {
    case OFF:
      if (readings[d] == LOW) {    //button is pressed
        buttonStates[d] = DEBOUNCE;
        debounceTimer = millis();
      } break;
    case ON:
      if (readings[d] == HIGH) {   // button is released
        buttonStates[d] = OFF;
      } break;
    case DEBOUNCE:
      if (readings[d] == HIGH) {
        buttonStates[d] = OFF;
      } else if (millis() - debounceTimer >= DEBOUNCETIME) {
        buttonStates[d] = ON;
        buttonCounts[d]++;
      } break;
    }
  }

  // return any button that is pressed
  // does not handle the case where multiple buttons are pressed
  for (int e = 0; e < numLEDs; e++) {
    if (buttonStates[e] == ON) {
      return e;
    }
  }
  // if no button pressed, return arbitrary large integer
  return 100;
}

int totalButtonPresses() {
  int buttonPressCount = 0;
  for (int f = 0; f < numLEDs; f++) {
    buttonPressCount += buttonCounts[f];
  }

  return buttonPressCount;
}

void playStep(byte pinNum, int delayTime) {
  digitalWrite(ledPins[pinNum], HIGH);
  tone(tonePin, pitches[pinNum]);
  lcd.setCursor(0, 0);
  lcd.print(String(pinNum + 1));

  delay(150);

  digitalWrite(ledPins[pinNum], LOW);
  noTone(tonePin);
  lcd.clear();

  delay(delayTime);
}

void playMelody(unsigned int melody[], int melody_length) {
  for (int b = 0; b < melody_length; b++) {
    tone(tonePin, melody[b]);
    delay(200);
  }

  noTone(tonePin);
  delay(200);
}

void failure() {
  lcd.setCursor(0, 0);
  lcd.print("  FAILURE!!!");

  playMelody(lossMelody, 4);

  delay(1000);

  // reset to beginning of game
  gameReset();
}

void win() {
  lcd.setCursor(0, 0);
  lcd.print("YOU WIN!!!!!");

  playMelody(winMelody, 4);

  delay(3000);

  // reset to beginning of game
  gameReset();
}

void gameReset() {
  lcd.setCursor(0, 0);
  lcd.print("Press any button");
  lcd.setCursor(1, 0);
  lcd.print("to play Simon!");

  simonState = SIMONSAYS;
  sequenceLength = 4;
  playerIndex = 0;
  for (int l = 0; l < numLEDs; l++) {
    buttonCounts[l] = 0;
  }
  playMelody(welcomeMelody, 7);
}
