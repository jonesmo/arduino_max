byte LEDPin;
byte buttonPin;

enum state {ON, OFF};

void setup() {
  // put your setup code here, to run once:

}

void loop() {
  int reading = digitalRead(buttonPin);

  switch(state) {
    case ON:
      if (reading == HIGH) {
        state = OFF;

        digitalWrite(LEDPin, LOW);
        noTone(speakerPin);
      } break;

    case OFF:
      if (reading == LOW) {
        digitalWrite(LEDPin, HIGH);
        tone(speakerPin, 440);
        Serial.println(++count);
        state = ON;
      } break;
  }
}
