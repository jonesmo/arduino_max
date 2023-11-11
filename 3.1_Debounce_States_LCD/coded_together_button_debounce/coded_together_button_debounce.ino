// buttonCount.ino
// Michael Gurevich

// Counts button presses
// Demonstrates the need for debouncing

#define DEBOUNCETIME 20
// 20 ms is right about where we might start to feel a delay

const byte buttonPin =  10; // pin number of the button pin
const byte LEDPin = 2;      // pin number for LED
const byte speakerPin = 8;     // pin number fo speaker
int count = 0;            // button-press counter
int debounceTimer;

enum btn{ON,OFF,DEBOUNCE}; // our own type for button states
btn state=OFF;        // variable to store state

void setup() {
  Serial.begin(9600);           // intialize Serial port
  pinMode(buttonPin, INPUT_PULLUP);  // initialize the button pin as an input and activate pull-up resistor
  pinMode(LEDPin, OUTPUT);
}
 
void loop(){
  buttonStep();
  delay(1);
}

void buttonStep() {

  int reading = digitalRead(buttonPin);  // check pin reading

  switch(state) {
    case OFF:
      if (reading == LOW) {    //button is pressed
        state = DEBOUNCE;
        // debounceTimer = DEBOUNCETIME;
        debounceTimer = millis();
      } break;
    case ON:
      if (reading == HIGH) {   // button is released
        turnStuffOff();
      } break;
    case DEBOUNCE:
      if (reading == HIGH) {
        turnStuffOff();
      // } else if (--debounceTimer == 0) {
      } else if (millis() - debounceTimer >= DEBOUNCETIME) {
        turnStuffOn();
      } break;
  }
}

void turnStuffOff() {
  digitalWrite(LEDPin,LOW);    // turn off LED
  noTone(speakerPin);
  state = OFF;
}

void turnStuffOn() {
  digitalWrite(LEDPin, HIGH);
  tone(speakerPin, 440);
  Serial.println(++count);
  state = ON;
}
