const int pinAnalog = 11,
          increase = A1,
          decrease = A2,
          accelerator = 7,
          shaft_select = A3,
          toogle_accelerator = 5;
uint8_t analogVal;  //0.450V
const int delay_time = 20;
const uint8_t maxVal = 150,  //>2.5V
  minVal = 22;               //0.5V

void setup() {
  // put your setup code here, to run once:
  analogVal = minVal;
  pinMode(increase, INPUT_PULLUP);
  pinMode(decrease, INPUT_PULLUP);
  pinMode(shaft_select, INPUT_PULLUP);
  pinMode(accelerator, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
  pinMode(toogle_accelerator, OUTPUT);
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(9600);
}
int i;
uint64_t maxBTime;
bool firstOnPump = false,
     firstOnTruck = false,
     firstOnIncrease = false,
     firstOnDecrease = false;
void writeAnalog_func(uint8_t value) {
  if (value <= 23) {
    //
    digitalWrite(8, 1);
    digitalWrite(9, 0);
    digitalWrite(10, 0);
    //
    digitalWrite(11, 0);
    digitalWrite(12, 0);
    digitalWrite(13, 0);
  }
  if (value <= 53 && value > 32) {
    //
    digitalWrite(8, 1);
    digitalWrite(9, 1);
    digitalWrite(10, 0);
    //
    digitalWrite(11, 0);
    digitalWrite(12, 0);
    digitalWrite(13, 0);
  }
  if (value <= 73 && value > 53) {
    //
    digitalWrite(8, 1);
    digitalWrite(9, 1);
    digitalWrite(10, 1);
    //
    digitalWrite(11, 0);
    digitalWrite(12, 0);
    digitalWrite(13, 0);
  }
  if (value <= 93 && value > 73) {
    //
    digitalWrite(8, 1);
    digitalWrite(9, 1);
    digitalWrite(10, 1);
    //
    digitalWrite(11, 1);
    digitalWrite(12, 0);
    digitalWrite(13, 0);
  }
  if (value <= 113 && value > 93) {
    //
    digitalWrite(8, 1);
    digitalWrite(9, 1);
    digitalWrite(10, 1);
    //
    digitalWrite(11, 1);
    digitalWrite(12, 1);
    digitalWrite(13, 0);
  }
  if (value <= 133 && value > 113) {
    //
    digitalWrite(8, 1);
    digitalWrite(9, 1);
    digitalWrite(10, 1);
    //
    digitalWrite(11, 1);
    digitalWrite(12, 1);
    digitalWrite(13, 1);
  }
}
void loop() {
  // put your main code here, to run repeatedly:


  if (firstOnPump) {
    writeAnalog_func(analogVal);
    if (!digitalRead(increase)) {
      analogVal++ == maxVal ? analogVal = maxVal : analogVal;
      Serial.print("analogVal added:\nValue=");
      Serial.println(analogVal);
      delay(delay_time);
    }
    if (!digitalRead(decrease)) {
      analogVal-- == minVal ? analogVal = minVal : analogVal;
      Serial.print("analogVal substracted:\nValue=");
      Serial.println(analogVal);
      delay(delay_time);
    }

    if (analogVal < minVal+2) {
      Serial.println("accelerator disangaged");
      digitalWrite(accelerator, LOW);
      firstOnIncrease = false;
      //delay(20);
    }
    if (analogVal >= minVal+2) {
      Serial.println("accelerator engaged");
      digitalWrite(accelerator, HIGH);
      //delay(20);
    }
  }
  if (!digitalRead(shaft_select)) {
    if (firstOnTruck == false) {
      firstOnPump = false;
      firstOnTruck = true;
      digitalWrite(accelerator, LOW);
      Serial.println("not on pump mode");
      digitalWrite(toogle_accelerator, LOW);
      maxBTime = 48000000;
      delay(1000);
    }
  }
  if (digitalRead(shaft_select)) {
    if (firstOnPump == false) {
      firstOnPump = true;
      firstOnTruck = false;
      digitalWrite(accelerator, LOW);
      analogVal = minVal;
      Serial.print("Accelerator:");
      Serial.println(analogVal);
      Serial.println("On pump mode ");
      digitalWrite(toogle_accelerator, HIGH);
      maxBTime = 24000000;
      delay(1000);
    }
  }
}
