programa
{
	
	funcao inicio()
	{

		inteiro Cigarros, Anos, CDias, TCigarros, TMinutos, THoras, TDias, TAnos, FMinutos, FHoras, FDias, FAnos

		escreva("Cálculo de redução de vida de um fumante" + "\n")
		escreva("Quantos cigarros você fuma por dia? ")
		leia(Cigarros)
		escreva("A quantos anos você fuma? ")
		leia(Anos)
		CDias = Anos * 364
		TCigarros = Cigarros * CDias
		TMinutos = TCigarros * 10
		FMinutos = TMinutos % 60
		THoras = TMinutos / 60
		FHoras = THoras % 24
		TDias = THoras / 24
		FDias = TDias % 364
		FAnos = TDias / 364

		escreva("Devido ao fumo constante de cigarro, você perdeu " + FMinutos + " minutos, " + FHoras + " horas, " + FDias + " dias e " + FAnos + " anos. ")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 701; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */