// motorMosfet
// Michael Gurevich
//
// Control a DC motor speed with an analog input
// DC Motor should be connected to an N-channel MOSFET
// Make sure to have a flyback diode across the motor pins
// See MOSFET notes for circuit wiring
// 
// Note that this is the same code as the LED Dimmer
// This could also be used with a MOSFET to dim a bright DC LED source, like a bike light
//
// Make sure the analog input is using +5V to build the voltage divider


int motorPin   = 3;  
int analogPin = 0;  

void setup() {
  Serial.begin(9600);
  pinMode(motorPin,OUTPUT);
}

void loop() {
  int reading = analogRead(analogPin);
  Serial.println(reading);

  analogWrite(motorPin,reading>>2); //bit-shift right by two (divide by 4), to convert to 0-255 range  
  delay(10);  
}
