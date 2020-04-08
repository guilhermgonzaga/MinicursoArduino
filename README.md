# MinicursoArduino

[![][gh-build-badge]][gh-actions]
[![][license-shield]][repo-url]

[license-shield]: https://img.shields.io/github/license/guilhermgonzaga/MinicursoArduino
[repo-url]:       https://github.com/guilhermgonzaga/MinicursoArduino
[gh-actions]:     https://github.com/guilhermgonzaga/MinicursoArduino/actions
[gh-build-badge]: https://github.com/guilhermgonzaga/MinicursoArduino/workflows/Build%20Slides/badge.svg


**[Em produção]** Material para um minicurso voltado aos ingressantes de Engenharia de Computação na Universidade Federal de Mato Grosso do Sul (UFMS).

O material foi produzido em LaTeX/Beamer com o tema [Focus](https://github.com/elauksap/focus-beamertheme).

Slides serão anexos a cada [*release*](https://github.com/guilhermgonzaga/MinicursoArduino/releases), caso não queira gerá-los manualmente.

<br>

## Ementa

As aulas são simplesmente enumeradas a partir de 0, com pastas correspondentes no diretório raiz do projeto.

#### Aula 0 (opcional)

1. Descrição do Arduino Mega 2560
1. Ambiente de desenvolvimento (Arduino IDE)
1. Introdução à Linguagem (C++)

<br>

## Desenvolvimento do material

Para gerar os slides, são necessárias as seguintes ferramentas no ambiente.

`pdflatex`
: Uma distribuição LaTeX de sua preferência. Este material é feito com [MiKTeX](https://miktex.org/) no Windows e [TeX Live](https://www.tug.org/texlive/) no Linux (Ubuntu 19.10).

`python`
: Python, dependência de Pygments.

`pygmentize`
: [Pygments](https://pygments.org/), para fazer a coloração de sintaxe nos exemplos de código.

`make`
: GNU Make, para geração mais fácil dos slides. Usuários de Windows não poderão usar o GNU Make naturalmente. A alternativa recomendada é acessá-lo pelo [*Windows Subsystem for Linux*](https://docs.microsoft.com/pt-br/windows/wsl/install-win10).

#### Contribuindo com o projeto

Dê uma olhada em [CONTRIBUTING.md](./CONTRIBUTING.md) para regras e informações.

<br>

## Geração dos Slides

Os comandos seguintes devem ser executados no diretório raiz do projeto. Lembre-se de gerar duas vezes seguidas quando o diretório estiver limpo, senão algumas referências internas do arquivo, como o sumário, estarão inválidas. Este é um problema comum.

1. Gerar todos os slides:
	```sh
	make
	```
	É o mesmo que `make all`. Alternativamente, um slide específico pode ser gerado com `make n`, sendo `n` o número da aula (0, 1, 2, ...).

1. Extrair todos os slides criados até então para uma pasta `slides/` no diretório raiz do projeto.
	```sh
	make extract
	```
	Obs.: slides só serão extraídos se forem mais novos que os já presentes na pasta.

1. Obter uma lista detalhada das opções de comando (nem todos descritos aqui).
	```sh
	make help
	```
