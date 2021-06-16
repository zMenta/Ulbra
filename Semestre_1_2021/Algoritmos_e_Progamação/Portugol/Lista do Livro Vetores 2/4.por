programa
{
	/*4. Faça um programa que preencha um vetor com quinze elementos inteiros e verifique a existência de elementos
iguais a 30, mostrando as posições em que apareceram.*/
	funcao inicio()
	{
		inteiro i
		const inteiro size = 15
		inteiro array[size]

		para(i = 0; i < size; i++){
			escreva("Type a number for the ",i,"th position: ")
			leia(array[i])
		}


		escreva("The number 30 shows in the following postions: ")
		para(i = 0; i < size; i++){
			se(array[i] == 30){
				escreva(i,", ")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 524; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */