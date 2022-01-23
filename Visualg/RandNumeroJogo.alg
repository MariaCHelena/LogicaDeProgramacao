algoritmo "semnome"
var
  N, R, C : Inteiro
inicio
    EscrevaL("Tente adivinhar o número que eu estou pensando")
    EscrevaL("Você tem 4 chances >:3")
    C <- 1
    N <- Randi(10) + 1
    Enquanto (C <= 4) faca
       Escreva("Sua resposta: ")
       Leia(R)
       EscrevaL("")
       Se (R = N) entao
          EscrevaL("Acertou!!")
          EscrevaL("Parabéns :D")
          C <- C + 4
       senao
          EscrevaL("Você não conseguiu! ")
          C <- C + 1
          Se (C <= 4) entao
             EscrevaL("Tente novamente")
          FimSe
       FimSe
    FimEnquanto
    Se (R <> N) entao
       EscrevaL("Fim do jogo! não foi dessa vez :c")
    FimSe
fimalgoritmo
