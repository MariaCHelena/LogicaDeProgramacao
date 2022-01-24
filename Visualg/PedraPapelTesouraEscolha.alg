algoritmo "semnome" //eu fiz dois algoritmos diferentes pro mesmo problema, mas com algumas alterações no funcionamento
var
   N, C : Inteiro
   Rn, Rc, R: Caractere //aqui eu usei o EscolhaCaso, além de ter usado as variáveis Rn e Rc
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
              EscrevaL("Voc� perdeu!")
           senao
                Se (N = 0) e (C = 2) entao
                   EscrevaL(Rn, " x ", Rc)
                   EscrevaL("Voc� ganhou!")
                senao
                     Se (N = 1) e (C = 0) entao
                        EscrevaL(Rn, " x ", Rc)
                        EscrevaL("Voc� ganhou!")
                     senao
                          Se (N = 1) e (C = 2) entao
                             EscrevaL(Rn, " x ", Rc)
                             EscrevaL("Voc� perdeu!")
                          senao
                               Se (N = 2) e (C = 0) entao
                                  EscrevaL(Rn, " x ", Rc)
                                  EscrevaL("Voc� perdeu!")
                               senao
                                    EscrevaL(Rn, " x ", Rc)
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
Ate (R = "N") //eu acho que nesse caso, ficou um pouco mais "simples" pq eu só escrevia as variáveis, não tinha que escrever resposta por resposta, só o nome da variável
fimalgoritmo //mas o algoritmo ficou um pouco maior, então acho que pra esse caso o primeiro algoritmo foi um pouco mais eficiente
