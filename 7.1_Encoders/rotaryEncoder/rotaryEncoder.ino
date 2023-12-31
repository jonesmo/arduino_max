// rotaryEncoder
// Michael Gurevich
//
// Report changes in the position of a rotary encoder

const int pinA = 2;
const int pinB = 4;

int encoderPos = 512;     // encoder position
int lastPos = 0;        // keep track of last position
int stateA = LOW;
int stateB = LOW;

void setup() {
  Serial.begin (9600);
  pinMode(pinA, INPUT_PULLUP); //set encoder pins to inputs with pullups
  pinMode(pinB, INPUT_PULLUP);
}

void loop() {
  encoderStep();
  displayStep();
  delay(1);
}

void encoderStep() {

  int readingA, readingB;
  readingA = digitalRead(pinA);
  readingB = digitalRead(pinB);
  if (stateA != readingA) { //state has changed->tick
    if (readingA == readingB)  //CW
      ++encoderPos;
    else
      --encoderPos;         //CCW
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

void displayStep() {
  if (encoderPos != lastPos) {    //position has changed
    Serial.println(encoderPos); //send new position

    //    Serial.write(255);
    //    Serial.write(encoderPos>>3);
    //    Serial.write(encoderPos&7);

  }
  lastPos = encoderPos;         //store current position
}
