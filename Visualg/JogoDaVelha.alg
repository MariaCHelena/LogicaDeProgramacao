algoritmo "semnome"
var

   matriz : vetor[1..3, 1..3]de inteiro
   resps : vetor[1..9] de inteiro
   L, C, N, Resp, vitoria, X, Y, empate : inteiro
   XO : caractere
   
Procedimento RepX()
Inicio
    Para L <- 1 ate 3 faca
       EscrevaL("+---+---+---+")
       Para C <- 1 ate 3 faca //vai escrever o jogo com as formatações, tudo bonitinho
          Se (matriz[L, C] = 11) entao //se o valor atribuido nessa posição for 11, vai ser exibido "X"
             Escreva("| X ")
          senao
             Se (matriz[L, C] = 22) entao //se for 22, vai ser exibido "O"
                Escreva("| O ")
             senao
                Escreva("|", matriz[L, C], " ") //se não for nenhum dos dois, vai ser exibido o valor que está na posição
             FimSe
          FimSe
       FimPara
       Escreva("|")
       EscrevaL()
    FimPara
    EscrevaL("+---+---+---+")
FimProcedimento

Procedimento VerifResp()
Inicio
   Se (Resp < 1) ou (Resp > 9) entao //isso é pra garantir que o valor colocado é válido e não dar erro no programa
      Repita
          EscrevaL("Você não digitou um valor válido! Tente novamente:")
          EscrevaL("(lembre-se que deve colocar um valor entre 1 e 9)")
          Leia(Resp)
      Ate (Resp > 0) e (Resp <= 9)
   FimSe
   Se (resps[Resp] <> 0) entao //resps é o que vamos usar pra guardar os lugares escolhidos
     resps[Resp] <- 0 //a posição já escolhida vai ser marcada com um 0, o que impede de escolherem o mesmo lugar
   senao
     Repita
        Escreva("Você escolheu uma posição já escolhida! Tente de novo: ")
        Leia(Resp) //esse sistema já avisa se o valor é válido ou não antes mesmo de colocá-lo na matriz
     Ate resps[Resp] <> 0
     resps[Resp] <- 0 //quando um valor válido for escolhido, resps vai receber o valor de 0
   FimSe
FimProcedimento

Procedimento VerifJogo() //analisa todas as probabilidades de vitoria e sempre vai correr depois de uma rodada
Inicio
       Se (matriz[1, 1] = matriz[2, 2]) e (matriz[2, 2] = matriz[3, 3]) entao //Diagonal
          vitoria <- vitoria + 1
       senao
          Se (matriz [1, 3] = matriz [2, 2]) e (matriz[2, 2] = matriz[3, 1]) entao //Diagonal
             vitoria <- vitoria + 1
          senao
             Se (matriz [1, 1] = matriz[1, 2]) e (matriz[1, 2] = matriz[1, 3]) entao //horizontal
                vitoria <- vitoria + 1
             senao
                Se (matriz [2, 1] = matriz[2, 2]) e (matriz[2, 2] = matriz [2, 3]) entao //horizontal
                   vitoria <- vitoria + 1
                senao
                   Se (matriz[3, 1] = matriz [3, 2]) e (matriz[3, 2] = matriz[3, 3]) entao //horizontal
                      vitoria <- vitoria + 1
                   senao
                      Se (matriz[1, 1] = matriz[2, 1]) e (matriz[2, 1] = matriz[3, 1]) entao //vertical
                         vitoria <- vitoria + 1
                      senao
                         Se (matriz[1, 2] = matriz[2, 2]) e (matriz[2, 2] = matriz[3, 2]) entao //vertical
                            vitoria <- vitoria + 1
                         senao
                            Se (matriz[1, 3] = matriz[2, 3]) e (matriz[2, 3] = matriz[3, 3]) entao //vertical
                               vitoria <- vitoria + 1
                            FimSe //se três valores seguidos na ordem diagonal, horizontal ou vertical forem iguais, a variável
                         FimSe    //"vitoria" vai receber o valor de 1, e com isso, no final, vai poder ser determinado
                      FimSe       //a hora que o algorítmo deve parar de repetir e assim declarar um vencedor
                   FimSe
                FimSe
             FimSe
          FimSe
       FimSe //no caso de vitória, o último a jogar sempre vai ser o ganhador, então não há a necessidade de analisar o que está na matriz para saber quem ganhou
FimProcedimento

inicio
    //Variáveis que vão servir pra várias coisas mais cedo ou mais tarde
    vitoria <- 0
    X <- -1
    empate <- 1

    Para N <- 1 ate 9 faca
       resps[N] <- 1
    FimPara //uso o N pra auxiliar na hora de atribuir valor pro vetor "resps", mas depois coloco o valor dele novamente como 1
    N <- 1
    
    Para L <- 1 ate 3 faca //uso o N novamente pra atribuir o valor, dessa vez pra matriz
       Para C <- 1 ate 3 faca
          matriz[L, C] <- N
          N <- N + 1
       FimPara
    FimPara

    Para L <- 1 ate 3 faca //isso é pra escrever a matriz na tela, junto com a formatação bonitinha do jogo
       EscrevaL("+---+---+---+")
       Para C <- 1 ate 3 faca
          Escreva("|", matriz[L, C], " ")
       FimPara
       Escreva("|")
       EscrevaL()
    FimPara
    EscrevaL("+---+---+---+")
    
    //a partir daqui o algoritmo do jogo começa a funcionar de verdade
    
    Enquanto (Vitoria = 0) e (empate <= 9) faca //Vai repetir até alguém ganhar ou empatar o jogo (que é depois de nove rodadas, por isso o <= 9)
       X <- X*-1 //o valor de Y vai variar entre 3 e 1, então toda vez que o algoritmo repetir, vai ser atribuido um desses valores e depois o outro
       Y <- X + 2
       Se (Y = 3) entao//isso serve pra alternar entre "X" e "O" na hora de jogar
          XO <- "X" //na primeira vez que a conta roda, Y recebe o valor de 3, e como X é o primeiro a ser jogado, 3 vai ser igual a X
       senao
          Xo <- "O" //na segunda vez, Y vai receber o valor de 1, então O vai ser igual a 1
       FimSe
       EscrevaL("Vai jogar [", XO,"] em qual posição? ")
       Leia(Resp)
       VerifResp()//vai ler a resposta, e antes mesmo de colocar no programa vai verificar se esse valor já foi pego ou não
       Se (XO = "X") entao //com o auxílio da variável "XO", a gente vai saber se foi escolhido um "X" ou um "O" para ser colocado no lugar
          Para L <- 1 ate 3 faca
             Para C <- 1 ate 3 faca
                Se (matriz[L, C] = Resp) entao
                   matriz[L, C] <- 11 //se for X, na matriz, o valor atribuido vai ser 11, mas esse valor não será exibido
                FimSe
             FimPara
          FimPara
       senao
          Para L <- 1 ate 3 faca
             Para C <- 1 ate 3 faca
                Se (matriz[L, C] = Resp) entao
                   matriz[L, C] <- 22 //se for O, o valor vai ser 22 e, do mesmo modo, também não será exibido
                FimSe
             FimPara
          FimPara
       FimSe
       VerifJogo() //esse procedimento verifica se, com as escolhas de até agora, o jogo já foi ganho por alguém
       LimpaTela
       RepX() //finalmente, vai ser exibido o estado do jogo atualmente, os lugares escolhidos e por quem foram escolhidos
       empate <- empate + 1 //isso vai determinar a hora que o algorítmo deve parar se for situação de empate
    FimEnquanto
    Se (Vitoria = 1) entao //a vitória deve ser verificada primeiro, porque caso alguém ganhe na última rodada, o jogo mesmo assim declararia como empate
       EscrevaL("[", XO, "] venceu!")
    senao //se, depois de passada pela análide do procedimento, não foi constatado nenhum vencedor (ou seja, vitoria continua sendo igual a 0), é empate
       EscrevaL("Empate")
    FimSe // :DDD
    
    //eventualmente gostaria de reescrever esse algorítmo, porque eu sinto que poderia fazê-lo com menos linhas e de forma mais prática
    //mas agora, essa foi a melhor forma que achei de criar um algoritmo que permite você jogar o jogo da velha
    //quero tentar também criar uma forma de fazer o jogador ter a opção de jogar contra o computador
fimalgoritmo
