programa
{
	/*5.	Escrever um programa que leia, valores inteiros, até ser lido o
	valor-99. Quando isso acontecer o programa deverá escrever a soma e
	a média dos valores lidos.*/
	funcao inicio()
	{
		inteiro num = 0, i = 1, soma = 0

		enquanto(num != -99){
			escreva("Digite um número: ")
			leia(num)

			se(num != -99){
				soma+=num
				i+=1
			}
			
		}
		
		escreva("A soma de todos os números digitados é ", soma)
		escreva("\nMédia dos valores digitados: ", soma/i)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 484; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */