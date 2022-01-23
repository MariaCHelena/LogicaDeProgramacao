programa
{
	
	funcao inicio()
	{
		
		//João fez uma pesquisa em seu site de busca predileto, e encontrou a resposta que estava procurando no terceiro link listado. Além disso, ele viu, pelo site, que t pessoas já haviam clicado neste link antes. João havia lido anteriormente, também na Internet, que o número de pessoas que clicam no segundo link listado é o dobro de número de pessoas que clicam no terceiro link listado. Nessa leitura, ele também descobriu que o número de pessoas que clicam no segundo link é a metade do número de pessoas que clicam no primeiro link. João está intrigado para saber quantas pessoas clicaram no primeiro link da busca, e, como você é amigo dele, quer sua ajuda nesta tarefa.
		//primeiro link - 4x
		//segundo link - 2x
		//terceiro link - x	
		//"quantas pessoas clicaram no primeiro link da busca", sendo que ele clicou no terceiro.
	
		inteiro t
		cadeia Resp
	
		faca {
			escreva("Quantas pessoas clicaram no terceiro link? ")
			leia(t)
			escreva((t * 4), " pessoas clicaram no primeiro link.")
			escreva("\n", "Quer tentar de novo? [S/N] ")
			leia(Resp)
			limpa()
		} enquanto (Resp=="S")
		//não tem um comando pra reler Resp caso digitem uma resposta diferente de "S" e "N", então se digitarem algo diferente disso o programa vai só encerrar.
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1296; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */