algoritmo "DissecandoMatrizes"
var
  matriz : vetor[1..4, 1..4]de inteiro
  L, C, Resp : Inteiro
  
Procedimento MenuDeOpcoes()
inicio

   EscrevaL("============================")
   EscrevaL("       MENU DE OPÇÕES")
   EscrevaL("============================")
   EscrevaL("[1] Mostrar a matriz")
   EscrevaL("[2] Mostrar a diagonal principal")
   EscrevaL("[3] Mostrar triangulo superior")
   EscrevaL("[4] Mostrar triangulo inferior")
   EscrevaL("[5] Sair")
   Escreva("========== OPÇÃO: ")

FimProcedimento

inicio
    Para L <- 1 ate 4 faca
       Para C <- 1 ate 4 faca
          Escreva("Digite o valor da linha ", L, " coluna ", C, ": ")
          Leia(matriz[L, C])
       FimPara
    FimPara
    LimpaTela
    
    Repita
       MenuDeOpcoes()
       Leia(Resp)
       Se (Resp <> 1) e (Resp <> 2) e (Resp <> 3) e (Resp <> 4) e (Resp <> 5) entao
          Repita
             Escreva("Você digitou um valor inválido! Digite novamente: ")
             Leia(Resp)
          Ate (Resp = 1) ou (Resp = 2) ou (Resp = 3) ou (Resp = 4) ou (Resp = 5)
       FimSe
       LimpaTela
       Se (Resp <> 5) entao
          Escolha Resp
             Caso 1
             LimpaTela
                Para L <- 1 ate 4 faca
                   Para C <- 1 ate 4 faca
                      Escreva(matriz[L, C])
                   FimPara
                   EscrevaL()
                FimPara

             Caso 2
                Para L <- 1 ate 4 faca
                   Para C <- 1 ate 4 faca
                      Se (L = C) entao
                         Escreva(matriz[L, C])
                      senao
                         Escreva("  ")
                      FimSe
                   FimPara
                   EscrevaL()
                FimPara

             Caso 3
                Para L <- 1 ate 4 faca
                   Para C <- 1 ate 4 faca
                      Se (L = C) entao
                         Escreva("  ")
                      senao
                         Se (C > L) entao
                            Escreva(matriz[L, C])
                         senao
                            Escreva("  ")
                         FimSe
                      FimSe
                   FimPara
                   EscrevaL()
                FimPara

             Caso 4
                Para L <- 1 ate 4 faca
                   Para C <- 1 ate 4 faca
                      Se (L = C) entao
                         Escreva("  ")
                      senao
                         Se (C < L) entao
                            Escreva(matriz[L, C])
                         senao
                            Escreva("  ")
                         FimSe
                      FimSe
                    FimPara
                    EscrevaL()
                 FimPara
          FimEscolha
       FimSe
    Ate (Resp = 5)
fimalgoritmo
