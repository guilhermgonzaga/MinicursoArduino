// SPDX-License-Identifier: CC0-1.0

// Poderia ser qualquer outro pino, ou poderia ser LED_BUILTIN
const int pinoLed = 13;

void setup() {
	pinMode(pinoLed, OUTPUT); // Configura pino como saída
}

void loop() {
	digitalWrite(pinoLed, HIGH); // Acende o LED (Aplica nível alto)
	delay(1000);                 // Pausa por 1 segundo
	digitalWrite(pinoLed, LOW);  // Apaga o LED (Aplica nível baixo)
	delay(1000);                 // Pausa por 1 segundo
}
