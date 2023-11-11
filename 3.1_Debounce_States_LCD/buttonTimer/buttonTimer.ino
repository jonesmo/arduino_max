// buttonTimer.ino
// Michael Gurevich

// After Loe Feijs' "Multitasking" Example

const byte buttonPin =  2; // pin number of the button pin
const byte LEDPin = 10;    // pin number for LED
const byte speakerPin = 8;
int timer;

enum btn{ON,OFF}; // our own type for button states
btn state;        // variable to store state

void setup() {
  Serial.begin(9600);           // intialize Serial port
  pinMode(buttonPin, INPUT_PULLUP);  // initialize the button pin as an input
  // and activate pull-up resistor
  pinMode(LEDPin, OUTPUT);

}

void loop(){
  ledStep();
  delay(10);  // 10ms delay allows us to count time in 10ms increments
}

void ledStep() {

  int reading = digitalRead(buttonPin);  // get pin reading
  switch(state) {
  case OFF:
    if (reading == LOW) {          //button is pressed
      state = ON;  
      digitalWrite(LEDPin,HIGH);   // turn on LED
      tone(speakerPin,440);        // play tone
      timer = 300;                 // n * 0.01s == total time elapsed in seconds 
    } 
    break;
  case ON:
    if (timer <= 0) {           
      state = OFF;
      digitalWrite(LEDPin,LOW);    // turn off LED
      noTone(speakerPin);          // stop tone
    } else timer--; // update timer
    break;
  }
}
