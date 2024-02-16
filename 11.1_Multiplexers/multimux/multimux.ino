// Advanced Arduino multiplexer example
// using mutliple 4051 multiplexers
//
// assumes they are wired to share s0, s1, s2 pins
// assumes multiplexer output (z) pins are connected sequentially to analog inputs startin at 0

#define NMUX 3

int s0 = 2;     // pin number connected to pin S0 of the 4051
int s1 = 3;     // pin number connected to pin S1 of the 4051
int s2 = 4;     // pin number connected to pin S2 of the 4051

int enablePin[NMUX] = {5, 6, 7}; // Need to update this depending on value of NMUX

void setup() {

  pinMode(s0, OUTPUT);    // s0
  pinMode(s1, OUTPUT);    // s1
  pinMode(s2, OUTPUT);    // s2

  for (int i = 0; i < NMUX; i++) {
    pinMode(enablePin[i], OUTPUT);    // enable pins are outputs
    digitalWrite(enablePin[i], HIGH); // start with all enable pins HIGH (off)
  }
  Serial.begin(9600);
}


void loop () {
  int b0, b1, b2;   //variables for storing the 3 bits of the y pin number
  int sensors[8 * NMUX]; //sensor values


  for (int mux = 0; mux < NMUX; mux++) {
    digitalWrite(enablePin[mux], LOW);      //activate current mux 
    for (int count = 0; count < 8; count++) { //cycle through its 8 inputs
      // select the bit
      b0 = bitRead(count, 0); // bit 0 of count
      b1 = bitRead(count, 1); // bit 1 of count
      b2 = bitRead(count, 2); // bit 2 of count

      digitalWrite(s0, b0);
      digitalWrite(s1, b1);
      digitalWrite(s2, b2);

      sensors[count * mux] = analogRead(mux);
      Serial.print(sensors[count * mux]);
      Serial.print(" | ");
    }
    digitalWrite(enablePin[mux],HIGH); // we're done with this mux, turn it off
  }

  Serial.println();
  delay(100);
}
