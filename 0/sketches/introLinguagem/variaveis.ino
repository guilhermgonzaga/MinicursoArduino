@\textcolor{CustomTeal}{\textbf{tipo}}@ identificador;
@\textcolor{CustomTeal}{\textbf{tipo}}@ identificador = @\textcolor{CustomBrown}{valor\_inicial}@;

unsigned int natural = 10;
natural = -10;  @$\leftarrow$ \alert{NÃO PODE}@

int inteiro = 10;
inteiro = -10;  @$\leftarrow$ \alert{PODE SIM}@

const String senha = "Fantasma!";
senha = "Essa é a senha!";       @$\leftarrow$ \alert{NÃO PODE}@

auto til = '~';   // char

auto dez = 10;    // int

auto phi = 1.618; // double

String mensagem = "Programar é bacana!";        @$\leftarrow$ \alert{NORMAL}@

auto mensagem = String("Programar é bacana!");  @$\leftarrow$ \alert{PODE SER}@

auto mensagem = "Programar é bacana!";          @$\leftarrow$ \alert{MELHOR NÃO}@
