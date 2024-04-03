/////////////////////////////////////////////////////////////////
// toneA2D
// Michael Gurevich
// 
// based on toneKeyboard by Tom Igoe
// http://arduino.cc/en/Tutorial/Tone3
//
// Control a tone with a sensor
// Connect a speaker to Digital Pin 8 
// Connect a varying voltage from a sensor to analog pin 0
/////////////////////////////////////////////////////////////////


byte tonePin = 8;

void setup() {
  Serial.begin(9600); 
  analogReadResolution(14);   //increase analog read resolution to 14-bit (0-16383)
}
void loop() {
  int val = analogRead(0);    //get an analog sample
  Serial.print("raw: ");      //display raw analog value
  Serial.print(val);
  
  int pitch = map(val,0,16383,50,3000);  //scale using the map() function

  Serial.print(" | scaled: "); //display scaled value
  Serial.println(pitch);

  tone(tonePin, pitch,50);          //play a tone at scaled pitch

  delay(100);
}
