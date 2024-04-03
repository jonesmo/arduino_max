/////////////////////////////////////////////////////////////////
// a2dToSerialMaxMultiple14bit
// Michael Gurevich
//
// Demonstrates sending an multiple sensor values as serial data
// to Max with 14 bit resolution
/////////////////////////////////////////////////////////////////

#define NSENSORS 1

int a_reading[NSENSORS];

void setup() {
  Serial.begin(115200);    // setup serial, **NOTE BAUD RATE**
  analogReadResolution(14); //use 14 bits for ADC
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
    // Serial.println(a_reading[i] >> 7);  // send 7 MSB as serial data to Arduino Serial monitor
    // Serial.println(a_reading[i] & 127);	  // send 7 LSB as serial data to Arduino Serial monitor

    Serial.write(a_reading[i] >> 7);  // send 7 MSB as serial data to MAX
    Serial.write(a_reading[i] & 127);	  // send 7 LSB as serial data to MAX
  }
}
