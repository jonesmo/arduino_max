int redPin   = 3;
int greenPin = 5;
int bluePin  = 6;

// Program variables
int redVal   = 255;
int greenVal = 1;
int blueVal  = 1;
int redOutVal;
int greenOutVal;
int blueOutVal;

byte inbyte;      // incoming data from Max
int loudnessLevel;
byte pitchLevel;
float gain;

void setup()
{
  Serial.begin(115200);
  pinMode(redPin,   OUTPUT);
  pinMode(greenPin, OUTPUT);   
  pinMode(bluePin,  OUTPUT); 
}

// Main program
void loop()
{
  checkSerialIn();
  delay(1);
}

void checkSerialIn() {
  if (Serial.available()) {
    inbyte = Serial.read();

    if (inbyte < 128) {   // volume indication, out of 128
      loudnessLevel = inbyte;
      gain = loudnessLevel / 128.0;
      Serial.write(gain);
    }

    if (inbyte >= 128) {   // pitch indication
      pitchLevel = inbyte - 128;

      if (pitchLevel < 42) {
        redVal = 255 - pitchLevel * (255/42);
        greenVal = pitchLevel * (255 / 42) + 1;
        blueVal = 1;
      } else if (pitchLevel < 84) {
        redVal = 1;
        greenVal = 255 - (pitchLevel - 42) * (255/42);
        blueVal = (pitchLevel - 42) * (255 / 42) + 1;
      } else {
        redVal = (pitchLevel - 84) * (255 / 42) + 1;
        greenVal = 1;
        blueVal = 255 - (pitchLevel - 84) * (255/42);
      }
    }

    redOutVal = static_cast<int>(redVal * gain);
    greenOutVal = static_cast<int>(greenVal * gain);
    blueOutVal = static_cast<int>(blueVal * gain);

    analogWrite(redPin, redOutVal);
    analogWrite(greenPin, greenOutVal);
    analogWrite(bluePin, blueOutVal);
  }
}