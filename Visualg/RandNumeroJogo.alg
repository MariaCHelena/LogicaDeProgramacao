algoritmo "Jogo de adivinhar o número"
var
  N, R, C : Inteiro
inicio
    EscrevaL("Tente adivinhar o número que eu estou pensando")
    EscrevaL("Você tem 4 chances >:3")
    C <- 1 //serve pra contar as chances que o jogador tem, ou seja, quantas vezes o algoritmo vai rodar
    N <- Randi(10) + 1 //o + 1 é pro número não ser 0 e poder ser 10
    Enquanto (C <= 4) faca
       Escreva("Sua resposta: ")
       Leia(R) //toda vez que o enquanto roda é obtido um R diferente de acordo com o que o usuário digita
       EscrevaL("")
       Se (R = N) entao //verifica se N (que é o número que a máquina escolheu) é igual ao número que o usuário digitou
          EscrevaL("Acertou!!") //se sim, aparece essa mensagem
          EscrevaL("Parabéns :D")
          C <- C + 4 //faz o C ser maior que 4 então "estoura" o enquanto e termina o jogo
       senao //se não, aparece essa mensagem e repete o algoritmo (se C for menor ou igual a 4)
          EscrevaL("Você não conseguiu! ")
          C <- C + 1
          Se (C <= 4) entao //se C for maior que 4 você não vai poder tentar novamente, o algoritmo vai só se encerrar
             EscrevaL("Tente novamente") //por isso esse comando, pra mostrar pro usuário que ele pode tentar novamente
          FimSe
       FimSe
    FimEnquanto
    Se (R <> N) entao //se o R for diferente do N essa mensagem vai aparecer
       EscrevaL("Fim do jogo! não foi dessa vez :c")
    FimSe
fimalgoritmo
