/////////////////////////////////////////////////////////////////
// a2dToSerialMaxMultiple
// Michael Gurevich
//
// Demonstrates sending an multiple sensor values as serial data
// to Max
/////////////////////////////////////////////////////////////////

#define NSENSORS 3

int a_reading[NSENSORS];

void setup() {
  Serial.begin(115200);    // setup serial, **NOTE BAUD RATE**
}

void loop() {
  a2dStep();
  serialStep();
  delay(10);
}

void a2dStep() {
  for (int i = 0; i < NSENSORS; i++) {
    a_reading[i] = analogRead(i);  // read the value of analog pin i
  }
}

void serialStep() {
  Serial.write(255);	//send separator byte

  for (int i = 0; i < NSENSORS; i++) {
    Serial.write(a_reading[i] >> 3);  // send 7 MSB as serial data
    Serial.write(a_reading[i] & 7);	  // send 3 LSB as serial data
  }
}
