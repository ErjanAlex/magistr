long randNumber,randNumber1,randNumber2,randNumber3,randNumber4,randNumber5;

void setup() {
  
Serial.begin(9600);

randomSeed(analogRead(0));
}

void loop() {
randNumber = random(10,101);
randNumber1 = random(10,101);
randNumber2 = random(10,101);
randNumber3 = random(10,101);
randNumber4 = random(10,101);
randNumber5 = random(10,101);

Serial.print(String(randNumber) +" "+ String(randNumber1) +" "+ "223" + "*" + String(randNumber2) +" "+ String(randNumber3) +" "+ "108"+ "*" + String(randNumber4) +" "+ String(randNumber5) +" "+ "517" + "*" );
delay(900000);
}
