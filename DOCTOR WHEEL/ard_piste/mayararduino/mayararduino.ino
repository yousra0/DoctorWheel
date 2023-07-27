#include <Wire.h>
#include <LiquidCrystal_I2C.h>
char data;
//int x=0;
LiquidCrystal_I2C lcd(0x27, 16, 2);  // Initialise le module LCD I2C

//int pirPin = 2; // Définit la broche du capteur de mouvement

void setup() {
  Serial.begin(9600);
  lcd.init();         // Initialise l'affichage LCD
  lcd.backlight();    // Allume le rétroéclairage de l'affichage LCD
  pinMode(2, INPUT);  // Définit la broche du capteur de mouvement en entrée
}

void loop() {
  
    lcd.print("Bonjour !");
    delay(1000);
   
  
  if (digitalRead(2) == HIGH) {  // Si le capteur de mouvement détecte un mouvement
    lcd.setCursor(0, 0);         // Place le curseur en haut à gauche de l'affichage LCD
    lcd.print("Mouvement detecte!");
    Serial.write('1');
    // Affiche le message "Mouvement detecte!"
    delay(500);
  } else if (digitalRead(2) == LOW) {  // Sinon
    lcd.setCursor(0, 0);               // Place le curseur en haut à gauche de l'affichage LCD
    lcd.print("Mouvement non detecte!");
    Serial.write('2');
    //delay(1000);
  }
  /*if (Serial.available()) {
    if (data == 1) {  // Si le capteur de mouvement détecte un mouvement
    Serial.write('1');
    // Affiche le message "Mouvement detecte!"
   
  } else if (data == 2) {  // Sinon
   Serial.write('2');
    //delay(1000);
  }*/
}