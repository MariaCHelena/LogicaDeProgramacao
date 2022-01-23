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
      Escolha Dif
              Caso 0
                   Escreval ("STATUS: EMPATE")
              Caso 1, 2, 3
                   Escreval ("STATUS: JOGO NORMAL")
              Caso 4, 5, 6, 7
                   Escreval ("STATUS: GOLEADA")
              OutroCaso
                       Escreval ("STATUS: CASO INCOMUM")
      FimEscolha
      Se(nao(Dif = 0))entao
           Escreva("GANHADOR: ")
           Se(Mad > Ban) entao
                EscrevaL("MADUREIRA")
           senao
                EscrevaL("BANGU")
           FimSe
      FimSe
      Escreval ("---------------------------") //o programa tem 3 linhas a menos quando uso o EscolhaCaso... Talvez assim seja um pouco mais prático do que com o Se..FimSe
fimalgoritmo
