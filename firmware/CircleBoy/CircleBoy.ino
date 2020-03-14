#include <EEPROM.h>

#define X_PIN A3
#define Y_PIN A2
#define UP_PIN 0
#define DOWN_PIN 1
#define LEFT_PIN 2
#define RIGHT_PIN 5 // reset

#define CHECKSUM_ADDRESS 0x01
#define CHECKSUM_VALUE 0x69
#define CONFIG_ADDRESS 0x00
#define CONFIG_WAIT_TIME 500

#define UP_CONFIG 0
#define DOWN_CONFIG 1
#define LEFT_CONFIG 2
#define RIGHT_CONFIG 3

#define NO_GOING_BACK_NOW false // flipping to true will disable programming by using the reset line (enables right)

byte currentConfig = UP_CONFIG;
const int centerX = 515;
const int centerY = 512;
int x, y, mag;
float ang;
bool upPressed, downPressed, leftPressed, rightPressed = false;

void setup() {
  readConfig();
  checkForNewConfig();
  writeConfig();
}

void loop() {
  clearPresses();
  
  x = analogRead(X_PIN);
  y = analogRead(Y_PIN);
  mag = magnitude(x, y);
  ang = angle(x, y);
  if (ang < 0) { ang += 6.2832; }

  switch(currentConfig) {
    case DOWN_CONFIG:
      setStickEvenSegments(200);
      break;
    case LEFT_CONFIG:
      setStickUnevenSegments(150);
      break;
    case RIGHT_CONFIG:
      setStickUnevenSegments(200);
      break;
    default: // UP_CONFIG
      setStickEvenSegments(150);
  }

  writePresses();

  delay(1);
}

void clearPresses() {
  upPressed = false;
  downPressed = false;
  leftPressed = false;
  rightPressed = false;
}

void writePresses(){
  if (upPressed) { pinMode(UP_PIN, OUTPUT); digitalWrite(UP_PIN, LOW); }
  else { pinMode(UP_PIN, INPUT); }

  if (downPressed) { pinMode(DOWN_PIN, OUTPUT); digitalWrite(DOWN_PIN, LOW); }
  else { pinMode(DOWN_PIN, INPUT); }

  if (leftPressed) { pinMode(LEFT_PIN, OUTPUT); digitalWrite(LEFT_PIN, LOW); }
  else { pinMode(LEFT_PIN, INPUT); }

  if (NO_GOING_BACK_NOW) {
    if (rightPressed) { pinMode(RIGHT_PIN, OUTPUT); digitalWrite(RIGHT_PIN, LOW); }
    else { pinMode(RIGHT_PIN, INPUT); }
  }
}

int magnitude(int x, int y) {
  return sqrt((pow(x - centerX, 2) + pow(y - centerY, 2)));
}

double angle(int x, int y){
  return atan2(y - centerY, x - centerX);
}

byte checksum;
void readConfig() {
  EEPROM.get(CHECKSUM_ADDRESS, checksum);
  if (checksum == CHECKSUM_VALUE){
    EEPROM.get(CONFIG_ADDRESS, currentConfig);
  } else {
    EEPROM.write(CHECKSUM_ADDRESS, CHECKSUM_VALUE);
    EEPROM.write(CONFIG_ADDRESS, currentConfig);
  }
}

void writeConfig() {
  EEPROM.update(CONFIG_ADDRESS, currentConfig);
}

int configStartTime;
void checkForNewConfig(){
  configStartTime = millis();
  while (millis() - configStartTime < CONFIG_WAIT_TIME) {
    if (!digitalRead(UP_PIN)) { currentConfig = UP_CONFIG; }
    else if (!digitalRead(DOWN_PIN)) { currentConfig = DOWN_CONFIG; }
    else if (!digitalRead(LEFT_PIN)) { currentConfig = LEFT_CONFIG; }
    else if (!digitalRead(RIGHT_PIN)) { currentConfig = RIGHT_CONFIG; }
  }
}

void setStickEvenSegments(int threshold) {
  if (mag > threshold) {
    if (ang >= 0.3972 && ang <= 1.1781){ upPressed = true; rightPressed = true; } // up right
    else if (ang >= 1.1781 && ang <= 1.9635){ upPressed = true; } // up
    else if (ang >= 1.9635 && ang <= 2.7489){ upPressed = true; leftPressed = true; } // up left
    else if (ang >= 2.7489 && ang <= 3.5343){ leftPressed = true; } // left
    else if (ang >= 3.5343 && ang <= 4.3197){ downPressed = true; leftPressed = true; } // down left
    else if (ang >= 4.3197 && ang <= 5.1051){ downPressed = true; } // down
    else if (ang >= 5.1051 && ang <= 5.8905){ downPressed = true; rightPressed = true; } // down right
    else if (ang >= 5.8905 || ang <= 0.3972){ rightPressed = true; } // right
  }
}

void setStickUnevenSegments(int threshold) { // 1/4 diagonals, 3/4 straights
  if (mag > threshold) {
    if (ang >= 0.58904 && ang <= 0.98174){ upPressed = true; rightPressed = true; } // up right
    else if (ang >= 0.98174 && ang <= 2.15984){ upPressed = true; } // up
    else if (ang >= 2.15984 && ang <= 2.55254){ upPressed = true; leftPressed = true; } // up left
    else if (ang >= 2.55254 && ang <= 3.73063){ leftPressed = true; } // left
    else if (ang >= 3.73063 && ang <= 4.12333){ downPressed = true; leftPressed = true; } // down left
    else if (ang >= 4.12333 && ang <= 5.30143){ downPressed = true; } // down
    else if (ang >= 5.30143 && ang <= 5.69413){ downPressed = true; rightPressed = true; } // down right
    else if (ang >= 5.69413 || ang <= 0.58904){ rightPressed = true; } // right
  }
}
