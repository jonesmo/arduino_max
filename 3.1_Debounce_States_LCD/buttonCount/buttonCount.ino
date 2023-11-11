// buttonCount.ino
// Michael Gurevich

// Counts button presses
// Demonstrates the need for debouncing

const byte buttonPin =  10; // pin number of the button pin
const byte LEDPin = 2;      // pin number for LED
const byte speakerPin = 8;     // pin number fo speaker
int count = 0;            // button-press counter

enum btn{ON,OFF}; // our own type for button states
btn state=OFF;        // variable to store state

void setup() {
  Serial.begin(9600);           // intialize Serial port
  pinMode(buttonPin, INPUT_PULLUP);  // initialize the button pin as an input and activate pull-up resistor
  pinMode(LEDPin, OUTPUT);
}
 
void loop(){
  buttonStep();
}

void buttonStep() {

  int reading = digitalRead(buttonPin);  // check pin reading

  switch(state) {
    case OFF:
      if (reading == LOW) {    //button is pressed
        digitalWrite(LEDPin,HIGH);   // turn on LED
        tone(speakerPin,440);
        Serial.println(++count);   // increment count
        state = ON;
      } break;
    case ON:
      if (reading == HIGH) {   // button is released
        digitalWrite(LEDPin,LOW);    // turn off LED
        noTone(speakerPin);
        state = OFF;
      } break;
  }
}
