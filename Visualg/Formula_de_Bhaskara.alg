algoritmo "F�rmula de Bhaskara"
var
//um dos meus primeros c�digos
   X, Y, H: Real
//separar pra n�o confundir as vari�veis
   A, B, C, F: Inteiro
   D, Rpositivo, Rnegativo: Real
inicio
 //Primeiro tentando fazer Pit�goras
       Escreva ("Insira o primeiro Cateto: ")
       Leia (X)
       Escreva ("Insira o segundo Cateto: ")
       Leia (Y)
       H <- RaizQ(X^2 + Y^2)
       Escreval ("A hipotenusa desses catetos � ", H:6:2)
 //Agora vamos para a dita cuja
       Escreva ("Insira o valor de A: ")
       Leia (A)
       Escreva ("Insira o valor de B: ")
       Leia (B)
       Escreva ("Insira o valor de C: ")
       Leia (C)
       D <- B^2 - 4*A*C
       Rpositivo <- (-B+Raizq(D))/(2*A)
       Rnegativo <- (-B-Raizq(D))/(2*A)
       Escreva ("Os resultados obtidos s�o: ", Rpositivo:6:2, " e ", Rnegativo:6:2)
 //eeeeeeeeeeeeeeeeeeeeeeee
 //Eu usei os valores 2, -3 e -8 para A, B e C, respectivamente, para testar o programa
 //Os resultados, com essas vari�veis, seriam: 2 e -1,333333...
fimalgoritmo
