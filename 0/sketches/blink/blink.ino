// SPDX-License-Identifier: CC0-1.0

void setup() {
	pinMode(LED_BUILTIN, OUTPUT);  // Configura pino como saída
}

void loop() {
	digitalWrite(LED_BUILTIN, HIGH); // Fornece nível alto; acende o LED
	delay(1000);
	digitalWrite(LED_BUILTIN, LOW);  // Fornece nível baixo; apaga o LED
	delay(1000);
}
