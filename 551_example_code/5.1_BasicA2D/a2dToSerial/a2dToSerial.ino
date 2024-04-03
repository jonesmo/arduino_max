/////////////////////////////////////////////////////////////////
// a2dToSerial
// Michael Gurevich
//
// Demonstrates sending an a2d value as serial data`
// display on LCD and send out Serial Monitor
// Connect a varying voltage from a sensor to Analog pin 0
/////////////////////////////////////////////////////////////////

#include <NewhavenLCDSerial.h>

int a_reading; // analog reading

NewhavenLCDSerial lcd(1); // setup Newhaven LCD Display
 
void setup() {
  lcd.begin(9600);      // initialize lcd display
  Serial.begin(9600);   // setup serial, 9600 bps
  lcd.clear();
  lcd.print("Analog: ");
  //analogReadResolution(14); // optionally increase to 14 bit resolution. 12 also works
 }

void loop() {
  a2dStep();
  displayStep();
  delay(100);
}

void a2dStep() {  
  
  a_reading = analogRead(0);    // read the value of analog pin 0
}

void displayStep() {
  
  Serial.println(a_reading);  // send the reading as serial data
  // also write to the LCD
  lcd.setCursor(0,8);
  //right-justificiation trick
  if (a_reading<10)
    lcd.print("    ");
  else if (a_reading<100)
    lcd.print("   ");
  else if (a_reading< 1000)
    lcd.print("  ");
    else if (a_reading< 10000)
    lcd.print(" ");
  lcd.print(a_reading);
}
