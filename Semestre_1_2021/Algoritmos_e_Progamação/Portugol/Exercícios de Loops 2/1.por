programa
{
	inclua biblioteca Matematica --> math
	/*1 - Faça um programa que leia cinco valores reais e imprima o quadrado de
	cada um deles. Ao fim, imprima também o somatório dos cinco.
*/
	funcao inicio()
	{
		inteiro i
		real num, sum = 0

		para(i = 0; i != 5; i++){
			escreva("Digite um número real: ")
			leia(num)

			sum += num

			escreva("O quadrado desse valor é ",math.potencia(num,2))
			escreva("\n-----------------------------------\n")
		}
		escreva("A soma de todos os valores digitados é de ",sum)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 215; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */