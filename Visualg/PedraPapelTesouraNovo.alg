algoritmo "PedraPapelTesouraNovo" //recriei o c�digo pq eu achei um erro muito bobinho
var
   N, C : Inteiro
   Rn, Rc, R: Caractere
inicio
   Repita
      EscrevaL ("Vamos jogar pedra, papel e tesoura!")
      EscrevaL (" [1] Pedra")
      EscrevaL (" [2] Papel")
      EscrevaL (" [3] Tesoura")
      Escreva ("Escolha um: ")
      Leia(N)
      Escolha N
              Caso 1
                   Rn <- ("Pedra")
              Caso 2
                   Rn <- ("Papel")
              Caso 3
                   Rn <- ("Tesoura")
      FimEscolha
      C <- Randi(3) + 1 //fiz com que a m�quina conseguisse tirar de 1 a 3
      Escolha C
              Caso 1
                   Rc <- ("Pedra")
              Caso 2
                   Rc <- ("Papel")
              Caso 3
                   Rc <- ("Tesoura")
      FimEscolha
      EscrevaL(Rn, " x ", Rc) //e coloquei s� um desses
      Se (C = N) entao
         EscrevaL("Empate!")
      senao
           Se (N = 1) e (C = 2) entao
              EscrevaL("Voc� perdeu!")
           senao
                Se (N = 1) e (C = 3) entao
                   EscrevaL("Voc� ganhou!")
                senao
                     Se (N = 2) e (C = 1) entao
                        EscrevaL("Voc� ganhou!")
                     senao
                          Se (N = 2) e (C = 3) entao
                             EscrevaL("Voc� perdeu!")
                          senao
                               Se (N = 3) e (C = 1) entao
                                  EscrevaL("Voc� perdeu!")
                               senao
                                    EscrevaL("Voc� ganhou!")
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
fimalgoritmo //pronto, diminuiu algumas linhas
