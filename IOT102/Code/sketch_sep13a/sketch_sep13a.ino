// doc du lieu tu bien tro ve man hinh may tinh
// on off với giá trị đặt trước
// thay đổi cường độ ánh sáng của đèn led khi VR thay đổi
int bientro = A1;
int a = 0;
b = 0;
int led = 12;
void setup() {
  // put your setup code here, to run once:
  pinMode(led, OUTPUT);
  pinMode(bientro, INPUT);
  Serial.begin(9600);//9600 chuan truyen thong qua usb
  b = map (a, 0, 1023, 0, 255);
  analogWrite(led, b);
}

void loop() {
  // put your main code here, to run repeatedly:
  a = analogRead(bientro);
  Serial.print("gia tri bien tro = ")
  Serial.println(a);
  delay(100);
  b = map (a, 0, 1023, 0, 255);
  analogWrite(led, b);

  
//  digitalWrite(ledred, HIGH);
//  delay(a);
//  digitalWrite(ledred, LOW);
//  delay(a);
}
