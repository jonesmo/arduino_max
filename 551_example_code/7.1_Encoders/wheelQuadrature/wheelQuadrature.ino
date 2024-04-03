// wheelQuadrature
// Michael Gurevich

//
// Count High-low transitions on input from reflective optical sensor
// You will need to calibrate the high and low thresholds

#define HI_THRESH 300  // above this threshold, we consider the signal "high"
#define LO_THRESH 150  // below this threshold, we consider the signal "low"


int wheelTurned = 0;        // count ticks
enum s {LIGHT, DARK};
s state[2] = {DARK,DARK};

void setup() {
  Serial.begin (115200);
}

void loop() {
  opticalStep();
  delay(1);
}

void opticalStep() {

  int opticalSensor;
  for (int i = 0; i < 2; i++) {
    opticalSensor = analogRead(i);

    if (state[i] == DARK) {
      if (opticalSensor < LO_THRESH) { //sensor reads "light"
        Serial.write(1 << i); //we moved one tick
        state[i] = LIGHT;    //toggle state
      }
    }
    else { //state is "LIGHT"
      if (opticalSensor > HI_THRESH) { //sensor reads "dark"
        Serial.write(1 << i); //we moved one tick
        state[i] = DARK;
      }
    }
  }
}
