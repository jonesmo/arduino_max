// mux_max.ino
// Basic Arduino multiplexer example
// Same as mux.ino but send data to Max using Serial.write

#define NSENSORS 2 // number of mux channels to use (up to 8)

int s0 = 2;     // pin number connected to pin S0 of the 4051
int s1 = 3;     // pin number connected to pin S1 of the 4051
int s2 = 4;     // pin number connected to pin S2 of the 4051

int analogPin = 0;  // pin number connected to the multiplexer's z pin
 
void setup(){
 
  pinMode(s0, OUTPUT);    // s0
  pinMode(s1, OUTPUT);    // s1
  pinMode(s2, OUTPUT);    // s2
  Serial.begin(115200);

}

 
void loop () {
  int b0, b1, b2;   //variables for storing the 3 bits of the y pin number
  int sensors[NSENSORS];   //sensor values

  Serial.write(255); //send 'status byte' before looping through the mux channels
  for (int count=0; count<NSENSORS; count++) {
    // select the bit  
    b0 = bitRead(count,0);  // bit 0 of count
    b1 = bitRead(count,1);  // bit 1 of count
    b2 = bitRead(count,2);  // bit 2 of count     

    digitalWrite(s0, b0);   // set address pin 0 of the mux
    digitalWrite(s1, b1);   // set address pin 1 of the mux
    digitalWrite(s2, b2);   // set address pin 2 of the mux

    sensors[count] = analogRead(analogPin);   // get the analog value -- only read 1 pin

    Serial.write(sensors[count] >> 3);
    Serial.write(sensors[count] & 7);
  }  
  delay(10);
}
