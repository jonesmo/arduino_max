// ledDimmer
// Michael Gurevich
//
// Dim an LED on Pin 3 using an analog input on analog pin 0

int ledPin   = 3;  
int analogPin = 0;  

void setup() {
  pinMode(ledPin,OUTPUT);
}

void loop() {
  int reading = analogRead(analogPin);
  
  analogWrite(ledPin, reading>>2); //bit-shift right by two (divide by 4), to convert to 0-255 range  

  delay(10);  
}
