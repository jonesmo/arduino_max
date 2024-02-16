#define DEBOUNCETIME 20
#define NBUTTONS 2

byte buttonPins[NBUTTONS] = {6, 7};
int timer[NBUTTONS];    // debounce timer

enum btn{ON, DEBOUNCE, OFF};
btn buttonStates[NBUTTONS] = {OFF, OFF};

boolean toggledOn[NBUTTONS] = {false, false};
boolean toggledOff[NBUTTONS] = {false, false};

// int previousButtonState = 100;
// int readings[NBUTTONS];
// bool buttonChanged = false;

#define NSENSORS 1
int a_reading[NSENSORS];

void setup() {
  for (int i = 0; i < NBUTTONS; i++) {
    pinMode(buttonPins[i], INPUT_PULLUP);
  }

  Serial.begin(115200);
  analogReadResolution(14);
}

void loop() {
  buttonStep();
  a2dStep();
  serialStep();
}

// new buttonStep function
void buttonStep() {
  for (int i=0; i<NBUTTONS; i++) {
    int reading = digitalRead(buttonPins[i]);

    switch (buttonStates[i]) {
      case OFF:
        if (toggledOff[i]) {
          toggledOff[i] = false;
        }
        if (reading == LOW) {
          buttonStates[i] = DEBOUNCE;
          timer[i] = DEBOUNCETIME;
        } break;
      case DEBOUNCE:
        if (reading == LOW) {
          if (timer[i] <= 0) {
            buttonStates[i] = ON;
            toggledOn[i] = true;
          } else timer[i]--;
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

// void buttonStep() {
//   int buttonState = readButtons(); // buttonState is either 0, 1, or an arbitrary large integer (100) when no buttons pressed

//   // if button state changes, send that info to Max
//   if (buttonState != previousButtonState) {
//     buttonChanged = true;
//   } else {
//     buttonChanged = false;
//   }

//   previousButtonState = buttonState;
// }

void a2dStep() {
  for (int i = 0; i < NSENSORS; i++) {
    a_reading[i] = analogRead(i);  // read the value of analog pin i
  }
}

void serialStep() {
  Serial.write(255);

  for (int i = 0; i < NBUTTONS; i++) {
    if (toggledOn[i]) {
      Serial.write(128+i); // 128 means first button has toggled on
    }
    if (toggledOff[i]) {
      Serial.write(144+i);
    }
  }

  // if (buttonChanged) {
  //   switch (previousButtonState) {
  //     case 0:
  //       Serial.write(254);  // send button/digital separator byte
  //       break;
  //     case 1:
  //       Serial.write(253);
  //       break;
  //     case 100:
  //       Serial.write(252);
  //       break;
  //   }
  // } else {
  //   Serial.write(255);	// send sensor/analog separator byte

    for (int i = 0; i < NSENSORS; i++) {
      Serial.write(a_reading[i] >> 7);  // send 7 MSB as serial data to MAX
      Serial.write(a_reading[i] & 127);	  // send 7 LSB as serial data to MAX
    }
  }


// int readButtons() {
//   // read all button pins
//   for (int c = 0; c < NBUTTONS; c++) {
//     readings[c] = digitalRead(buttonPins[c]);
//   }

//   // debounce all button pins
//   for (int d = 0; d < NBUTTONS; d++) {
//     switch(buttonStates[d]) {
//     case OFF:
//       if (readings[d] == LOW) {    //button is pressed
//         buttonStates[d] = DEBOUNCE;
//         debounceTimer = millis();
//       } break;
//     case ON:
//       if (readings[d] == HIGH) {   // button is released
//         buttonStates[d] = OFF;
//       } break;
//     case DEBOUNCE:
//       if (readings[d] == HIGH) {
//         buttonStates[d] = OFF;
//       } else if (millis() - debounceTimer >= DEBOUNCETIME) {
//         buttonStates[d] = ON;
//         // buttonCounts[d]++;
//       } break;
//     }
//   }

//   // return any button that is pressed
//   // does not handle the case where multiple buttons are pressed
//   for (int e = 0; e < NBUTTONS; e++) {
//     if (buttonStates[e] == ON) {
//       return e;
//     }
//   }
//   // if no button pressed, return arbitrary large integer
//   return 100;
// }