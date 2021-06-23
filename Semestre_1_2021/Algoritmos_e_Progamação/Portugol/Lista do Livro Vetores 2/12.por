programa
{
	/*12. Faça um programa que receba cinco números e mostre a saída a seguir:
Digite o 1o número 5
Digite o 2o número 3
Digite o 3o número 2
Digite o 4o número 0
Digite o 5o número 2
Os números digitados foram: 5 + 3 + 2 + 0 + 2 = 12
*/
	funcao inicio()
	{
		const inteiro size = 5

		inteiro num[size], sum = 0, i 

		para(i = 0; i < size; i++){
			escreva("Type the ",i+1,"th number: ")
			leia(num[i])
			sum += num[i]
		}

		escreva("The typed numbers were: ")
		para(i = 0; i < size; i++){
			escreva(num[i])
			se(i != size-1){
				escreva(" + ")
			}
		}
		escreva(" = ",sum)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 477; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */