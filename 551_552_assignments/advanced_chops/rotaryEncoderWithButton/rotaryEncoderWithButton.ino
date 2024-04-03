#define DEBOUNCETIME 20
int debounceTimer;
enum btn{ON, DEBOUNCE, OFF};
btn buttonState = OFF;
boolean toggledOn = false;
boolean toggledOff = false;

const int pinA = 2;
const int pinB = 4;
const int buttonPin = 7;

int encoderPos = 512;     // encoder position
int lastPos = 0;        // keep track of last position
int stateA = LOW;
int stateB = LOW;

void setup() {
  Serial.begin (115200);
  pinMode(pinA, INPUT_PULLUP); //set encoder pins to inputs with pullups
  pinMode(pinB, INPUT_PULLUP);
  pinMode(buttonPin, INPUT_PULLUP);
}

void loop() {
  buttonStep();
  encoderStep();
  serialStep();
  delay(1);
}

void buttonStep() {
    int reading = digitalRead(buttonPin);

    switch (buttonState) {
      case OFF:
        if (toggledOff) {
          toggledOff = false;
        }
        if (reading == LOW) {
          buttonState = DEBOUNCE;
          debounceTimer = DEBOUNCETIME;
        } break;
      case DEBOUNCE:
        if (reading == LOW) {
          if (debounceTimer <= 0) {
            buttonState = ON;
            toggledOn = true;
          } else debounceTimer--;
        } else buttonState = OFF;
        break;
      case ON:
        if (toggledOn) {
          toggledOn = false;
        }
        if (reading == HIGH) {
          buttonState = OFF;
          toggledOff = true;
        }
    }
}

void encoderStep() {

  int readingA, readingB;
  readingA = digitalRead(pinA);
  readingB = digitalRead(pinB);
  if (stateA != readingA) { //state has changed->tick
    if (readingA == readingB)  //CCW
      --encoderPos;
    else
      ++encoderPos;         //CW
  }
  /*if (stateB!=readingB) { //state has changed->tick
     if (readingA==readingB)   //CCW
         --encoderPos;
     else
         ++encoderPos;         //CW
    }*/
  stateA = readingA;   //update state to current reading
  stateB = readingB;

}

void serialStep() {
  if (encoderPos != lastPos) {    //position has changed
    // Serial.println(encoderPos); //send new position
       Serial.write(255);
       Serial.write(encoderPos>>3);
       Serial.write(encoderPos&7);
  } else if (toggledOn) {
    Serial.write(255);
    Serial.write(128);
  } else if (toggledOff) {
    Serial.write(255);
    Serial.write(144);
  }
  lastPos = encoderPos;         //store current position
}
