algoritmo "corrigindoProvas"
var
  Gabarito : vetor[1..5] de caractere
  Prova : vetor[1..5] de caractere
  C, V, Ponto, MaiorN : Inteiro
  MaiorA : caractere
  M : Real
  Nota : vetor[1..5] de inteiro
  Aluno : vetor[1..5] de caractere
inicio
    M <- 0
    EscrevaL("----------------------")
    EscrevaL("       GABARITO")
    EscrevaL("----------------------")
    Ponto <- 0
    Para C <- 1 ate 5 faca
       Escreva("Questão ", C, ": ")
       Leia(Gabarito[C])
    FimPara
    LimpaTela
    Para V <- 1 ate 5 faca
       EscrevaL("----------------------")
       EscrevaL("       ALUNO", V)
       EscrevaL("----------------------")
       Escreva("Nome: ")
       Leia(Aluno[V])
       EscrevaL("RESPOSTAS DADAS: ")
       Ponto <- 0
       Para C <- 1 ate 5 faca
          Escreva("Questão ", C, ": ")
          Leia(Prova[C])
          Se (Prova[C] = Gabarito[C]) entao
              Ponto <- Ponto + 1
          FimSe
       FimPara
       Nota[V] <- Ponto*2
       M <- M + Nota[V]
       Se (Nota[V] > MaiorN) entao
          MaiorN <- Nota[V]
          MaiorA <- Aluno[V]
       FimSe
       LimpaTela
    FimPara
    EscrevaL("----------------------")
    EscrevaL("      NOTAS FINAIS")
    EscrevaL("----------------------")
    Para C <- 1 ate 5 faca
       EscrevaL(Aluno[C]:15,Nota[C])
    FimPara
    EscrevaL("----------------------------------------------")
    M <- M/5
    EscrevaL("Média da turma: ", M)
    EscrevaL("O aluno com maior nota foi o(a): ", MaiorA, ", com", MaiorN, " pontos.")
fimalgoritmo
