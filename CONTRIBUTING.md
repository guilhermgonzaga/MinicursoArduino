<!-- SPDX-License-Identifier: CC0-1.0 -->

# Guia de contribuição

1. Os arquivos PDF gerados de cada aula não serão versionados.
1. Todo arquivo de texto adicionado deve começar com o [identificador SPDX](https://spdx.dev/ids) `SPDX-License-Identifier: CC0-1.0` seguido de uma linha em branco.
1. Se incluir novos arquivos binários, lembre-se de atualizar o arquivo `.gitattributes` com as extensões.
1. *Sketches* devem compilar com sucesso usando o script fornecido. Se quiser usar apenas um fragmento de código, insira-o diretamente no arquivo Latex com:

	```tex
	\begin{minted}{arduino}
	...
	\end{minted}
	```


## Formatação dos Arquivos de Texto

Considere que *tabs* são configuradas para dois espaços para contar colunas.

|Tipo           |Indentação|*Wrapping*|Máx.<br>colunas|
|:-------------:|:--------:|:--------:|:-------------:|
|`.md`<br>`.tex`|*tabs*    |*Soft*    |--             |
|`.ino`         |*tabs*    |*Hard*    |70             |
|Outros         |--        |*Hard*    |80             |

Obs.: arquivos `.ino` usam *tabs* para que se possa configurar a largura da indentação no pacote Minted.


## Paleta de Cores

É preferível que novos elementos visuais sigam a paleta a seguir.

|Código   |Cor                                                     |Nome no LaTeX     |
|:-------:|:------------------------------------------------------:|:-----------------|
|`#8C7965`|![#8C7965](https://placehold.it/15/8C7965/000000?text=+)|ArduinoBrown      |
|`#E47128`|![#E47128](https://placehold.it/15/E47128/000000?text=+)|ArduinoOrange     |
|`#068183`|![#068183](https://placehold.it/15/068183/000000?text=+)|ArduinoTeal       |
|`#E5AD24`|![#E5AD24](https://placehold.it/15/E5AD24/000000?text=+)|ArduinoYellow     |
|`#BCAC9A`|![#BCAC9A](https://placehold.it/15/BCAC9A/000000?text=+)|ArduinoLightBrown |
|`#ECF1F1`|![#ECF1F1](https://placehold.it/15/ECF1F1/000000?text=+)|ArduinoLightGrey  |
|`#F29C2D`|![#F29C2D](https://placehold.it/15/F29C2D/000000?text=+)|ArduinoLightOrange|
|`#62AEB2`|![#62AEB2](https://placehold.it/15/62AEB2/000000?text=+)|ArduinoLightTeal  |


## TODO

As melhorias listadas serão bem-vindas.

- [ ] Encontrar forma de copiar trechos de código dos slides sem perder a formatação.
- [ ] Introdução à estrutura `switch` na aula 0
- [ ] Experimentar [`latexindent.pl`](https://github.com/cmhughes/latexindent.pl) ou afim para manter consistência de estilo no código LaTeX.
