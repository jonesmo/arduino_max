// lcdTest.ino
// Michael Gurevich

// demonstrates using the Newhaven Display Serial LCD
// add the NewhavenLCDSerial library directory to your Arduino Libraries
// on a Mac, this is normally ~/Documents/Arduino/libraries/
// on Windows, it is My Documents\Arduino\libraries\
// see http://www.arduino.cc/en/Hacking/Libraries

#include <NewhavenLCDSerial.h>

byte lcdPin = 1;  // on Uno R4, this needs to be the Serial1 tx pin, which is pin1

int rows = 2;      // number of rows
int cols = 16;     // number of columns
char letter;       // letter to print

NewhavenLCDSerial lcd(lcdPin); // create lcd object, using pin 1

void setup() {
  lcd.begin(9600);           // initialize with the serial baud rate
  lcd.clear();              // clear LCD
  lcd.setBrightness(7);
  lcd.setContrast(40);
}

void loop () {
  letter = 'a';        
  
  lcd.setCursor(0,5);      // row 0, column 5
  lcd.print("Testing");    // display text
  delay(1000);            // wait
  lcd.clear();             // clear LCD

  lcd.setCursor(0,7);
  lcd.print(1.234,3);
  delay(1000);
  lcd.clear();

  lcd.setCursor(1,7);
  lcd.print(2);
  delay(2000);
  lcd.clear();
  
  for (int i = 0; i< rows; i++) {
    for (int j = 0; j<cols; j++) {
      lcd.setCursor(i,j);
      lcd.print(letter++);
      delay(500);
      lcd.clear();
    }
  }
}
