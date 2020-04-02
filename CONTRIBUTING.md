# Guia de contribuição

1. Estenda o arquivo `.gitattributes` com novas extensões de arquivos binários que porventura inclua no repositório.
1. Caso inclua novas aulas, declare as mudanças nos arquivos `.gitignore` e `Makefile`.
1. Os arquivos PDF gerados de cada aula não serão versionados.
1. Siga o padrão visual dos slides.

<br>

## Formatação dos Arquivos de Texto

Considere que *tabs* são configuradas para dois espaços.

|Tipo      |Indentação|*Wrapping*|Máx.<br>colunas|
|:--------:|:--------:|:--------:|:-------------:|
|`.ino`    |*tabs*    |*Hard*    |70             |
|`.md`     |*tabs*    |*Soft*    |--             |
|`.tex`    |2 espaços |*Soft*    |--             |
|Outros    |--        |*Hard*    |80             |

Obs.: arquivos `.ino` usam *tabs* para que se possa configurar a largura da indentação no pacote Minted.

<br>

## Paleta de Cores

É preferível que novos elementos visuais sigam a paleta a seguir.

|Código   |Cor                                                     |Nome no LaTeX    |
|:-------:|:------------------------------------------------------:|:----------------|
|`#8C7965`|![#8C7965](https://placehold.it/15/8C7965/000000?text=+)|CustomBrown      |
|`#E47128`|![#E47128](https://placehold.it/15/E47128/000000?text=+)|CustomOrange     |
|`#00878F`|![#00878F](https://placehold.it/15/00878F/000000?text=+)|CustomTeal       |
|`#E5AD24`|![#E5AD24](https://placehold.it/15/E5AD24/000000?text=+)|CustomYellow     |
|`#BCAC9A`|![#BCAC9A](https://placehold.it/15/BCAC9A/000000?text=+)|CustomLightBrown |
|`#ECF1F1`|![#ECF1F1](https://placehold.it/15/ECF1F1/000000?text=+)|CustomLightGrey  |
|`#F29C2D`|![#F29C2D](https://placehold.it/15/F29C2D/000000?text=+)|CustomLightOrange|
|`#62AEB2`|![#62AEB2](https://placehold.it/15/62AEB2/000000?text=+)|CustomLightTeal  |

<br>

## TODO

As melhorias listadas serão bem-vindas.

- [ ] Introdução à estrutura `switch` na aula 0, com arquivo de exemplos próprio na pasta `sketches/introLinguagem`.
- [ ] Regra em `Makefile` para verificar com Arduino CLI se todos os *sketches* compilam.
- [ ] Forma de copiar trechos de código dos slides sem perder a formatação.
- [ ] Experimentar [`latexindent.pl`](https://github.com/cmhughes/latexindent.pl) ou afim para garantir uma convenção de estilo (a definir) do código LaTeX.
