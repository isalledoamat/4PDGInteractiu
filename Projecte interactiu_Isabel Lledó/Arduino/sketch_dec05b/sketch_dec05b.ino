int vib_pin = A0;
void setup() {
  pinMode(vib_pin, INPUT);
  Serial.begin(9600);      //Only for debugging
}

void loop() {
  int val;
  val = analogRead(vib_pin);
  //Serial.print("Sensor Value: ");
  Serial.println(val);
  //Serial.write(val);

  delay(100); //Small delay

}
