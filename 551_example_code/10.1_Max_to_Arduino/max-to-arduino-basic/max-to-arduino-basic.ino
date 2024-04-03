// Michael Gurevich
// modified 3/20/2020
//
// max-to-arduino-basic.ino
//
// Demonstrates receiving raw Serial data from Max
// Data from Max controls dims an LED on pins 3
// Data from Max also is sent back out as Serial for verification in Max

// see more on using analogWrite() here: https://www.arduino.cc/reference/en/language/functions/analog-io/analogwrite/
// and more on dimming an LED here: https://www.arduino.cc/en/tutorial/fade
// and an explanation of PWM here: https://www.arduino.cc/en/Tutorial/PWM

int fadePin = 3;  
byte inbyte;      // variable to store incoming data


void setup() {
  Serial.begin(115200);     //ensure that baud rate matches what you have in Max
  pinMode(fadePin, OUTPUT);
}

void loop() {
 checkSerialIn();
 delay(1);
 
}
void checkSerialIn() {
  if (Serial.available()) { // checks if there is new incoming Serial data
    inbyte = Serial.read(); // read the incoming data and store it in a variable
    Serial.write(inbyte);   // loopback immediately; send out to serial port to Max
    if (inbyte < 128) {     // sanity check that it's in the range we expect
      analogWrite(fadePin,inbyte*2);  // set the PWM duty cycle to dim the LED (range 0-255)
    }
  }
}
