int ledPin   = 3;  

void setup() {
  pinMode(ledPin,OUTPUT);
}

void loop() {
  int i = 0;

  if (i == 0) {
    for (i; i < 255; i++) {
    analogWrite(ledPin, i);
    delay(15);
    }
  }

  if (i == 255) {
    for (i; i > 0; i--) {
      analogWrite(ledPin, i);
      delay(10);
    }
  }
}
