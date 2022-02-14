<!-- SPDX-License-Identifier: CC0-1.0 -->

# Guia de contribuição

1. Os slides gerados não serão versionados.
1. Todo arquivo de texto adicionado deve começar com o [identificador SPDX](https://spdx.dev/ids) `SPDX-License-Identifier: CC0-1.0` seguido de uma linha em branco.
1. Se incluir novos arquivos binários, lembre-se de atualizar o arquivo `.gitattributes` com as extensões.
1. Arquivos que compõem os slides, como `*.tex` ou nas pastas `sketches` e `graphics`, não devem ter nomes com espaços, pois o LaTeX não lida bem com esses caminhos de arquivos.
1. *Sketches* devem compilar com sucesso -- use o script fornecido (`compile-sketches`).

	Caso queira um fragmento de código ou pseudocódigo nos slides, insira-o diretamente no texto e, neste caso apenas, não se esqueça de marcar o *frame* como `fragile`, da seguinte forma:

	```latex
	\begin{frame}[fragile]{...}
	...
		\begin{minted}{arduino}
		...
		\end{minted}
	...
	\end{frame}
	```

## Formatação dos Arquivos de Texto

Considere que *tabs* valem dois espaços para contar colunas.

|Tipo           |Indentação|*Wrapping*|Máx.<br>colunas|
|:-------------:|:--------:|:--------:|:-------------:|
|`.md`<br>`.tex`|*tabs*    |*Soft*    |--             |
|`.ino`         |*tabs*    |*Hard*    |70             |
|Outros         |--        |*Hard*    |80             |

Obs.: arquivos `.ino` usam *tabs* para que se possa configurar a largura da indentação no pacote Minted.

## Paleta de Cores

É preferível que novos elementos visuais sigam a paleta a seguir.

|Código |Cor                                               |Nome no LaTeX     |
|:-----:|:------------------------------------------------:|:-----------------|
|#8C7965|![ ](https://via.placeholder.com/15/8C7965?text=+)|ArduinoBrown      |
|#E47128|![ ](https://via.placeholder.com/15/E47128?text=+)|ArduinoOrange     |
|#068183|![ ](https://via.placeholder.com/15/068183?text=+)|ArduinoTeal       |
|#E5AD24|![ ](https://via.placeholder.com/15/E5AD24?text=+)|ArduinoYellow     |
|#BCAC9A|![ ](https://via.placeholder.com/15/BCAC9A?text=+)|ArduinoLightBrown |
|#ECF1F1|![ ](https://via.placeholder.com/15/ECF1F1?text=+)|ArduinoLightGrey  |
|#F29C2D|![ ](https://via.placeholder.com/15/F29C2D?text=+)|ArduinoLightOrange|
|#62AEB2|![ ](https://via.placeholder.com/15/62AEB2?text=+)|ArduinoLightTeal  |

## TODO

As melhorias listadas serão bem-vindas.

- Encontrar forma de obter trechos de código dos slides sem perder a indentação.
- Introdução à estrutura `switch` na aula 0.
- Conteúdo sobre DHT11/DHT22 com média móvel ou filtro das medidas.
