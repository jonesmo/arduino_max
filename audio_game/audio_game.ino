#define SENSORPIN 0

// above 10,000 is one zone
// 6-10K is the middle zone
// below 6K is the high zone

int a_reading;

void setup() {
  Serial.begin(115200);    // setup serial, **NOTE BAUD RATE**
  analogReadResolution(14); //use 14 bits for ADC
  pinMode(SENSORPIN, INPUT_PULLUP);
}

void loop() {
  a2dStep();
  serialStep();
  delay(10);
}

void a2dStep() {
  a_reading = analogRead(SENSORPIN);
}

void serialStep() {
  Serial.write(255);	//send separator byte

  // Serial.println(a_reading[i] >> 7);  // send 7 MSB as serial data to Arduino Serial monitor
  // Serial.println(a_reading[i] & 127);	  // send 7 LSB as serial data to Arduino Serial monitor

  Serial.write(a_reading >> 7);  // send 7 MSB as serial data to MAX
  Serial.write(a_reading & 127);	  // send 7 LSB as serial data to MAX
}
