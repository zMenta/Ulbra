programa
{
	/*7. Faça um programa que preencha um vetor com dez números reais, calcule e mostre a quantidade de números
negativos e a soma dos números positivos desse vetor.*/
	funcao inicio()
	{
		const inteiro size = 3
		real num[size]

		inteiro neg = 0, i 
		real posi_sum = 0

		para(i = 0; i < size; i++){
			escreva("Type a number: ")
			leia(num[i])

			se(num[i] > 0){
				posi_sum += num[i]
			}senao{
				neg++
			}
		}

		escreva("Total of negative numbers: ",neg)
		escreva("\nSum of all positive numbers: ",posi_sum)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 435; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */