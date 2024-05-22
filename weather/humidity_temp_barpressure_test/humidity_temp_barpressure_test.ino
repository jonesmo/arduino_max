#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h>

#define SEALEVELPRESSURE_HPA (1013.25)

#define BME_ADDRESS 0x76
Adafruit_BME280 bme;

float tempC, tempF, pressure, humidity, altitudeM, altitudeF;

void setup() {
  Serial.begin(9600);

	if (!bme.begin(BME_ADDRESS)) {
		Serial.println("Could not find a valid BME280 sensor, check wiring!");
		while (1);
	}
}

void loop() {
  readStep();
  printStep();
	delay(1000);
}

void readStep() {
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

void printStep() {
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

	Serial.println();
}