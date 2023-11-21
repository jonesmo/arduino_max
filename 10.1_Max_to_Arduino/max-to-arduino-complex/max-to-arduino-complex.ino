  // Michael Gurevich
// modified 3/20/2020
//
// max-to-arduino-complex.ino
//
// Demonstrates receiving raw Serial data from Max
// Data from Max controls 3 LEDs on pins 3, 4, 5, with different functionalities
// Pin 3: dimmable by a slider (0-127)
// Pin 4: flashes a preset duration in response to a single message representing a "bang" 
// Pin 5: toggles off / on (0-1)
// Data from Max also is sent back out as Serial for verification in Max
//
// See https://www.arduino.cc/reference/en/language/functions/communication/serial/
// for a full list of Arduino Serial methods.

#define FLASHTIME 100  //duration of a flash when a BANG message is received

int fadePin = 3;
int flashPin = 4;
int togglePin = 5;

//Create a new type for our parser.
//These represent the possible kinds of messages we'll receive
enum messageType {SLIDER, BANG, TOGGLE, NONE};
messageType msg = NONE;

boolean dataIn = false; //flag to indicate that there is new incoming data
byte inbyte;              // variable to store incoming data

int flashTimer; // variable to time the flash duration

void setup() {
  Serial.begin(115200);     //ensure that baud rate matches what you have in Max
  pinMode(fadePin, OUTPUT);
  pinMode(flashPin, OUTPUT);
  pinMode(togglePin, OUTPUT);

}

void loop() {

  // see the state-transition diagram
  // note how this approach would allow you to add functions to process sensors or buttons as well
  switch (msg) {
    case NONE :
      checkSerialIn();
      break;
    case SLIDER :
      checkSerialIn();
      if (dataIn) {
        handleSliderData(); 
      }break;
    case TOGGLE :
      checkSerialIn();
      if (dataIn) {
        handleToggleData();
      }break;
    case BANG :
      handleBang();
      break;
 }
 delay(1);
 
}
void checkSerialIn() {
  if (Serial.available()) { // checks if there is new incoming Serial data
    inbyte = Serial.read(); // read the incoming data and store it in a variable
    Serial.write(inbyte);   // loopback immediately; send out to serial port to Max

    switch (inbyte) {
      case (255):
        msg = SLIDER;
        dataIn = false;   //we've received a 'status' message, not a data message
        break;            //don't do anything until we've received data
  
      case (254):
        msg = BANG;
        dataIn = false;
        digitalWrite(flashPin,HIGH); // do something immediately upon receiving a message
        flashTimer = 0;              // start a timer to allow something to happen later
        break;

      case (253):
        msg = TOGGLE;
        dataIn = false;   //we've received a 'status' message, not a data message
        break;            //don't do anything until we've received data
        
      default : //everything else, i.e., this is a data byte
        dataIn = true;
        break;
    }
  } 
}

void handleSliderData() {
  if (inbyte < 128) { // sanity check
    analogWrite(fadePin,inbyte*2);
  }
  msg = NONE;
}

void handleToggleData() {
  if (inbyte == 0) { 
    digitalWrite(togglePin,LOW);
  } else if (inbyte == 1)
    digitalWrite(togglePin,HIGH);
  msg = NONE;
}

void handleBang() {
  if (flashTimer++ == FLASHTIME) {
    digitalWrite(flashPin,LOW); //turn off the LED
    msg = NONE;
  }   
}
