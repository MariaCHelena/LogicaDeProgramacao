algoritmo "semnome"
var
   N, C : Inteiro
inicio
      EscrevaL ("Vamos jogar pedra, papel e tesoura!")
      EscrevaL (" [0] Pedra")
      EscrevaL (" [1] Papel")
      EscrevaL (" [2] Tesoura")
      Escreva ("Escolha um número: ")
      Leia(N)
      Se (N = 0) entao
         EscrevaL("Você escolheu Pedra!")
      senao
           Se (N = 1) entao
                EscrevaL("Você escolheu Papel!")
           senao
                EscrevaL("Você escolheu Tesoura!")
           FimSe
      FimSe
      C <- Randi(2)
      Se (C = 0) entao
         EscrevaL("Eu escolhi Pedra!")
      senao
           Se (C = 1) entao
                EscrevaL("Eu escolhi Papel!")
           senao
                EscrevaL("Eu escolhi Tesoura!")
           FimSe
      FimSe
      Se (C = N) entao
         EscrevaL("Empate!")
      senao
           Se (N = 0) e (C = 1) entao
              EscrevaL("Pedra x Papel")
              EscrevaL("Você perdeu!")
           senao
                Se (N = 0) e (C = 2) entao
                   EscrevaL("Pedra x Tesoura")
                   EscrevaL("Você ganhou!")
                senao
                     Se (N = 1) e (C = 0) entao
                        EscrevaL("Papel x Pedra")
                        EscrevaL("Você ganhou!")
                     senao
                          Se (N = 1) e (C = 2) entao
                             EscrevaL("Papel x Tesoura")
                             EscrevaL("Você perdeu!")
                          senao
                               Se (N = 2) e (C = 0) entao
                                  EscrevaL("Tesoura x Pedra")
                                  EscrevaL("Você perdeu!")
                               senao
                                    EscrevaL("Tesoura x Papel")
                                    EscrevaL("Você ganhou!")
                               FimSe
                          FimSe
                     FimSe
                FimSe
           FimSe
      FimSe
      
fimalgoritmo
