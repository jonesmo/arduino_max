#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h>

// Weather Sensors
#define SEALEVELPRESSURE_HPA (1013.25)

#define BME_ADDRESS 0x76
Adafruit_BME280 bme;

float tempC, tempF, pressure, humidity, altitudeM, altitudeF;
unsigned int tempF_out, pressure_out, humidity_out, altitudeF_out;

// Wind Sensor
#define analogPinForRV    1
#define analogPinForTMP   0

const float zeroWindAdjustment =  .2; // negative numbers yield smaller wind speeds and vice versa.

int TMP_Therm_ADunits;  //temp termistor value from wind sensor
float TMP_Volts;
float RV_Wind_ADunits;    //RV output from wind sensor 
float RV_Wind_Volts;
int TempCtimes100;
float zeroWind_ADunits;
float zeroWind_volts;
float WindSpeed_MPH;

void setup() {
  Serial.begin(9600);

	if (!bme.begin(BME_ADDRESS)) {
		Serial.println("Could not find a valid BME280 sensor, check wiring!");
		while (1);
	}

  Wire.begin();

  Serial.println("start wind sensor");

  pinMode(A2, INPUT);        // GND pin      
  pinMode(A3, INPUT);        // VCC pin
  digitalWrite(A3, LOW);     // turn off pullups
}

void loop() {
  readStep();
  // printStep();
  serialStep();
	delay(100);
}

void readStep() {
  readWeatherSensorStep();
  readWindSensorStep();
}

void readWeatherSensorStep() {
  // temperature in Celsius and Fahrenheit
  tempC = bme.readTemperature();
  tempF = tempC * 9 / 5 + 32;

  // barometric pressure in hectopascals, aka millibars
  pressure = bme.readPressure() / 100.0F;

  // humidity as a percent
  humidity = bme.readHumidity();

  // altitude in meters and feet
  altitudeM = bme.readAltitude(SEALEVELPRESSURE_HPA);
  altitudeF = altitudeM * 3.280839895;
}

void readWindSensorStep() {
  TMP_Therm_ADunits = analogRead(analogPinForTMP);
  RV_Wind_ADunits = analogRead(analogPinForRV);
  RV_Wind_Volts = (RV_Wind_ADunits *  0.0048828125);

  TempCtimes100 = (0.005 *((float)TMP_Therm_ADunits * (float)TMP_Therm_ADunits)) - (16.862 * (float)TMP_Therm_ADunits) + 9075.4;  

  zeroWind_ADunits = -0.0006*((float)TMP_Therm_ADunits * (float)TMP_Therm_ADunits) + 1.0727 * (float)TMP_Therm_ADunits + 47.172;  //  13.0C  553  482.39

  zeroWind_volts = (zeroWind_ADunits * 0.0048828125) - zeroWindAdjustment;  
    
  WindSpeed_MPH =  pow(((RV_Wind_Volts - zeroWind_volts) /.2300) , 2.7265);  

  TMP_Volts =  TMP_Therm_ADunits * 0.0048828125;
}

void printStep() {
  Serial.print("Weather Sensors: ");
  Serial.println();

  Serial.print("Temperature = ");
	Serial.print(tempC);
	Serial.print("*C / ");
  Serial.print(tempF);
  Serial.println("*F");

	Serial.print("Pressure = ");
	Serial.print(pressure);
	Serial.println("hPa");

	Serial.print("Humidity = ");
	Serial.print(humidity);
	Serial.println("%");

	Serial.print("Approx. Altitude = ");
	Serial.print(altitudeM);
	Serial.print("m / ");
  Serial.print(altitudeF);
  Serial.println("ft");

  Serial.print("Wind Sensor: ");
  Serial.println();

  Serial.print("  TMP volts ");
  Serial.print(TMP_Volts);
  
  Serial.print(" RV volts ");
  Serial.print((float)RV_Wind_Volts);

  Serial.print("\t  TempC*100 ");
  Serial.print(TempCtimes100);

  Serial.print("   ZeroWind volts ");
  Serial.print(zeroWind_volts);

  Serial.print("   WindSpeed MPH ");
  Serial.println((float)WindSpeed_MPH);

  Serial.println();
}

void serialStep() {
  float scaleNumerator = (1<<14) - 1.0;

  float tempScale = scaleNumerator / ((float) 100 * 2.0);
  tempF_out = (unsigned int) ((tempF + 100) * tempScale);

  float pressureScale = scaleNumerator / ((float) 1050);
  pressure_out = (unsigned int) (pressure * pressureScale);

  float humidityScale = scaleNumerator / ((float) 100);
  humidity_out = (unsigned int) (humidity * humidityScale);

  float altitudeScale = scaleNumerator / ((float) 8000);
  altitudeF_out = (unsigned int) ((altitudeF + 50) * altitudeScale);

  float windspeedScale = scaleNumerator / ((float) 40);
  windspeedMPH_out = (unsigned int) (WindSpeed_MPH * windspeedScale);

  Serial.write(255);

  Serial.write(tempF_out >> 7);
  Serial.write(tempF_out & 127);
  Serial.write(pressure_out >> 7);
  Serial.write(pressure_out & 127);
  Serial.write(humidity_out >> 7);
  Serial.write(humidity_out & 127);
  Serial.write(altitudeF_out >> 7);
  Serial.write(altitudeF_out & 127);
  Serial.write(windspeedMPH_out >> 7);
  Serial.write(windspeedMPH_out & 127);
}