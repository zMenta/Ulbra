programa
{
	/*15. Faça um programa que receba o nome de oito clientes e armazene-os em um vetor. Em um segundo vetor,
armazene a quantidade de DVDs locados em 2011 por cada um dos oito clientes. Sabe-se que, para cada
dez locações, o cliente tem direito a uma locação grátis. Faça um programa que mostre o nome de todos
os clientes, com a quantidade de locações grátis a que ele tem direito.*/
	funcao inicio()
	{
		const inteiro size = 2
		cadeia name[size]
		inteiro dvd[size]

		para(inteiro i = 0; i < size; i++){
			escreva("Type your name: ")
			leia(name[i])
			escreva("The amount of allocated DVD's: ")
			leia(dvd[i])
		}

		para(inteiro i = 0; i < size; i++){
			escreva("Name: ",name[i]," | DVD's: ",dvd[i]," | The amount of dvd to rent for free: ",dvd[i]/10)
			escreva("\n---------------------------------------------------------------------------------\n")
		}

	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 570; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */