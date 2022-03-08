<!-- SPDX-License-Identifier: CC0-1.0 -->

# MinicursoArduino

[![Slides](https://github.com/guilhermgonzaga/MinicursoArduino/workflows/Build%20and%20Release%20Slides/badge.svg)][gh-actions]
[![Sketches](https://github.com/guilhermgonzaga/MinicursoArduino/workflows/Compile%20Sketches/badge.svg)][gh-actions]

[gh-actions]: https://github.com/guilhermgonzaga/MinicursoArduino/actions

**[Em produção]** Material para um minicurso voltado aos ingressantes de Engenharia de Computação na Universidade Federal de Mato Grosso do Sul (UFMS).

O material foi produzido em LaTeX/Beamer com o tema [Focus](https://github.com/elauksap/focus-beamertheme).

## Ementa Planejada

As aulas são simplesmente enumeradas a partir de 0, com pastas correspondentes no diretório raiz do projeto. As caixas de seleção mostram o que já está pronto.

### Aula 0 -- Introdução

- [x] Arduino Mega 2560
- [x] Ambiente de desenvolvimento (Arduino IDE)
- [x] Introdução à Linguagem (C++)
	+ Tipos de dados e operadores
	+ Estruturas de controle
	+ Funções
- [x] Utilidades do Arduino:
	+ `String`
	+ `pinMode` e `digitalWrite()`
	+ Constantes
- [x] Exemplos:
	+ *Blink*
	+ *Blink* sem delay
- [ ] Utilidades do Arduino:
	+ Comunicação via `Serial`
	+ `serialEvent()`
- [ ] Exemplos:
	+ Comunicação via Serial

### Aula 1 -- Eletrônica Digital

- [ ] Funcionamento de uma protoboard
- [ ] Revisão de eletrônica:
	+ Diferença de Potencial
	+ Níveis lógicos
	+ LED/diodo (ânodo e cátodo)
	+ Resistor e código de cores
	+ *Pull-up* e *pull-down*
- [ ] Utilidades do Arduino: `digitalRead()`
- [ ] Botão (*pushbutton*)
- [ ] Exemplo: Semáforo com botão

### Aula 2 -- Eletrônica "Analógica"

- [ ] Revisão de eletrônica:
	+ Sinais analógicos e digitais
- [ ] Utilidades do Arduino: `analogRead()`
- [ ] Potenciômetro e LDR
- [ ] Exemplos:
	+ Fazer PWM *bit-banging* (https://www.arduino.cc/en/pmwiki.php?n=Tutorial/SecretsOfArduinoPWM)
	+ *Serial plotter* com `analogRead()`
	+ Controle de luminosidade do LED com PWM (explicar o motivo do PWM)
	+ Buzzer

### Aula 3

- [ ] Sensor de distância HC-SR04 (medidas com média móvel ou filtro)
- [ ] Servomotor
- [ ] Módulo LCD 16x2

### Aula 4 -- Simuladores e Ferramentas

A definir. O objetivo será mostrar componentes que não há em quantidade suficiente no laboratório.

## Geração dos slides

Slides serão anexos a cada [*release*](https://github.com/guilhermgonzaga/MinicursoArduino/releases), caso não queira gerá-los manualmente.

O Latexmk cuida de todo o processo de geração, inclusive compila várias vezes para resolver referências. Ademais, se nenhum arquivo fonte for alterado, o slide dependente não é recompilado.

### Dependências

Para gerar os slides, são necessárias as seguintes ferramentas no ambiente.

`latexmk` mais `pdflatex` ou `lualatex`
: Uma distribuição LaTeX de sua preferência. Este material é produzido com MiKTeX no Windows e TeX Live no Linux. É necessário o TeX Live 2018 ou mais recente, pois anteriores não trazem o tema usado nos slides.

`perl`
: Perl, dependência de Latexmk.

`pygmentize`
: [Pygments](https://pygments.org/) para fazer a coloração de sintaxe nos exemplos de código.

`python`
: Python, dependência de Pygments.

### Comandos

Os comandos devem ser executados por padrão no diretório raiz do projeto.

```sh
# Gera todos os slides
latexmk
# Apaga arquivos temporários
latexmk -c
```

Em todo caso, é possível especificar aulas passando o caminho relativo ao arquivo principal. Exemplo:

```sh
# Gera apenas a aula 0
latexmk 0/0.tex
# Limpa o diretório da aula 0
latexmk -c 0/0.tex
```

Veja mais opções de linha de comando na documentação do Latexmk (em [PDF](http://linorg.usp.br/CTAN/support/latexmk/latexmk.pdf) ou [texto simples](http://linorg.usp.br/CTAN/support/latexmk/latexmk.txt)).

### Problemas Comuns

1. A compilação falha com a mensagem:

	> Paragraph ended before \FV@BeginScanning was complete. \end{frame}

	Se há um exemplo de código neste *frame*, então deve ser pela falta do atributo *fragile*. Como o Minted usa ambientes *verbatim*, essa declaração é necessária. Corrija assim:

	```latex
	\begin{frame}[fragile]{Título}
	...
	\end{frame}
	```

## Contribuindo com o material

Dê uma olhada em [CONTRIBUTING.md](./CONTRIBUTING.md) para mais informações.
