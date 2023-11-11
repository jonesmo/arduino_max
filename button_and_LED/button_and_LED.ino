const byte buttonPin = 10;
const byte ledPin = 2;

int last_reading; // stores button state
int count = 0;  // button press counter

void setup() {
  // put your setup code here, to run once:
  pinMode(buttonPin, INPUT_PULLUP);
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, LOW);
}

void loop() {
  // put your main code here, to run repeatedly:
  int reading = digitalRead(buttonPin);

  if (reading == HIGH) { // when the button is not pressed
    digitalWrite(ledPin, LOW);
  } else {
    digitalWrite(ledPin, HIGH);
  }
}
