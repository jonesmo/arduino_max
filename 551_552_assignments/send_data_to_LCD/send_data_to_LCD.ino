#include <NewhavenLCDSerial.h>

byte lcdPin = 1;
NewhavenLCDSerial lcd(lcdPin);

int rows = 2;
int cols = 16;
char letter;

void setup() {
  lcd.begin(9600);
  lcd.clear();
  lcd.setBrightness(7);
  lcd.setContrast(50);
}

void loop() {
  letter = 'a';

  lcd.setCursor(0, 5);
  lcd.print("Testing");
  delay(1000);
  lcd.clear();
  delay(500);

  lcd.setCursor(0,7);
  lcd.print(1.234,4);
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
      delay(1000);
      lcd.clear();
    }
  }
}
