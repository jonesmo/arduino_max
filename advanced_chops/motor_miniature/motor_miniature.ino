int dir1Pin = 2;  // connect to "IN1" Pin of Motor Controller
int dir2Pin = 4;  // connect to "IN2" Pin of Motor Controller
int speedPin = 5; // connect to "ENA" Pin of Motor Controller -- NEEDS TO BE A PWM PIN

int sensorPin = 3;
int a_reading; // sensor reading
// int prev_reading; // previous sensor reading

byte sp = 0;      // speed (PWM duty cycle)

void setup() {
  Serial.begin(115200);

  pinMode(dir1Pin, OUTPUT);
  pinMode(dir2Pin, OUTPUT);
  pinMode(speedPin, OUTPUT);

  analogReadResolution(14);
}

void loop() {
  // read sensor
  a_reading = analogRead(sensorPin);
  Serial.println(a_reading);

  digitalWrite(dir1Pin, LOW);
  digitalWrite(dir2Pin, HIGH);

  // set speed depending on sensor reading
  sp = a_reading / 64;

  analogWrite(speedPin, sp); // set speed (range 0-255)

  // prev_reading = a_reading;
}
