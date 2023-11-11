int baudrate = 9600;

void setup() {
  Serial.begin(baudrate);
}

void loop() {
  Serial.print("Testing ");
  delay(1000);
  Serial.print(1);
  Serial.print(", ");
  delay(500);
  Serial.println(2);
  delay(500);
}
