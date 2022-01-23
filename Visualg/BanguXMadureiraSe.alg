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
      Dif <- (Ban - Mad) //já vou colocando a diferença de gols pra tirar isso do caminho
      Se (Mad > Ban) entao //verifica se madureira (que recebeu o sinal negativo ali em cima) fez mais gols que bangu
         Dif <- (Dif*(-1)) //se sim, o dif vai receber um sinal negativo, então eu mudo o sinal de dif multiplicando ele por -1
      FimSe
      Escreval ("---------------------------")
      Escreval ("DIFERENÇA: ", Dif)
      Se (Dif = 0) entao //vai vendo qual é o tamanho da diferença entre cada um dos casos e vai dando um status pra ele
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
      Se(Dif <> 0)entao //a dif tem que ser diferente de 0 senão é empate :p
           Escreva("GANHADOR: ")
           Se(Mad > Ban) entao
                EscrevaL("MADUREIRA")
           senao
                EscrevaL("BANGU")
           FimSe
      FimSe //isso foi só um complementinho, mas não é realmente necessário já que de pra saber quem ganhou e perdeu só de olhar o placar
      Escreval ("---------------------------")
fimalgoritmo
