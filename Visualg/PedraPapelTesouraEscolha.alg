algoritmo "semnome"
var
   N, C : Inteiro
   Rn, Rc, R: Caractere
inicio
Repita
      EscrevaL ("Vamos jogar pedra, papel e tesoura!")
      EscrevaL (" [0] Pedra")
      EscrevaL (" [1] Papel")
      EscrevaL (" [2] Tesoura")
      Escreva ("Escolha um: ")
      Leia(N)
      Escolha N
              Caso 0
                   Rn <- ("Pedra")
              Caso 1
                   Rn <- ("Papel")
              Caso 2
                   Rn <- ("Tesoura")
      FimEscolha
      C <- Randi(2)
      Escolha C
              Caso 0
                   Rc <- ("Pedra")
              Caso 1
                   Rc <- ("Papel")
              Caso 2
                   Rc <- ("Tesoura")
      FimEscolha
      Se (C = N) entao
         EscrevaL(Rn, " x ", Rc)
         EscrevaL("Empate!")
      senao
           Se (N = 0) e (C = 1) entao
              EscrevaL(Rn, " x ", Rc)
              EscrevaL("Você perdeu!")
           senao
                Se (N = 0) e (C = 2) entao
                   EscrevaL(Rn, " x ", Rc)
                   EscrevaL("Você ganhou!")
                senao
                     Se (N = 1) e (C = 0) entao
                        EscrevaL(Rn, " x ", Rc)
                        EscrevaL("Você ganhou!")
                     senao
                          Se (N = 1) e (C = 2) entao
                             EscrevaL(Rn, " x ", Rc)
                             EscrevaL("Você perdeu!")
                          senao
                               Se (N = 2) e (C = 0) entao
                                  EscrevaL(Rn, " x ", Rc)
                                  EscrevaL("Você perdeu!")
                               senao
                                    EscrevaL(Rn, " x ", Rc)
                                    EscrevaL("Você ganhou!")
                               FimSe
                          FimSe
                     FimSe
                FimSe
           FimSe
      FimSe
      Escreva("Quer continuar? [S/N] ")
      Leia(R)
      LimpaTela
Ate (R = "N")
fimalgoritmo
