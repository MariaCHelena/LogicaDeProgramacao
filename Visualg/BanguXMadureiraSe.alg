algoritmo "semnome"
var
   Ban, Mad, Dif: Inteiro
inicio
      Escreval ("---------------------------")
      Escreval ("     BANGU X MADUREIRA     ")
      Escreval ("---------------------------")
      Escreva ("Quantos gols do BANGU? ")
      Leia (Ban)
      Escreva ("Quantos gols do MADUREIRA? ")
      Leia (Mad)
      Dif <- (Ban - Mad)
      Se (Mad > Ban) entao
         Dif <- (Dif*(-1))
      FimSe
      Escreval ("---------------------------")
      Escreval ("DIFERENÇA: ", Dif)
      Se (Dif = 0) entao
         Escreval ("STATUS: EMPATE")
      senao
           Se (Dif >= 1) e (Dif < 4) entao
              Escreval ("STATUS: JOGO NORMAL")
           senao
                Se (Dif >= 4) e (Dif < 7) entao
                   Escreval ("STATUS: GOLEADA")
                senao
                   Escreval ("STATUSO: JOGO INCOMUM")
                FimSe
           FimSe
      FimSe
      Se(nao(Dif = 0))entao
           Escreva("GANHADOR: ")
           Se(Mad > Ban) entao
                EscrevaL("MADUREIRA")
           senao
                EscrevaL("BANGU")
           FimSe
      FimSe
      Escreval ("---------------------------")
fimalgoritmo
