@\HighlightType{tipo\_de\_retorno}@ nome(@\HighlightSpecial{parâmetros}@) {
	ações;
	return @\HighlightSpecial{resultado}@;
}

long maior(long a, long b) {
	if (a > b) {
		return a;
	}
	else {
		return b;
	}
}

float media(float a, float b) {
	return (a + b) / 2;
}

void troca(int& a, int& b) {
	int aux = a;
	a = b;
	b = aux;
}

/* Descrição: verifica se <usuario> e <senha> são válidos.
 * Retorna:   true caso as credenciais sejam válidas;
 *            false caso contrário.
 */
bool checa_credenciais(String usuario, String senha) {
	if (@\HighlightSpecial{usuario existe}@ && @\HighlightSpecial{senha correta}@) {
		return true;
	}
	else {
		return false;
	}
}

void setup() {

}

void loop() {

}
