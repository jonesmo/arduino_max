/*
 * RGBFade.ino
 * Color fades on an RGB LED
* Originally by Clay Shirky <clay.shirky@nyu.edu> 
* Modified by Michael Gurevich
* 
*/

// Output
int redPin   = 3;   // Red LED,   connected to digital pin 3
int greenPin = 5;  // Green LED, connected to digital pin 5
int bluePin  = 6;  // Blue LED,  connected to digital pin 6

// Program variables
int redVal   = 255; // Variables to store the values to send to the pins
int greenVal = 1;   // Initial values are Red full, Green and Blue off
int blueVal  = 1;

int i = 0;     // Loop counter    
int wait = 50; // 50ms (.05 second) delay; shorten for faster fades

void setup()
{
  Serial.begin(9600);
  pinMode(redPin,   OUTPUT);   // sets the pins as output
  pinMode(greenPin, OUTPUT);   
  pinMode(bluePin,  OUTPUT); 
}

// Main program
void loop()
{
  i += 1;      // Increment counter
  if (i < 255) // First phase of fades, 0-254
  {
    redVal   -= 1; // Red down
    greenVal += 1; // Green up
    blueVal   = 1; // Blue low
  }
  else if (i < 509) // Second phase of fades, 255 - 508
  {
    redVal    = 1; // Red low
    greenVal -= 1; // Green down
    blueVal  += 1; // Blue up
  } 
  else if (i < 763) // Third phase of fades, 509 - 762
  {
    redVal  += 1; // Red up
    greenVal = 1; // Green low
    blueVal -= 1; // Blue down
  }
  else // Re-set the counter, and start the fades again
  {
    i = 1;
  }  

  analogWrite(redPin,   redVal);   // Write current values to LED pins
  analogWrite(greenPin, greenVal); 
  analogWrite(bluePin,  blueVal);  
  
  // for debugging to see the RGB values on the Serial Monitor
  Serial.print("R: ");
  Serial.print(redVal);
  Serial.print("| G: "); 
  Serial.print(greenVal);
  Serial.print("| B: "); 
  Serial.println(blueVal);
  delay(wait); // Pause for 'wait' milliseconds before resuming the loop
}
