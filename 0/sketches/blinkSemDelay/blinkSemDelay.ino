// SPDX-License-Identifier: CC0-1.0

const unsigned long intervaloMs = 1000; // Tempo até acender/apagar
unsigned long instanteAnterior = millis();
bool ledAceso = false;

void setup() {
	pinMode(LED_BUILTIN, OUTPUT);
	digitalWrite(LED_BUILTIN, LOW); // Inicialmente apagado
}
void loop() {
	unsigned long instanteAtual = millis();

	if (instanteAtual - instanteAnterior >= intervaloMs) {
		instanteAnterior += intervaloMs; // Alternativa:  = instanteAtual
		ledAceso = !ledAceso;
		if (ledAceso) {
			digitalWrite(LED_BUILTIN, HIGH);
		} else {
			digitalWrite(LED_BUILTIN, LOW);
		}
	}
}
