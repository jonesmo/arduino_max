// L298_motor_auto
// demonstrates controlling a DC motor with an L298N H-bridge motor controller
// speed is controlled automatically, with speed ramping up and down in either direciton
// assumes you are using a motor controller board with the L298N and associated circuitry

// Motor 1
int dir1Pin = 2;  // connect to "IN1" Pin of Motor Controller
int dir2Pin = 4;  // connect to "IN2" Pin of Motor Controller
int speedPin = 5; // connect to "ENA" Pin of Motor Controller -- NEEDS TO BE A PWM PIN

byte increment = 1; // rate at which we change the speed
byte sp = 0;      // speed (PWM duty cycle)
byte dir;        // direction: 0==CCW; 1==CW;


void setup() {
  Serial.begin(9600);
  pinMode(dir1Pin, OUTPUT);
  pinMode(dir2Pin, OUTPUT);
  pinMode(speedPin, OUTPUT);
}

void loop() {

  Serial.print("Direction: ");
  Serial.print(dir);
  Serial.print("  |  Duty: ");
  Serial.println(sp);

  if (dir == 0) { //Set Direction CCW1
    digitalWrite(dir1Pin, LOW);
    digitalWrite(dir2Pin, HIGH);
  } else { // Set Direction CW
    digitalWrite(dir1Pin, HIGH);
    digitalWrite(dir2Pin, LOW);
  }

  analogWrite(speedPin, sp); // set speed (range 0-255)

  //update
  sp = sp + increment; // update the speed
  if (sp >= 255)       // if we get to 255 count back down
    increment = -1;
  if (sp <= 0) {       // if we get to 0, change direction, count up
    increment = 1;
    dir = !dir;
  }

  delay(50);
}
