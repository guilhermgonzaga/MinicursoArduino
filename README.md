# MinicursoArduino

[![Build Slides][gh-slides-badge]][gh-actions]
[![Compile Sketches][gh-sketches-badge]][gh-actions]

[gh-slides-badge]: https://github.com/guilhermgonzaga/MinicursoArduino/workflows/Build%20Slides/badge.svg
[gh-sketches-badge]: https://github.com/guilhermgonzaga/MinicursoArduino/workflows/Compile%20Sketches/badge.svg
[gh-actions]:     https://github.com/guilhermgonzaga/MinicursoArduino/actions


**[Em produção]** Material para um minicurso voltado aos ingressantes de Engenharia de Computação na Universidade Federal de Mato Grosso do Sul (UFMS).

O material foi produzido em LaTeX/Beamer com o tema [Focus](https://github.com/elauksap/focus-beamertheme).


## Ementa

As aulas são simplesmente enumeradas a partir de 0, com pastas correspondentes no diretório raiz do projeto.

### Aula 0 (opcional)

1. Descrição do Arduino Mega 2560
1. Ambiente de desenvolvimento (Arduino IDE)
1. Introdução à Linguagem (C++)


## Geração dos slides

Slides serão anexos a cada [*release*](https://github.com/guilhermgonzaga/MinicursoArduino/releases), caso não queira gerá-los manualmente.

O latexmk cuida de todo o processo de geração, inclusive compila várias vezes para resolver referências. Ademais, se nenhum arquivo fonte for alterado, o slide dependente não é recompilado.

### Dependências

Para gerar os slides, são necessárias as seguintes ferramentas no ambiente.

`latexmk`, `pdflatex`
: Uma distribuição LaTeX de sua preferência. Este material é produzido com [MiKTeX](https://miktex.org/) no Windows e [TeX Live](https://www.tug.org/texlive/) no Linux. É necessário o TeX Live 2018 ou mais recente, pois anteriores não trazem o tema usado nos slides.

`perl`
: Perl, dependência de Latexmk.

`pygmentize`
: [Pygments](https://pygments.org/) para fazer a coloração de sintaxe nos exemplos de código.

`python`
: Python, dependência de Pygments.

### Comandos

Os comandos devem ser executados no diretório raiz do projeto.

Gerar todos os slides:

```sh
latexmk
```

Apagar arquivos temporários:

```sh
latexmk -c
```

Em todo caso, é possível especificar uma ou mais aulas passando o caminho relativo ao arquivo principal.

Veja mais opções de linha de comando na documentação do latexmk ([PDF](http://linorg.usp.br/CTAN/support/latexmk/latexmk.pdf) ou [texto simples](http://linorg.usp.br/CTAN/support/latexmk/latexmk.txt)).

### Problemas Comuns

1. A compilação falha com a mensagem:

	> Paragraph ended before \FV@BeginScanning was complete. \end{frame}

	Se há um exemplo de código neste *frame*, então deve ser pela falta do atributo *fragile*. Como o Minted usa ambientes *verbatim*, essa declaração é necessária. Corrija assim:

	```latex
	\begin{frame}[fragile]{Título}
	...
	\end{frame}
	```


## Contribuindo com o projeto

Dê uma olhada em [CONTRIBUTING.md](./CONTRIBUTING.md) para mais informações.
