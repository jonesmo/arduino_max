// Michael Gurevich

// Counts button presses with debouncing

const int buttonPin =  2; // pin number of the button pin
int timer;                // debounce timer
int a_reading;
enum btn{ON,DEBOUNCE,OFF}; // our own type for button states
boolean buttonPressed = false;

btn state;    // variable to store state

void setup() {
  Serial.begin(115200);           // intialize Serial port
  pinMode(buttonPin, INPUT_PULLUP);  // initialize the button pin as an input
                                     // and activate pull-up resistor
  
   
}
 
void loop(){
  analogStep();
  buttonStep();
  serialStep();
  delay(10);
}


void serialStep() {
  Serial.write(255);
  Serial.write(a_reading >> 3);
  Serial.write(a_reading & 7);

  if (buttonPressed) {
    Serial.write(254);
  }
}
void analogStep() {
  a_reading = analogRead(0);  
}


void buttonStep() {
  
  int reading = digitalRead(buttonPin);  // check pin reading
  
  switch (state) {
    case OFF: 
      if (reading == LOW) { // button press?
        state = DEBOUNCE;
        timer = 10;
      } break;
    case DEBOUNCE:
     if (reading == LOW) {  // if button reading remains low
        if (timer <= 0) {   // and the time elapses
          state = ON;       // this is a "real" button press"
          buttonPressed = true;            
        } else timer--;     // if time hasn't elapsed, but button is still low, keep waiting
     } else state = OFF;     
     break;
    case ON:
      if (buttonPressed) {
        buttonPressed = false;
      }
      if (reading == HIGH) {
        state = OFF;
        
      }
  }
  
}
       
          
        
