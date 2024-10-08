/////////////////////////////////////////////////////////////////
// a2dToSerialMax
// Michael Gurevich
//
// Demonstrates sending an a2d value as serial data
// to Max
/////////////////////////////////////////////////////////////////

 
void setup() {
  Serial.begin(115200);    // setup serial, 115200 bps
  pinMode(9, INPUT_PULLUP);
 }

void loop() {
  a2dStep();
  delay(10);
}

void a2dStep() {  
  int val;
  val = analogRead(4);    // read the value of analog pin 0

  // Serial.write(val>>2);   // send the value as serial data
                          // bit shift right to get an 8-bit number
  Serial.println(val);

}
