programa
{
	/*2 -Sabendo que triângulo é uma Figura geométrica de três lados onde cada um dos
	lados é menor que a soma dos outros dois, queremos fazer um algoritmo que receba três valores
	e verifique se eles podem ser os comprimentos dos lados de um triângulo*/
	funcao inicio()
	{
		real lado1, lado2, lado3

		escreva("Digite o lado1: ")
		leia(lado1)
		escreva("Digite o lado2: ")
		leia(lado2)
		escreva("Digite o lado3: ")
		leia(lado3)

		se(lado1 < lado2 + lado3 e lado2 < lado1 + lado3 e lado3 < lado1 + lado2){
			escreva("É um triângulo.")
		}senao{
			escreva("NÃO é um triângulo.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 316; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */