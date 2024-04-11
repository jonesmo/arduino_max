int a_reading;
int analogPin = 0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  a_reading = analogRead(0);

  Serial.println(a_reading);

  delay(100);
}
