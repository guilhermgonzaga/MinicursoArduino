# Guia de contribuição

1. Nos arquivos de texto em geral, use 2 espaços para indentação, exceto nos
	arquivos `.ino`, em que se usa *tabs*.
1. As linhas em arquivos `.tex` devem ter no máximo 90 caracteres. Os demais
	arquivos de texto devem ter 80 caracteres ou menos.
1. Adicione arquivos de texto à *staging area* com a opção `--renormalize` para
	garantir consistência entre quebras de linha.
1. Estenda o arquivo `.gitattributes` com novas extensões
	de arquivos binários que porventura inclua no repositório.
1. Tente seguir o padrão visual dos slides.


## Formatação dos Arquivos de Texto

|Tipo  |Máx. colunas|Indentação|
|:----:|:----------:|:--------:|
|Geral |80			|espaços   |
|`.tex`|90			|espaços   |
|`.ino`|70			|*tabs*    |

Arquivos `.ino` usam tabs para que se possa configurar a largura da indentação
no pacote minted.


## Paleta de Cores

É preferível que novos elementos visuais tenham ao menos uma das cores a seguir.

|Código  |Cor         |
|:------:|:-----------|
|`E5AD24`|Amarelo     |
|`00878F`|Azul        |
|`62AEB2`|Azul claro  |
|`ECF1F1`|Cinza       |
|`E47128`|Laranja     |
|`8C7965`|Marrom      |
|`BCAC9A`|Marrom claro|
