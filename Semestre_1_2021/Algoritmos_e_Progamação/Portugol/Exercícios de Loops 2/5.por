programa
{
	/*5 - Na matemática, o fatorial de um número natural n é dado pelo produto
	de todos os números inteiros e positivos menores ou iguais a n.
	Por exemplo, o fatorial de 5 é dado por 5*4*3*2*1.
	Desenvolva um programa que calcule o fatorial de um número dado como entrada.*/
	funcao inicio()
	{
		inteiro num, i, fat

		escreva("Digite um valor para ser impresso seu fatorial: ")
		leia(num)
		fat = num

		
		
		para(i = 1; i != num; i++){

			fat = fat*(num-i)
			
		}
		escreva("\nFatorial de ",num," é igual à ",fat,"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 481; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */