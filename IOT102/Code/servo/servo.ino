#include <Servo.h>

Servo myservo;
int potpin = 0;//A0
int val;

void setup() {
  myservo.attach(3);
  Serial.begin(9600);
}

void loop() {
  val = analogRead(potpin);
  Serial.println(val);
  val = map(val, 0, 1023, 0 , 180);
  myservo.write(val);
  delay(15);
}
