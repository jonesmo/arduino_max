/////////////////////////////////////////////////////////////////
// arduinoOnePole.ino
// Michael Gurevich
//
// simple one pole filter in Arduino, sending raw and filtered data to Max
// 
// implements the lowpass filter with equation y[n] = a*y[n-1] + b*x[n]
//
//  a and b should be numbers between 0-1, where a+b=1 for unity gain in the filter
//
/////////////////////////////////////////////////////////////////


// instead of using floating point values for a and b, 
// we make them numbers between 0-1000 where a+b = 1000
// then, we write the equation as y[n] = (a*y[n-1] + b*x[n]) / 1000
// this allows us to keep the calculation in fixed-point math because the numerator will normally be large

#define FILTER_A 900         
#define FILTER_B 100
#define FILTER_DENOM 1000

#define analogPin 0

int x_n;   // current reading
long y_n = 0;  // filter output

void setup() {
  Serial.begin(115200);    // setup serial, 115200 bps
}

void loop() {
  a2dStep();
  filterStep();
  serialStep();
  delay(10);
}

void a2dStep() {  
  
  x_n = analogRead(analogPin);    // read the value of analog pin

}

void filterStep() {  

  //y[n] = (a*y[n-1] + b*x[n]) / 100
  //avoid floating point math
  y_n = ((FILTER_A * y_n) + (FILTER_B * (long)x_n)) / FILTER_DENOM;  

}


void serialStep() {
  Serial.write(255);
  
  Serial.write(x_n >> 3);   // send 7 MSB of the raw reading 
  Serial.write(x_n & 7);    // send 3 LSB of the raw reading 

  Serial.write((x_n - (int)y_n) >> 3);   // send 7 MSB of the filtered reading
  Serial.write((x_n - (int)y_n) & 7);    // send 3 LSB of the filtered reading

//  Serial.println((int)y_n);   //display filtered signal only on Serial Monitor/plotter
  
}
