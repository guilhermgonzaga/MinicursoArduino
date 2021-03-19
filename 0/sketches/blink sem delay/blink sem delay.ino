// SPDX-License-Identifier: CC0-1.0

const unsigned long intervalo = 1000;  // em milissegundos
unsigned long momentoAnterior = millis();
bool ledAceso = false;

void setup() {
	pinMode(LED_BUILTIN, OUTPUT);
	digitalWrite(LED_BUILTIN, LOW);  // Garante estado inicial
}

void loop() {
	unsigned long momentoAtual = millis();

	if (momentoAtual - momentoAnterior >= intervalo) {
		momentoAnterior = momentoAtual;
		ledAceso = !ledAceso;

		if (ledAceso) {
			digitalWrite(LED_BUILTIN, HIGH);
		} else {
			digitalWrite(LED_BUILTIN, LOW);
		}
	}
}
