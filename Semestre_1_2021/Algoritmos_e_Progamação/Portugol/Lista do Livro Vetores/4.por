programa
{
	/*4. Faça um programa que preencha um vetor com oito números inteiros, calcule e mostre dois vetores
resultantes. O primeiro vetor resultante deve conter os números positivos e o segundo, os números ne-
gativos. Cada vetor resultante vai ter, no máximo, oito posições, que não poderão ser completamente
utilizadas.*/
	funcao inicio()
	{
		inteiro array[8], posi[8], neg[8], i, cont_neg = 0, cont_posi = 0

		para(i = 0; i != 8; i++){
			escreva("Digite um número inteiro: ")
			leia(array[i])
		}

		//Verifica quais números do array são positivous ou negativos. Adiciona no array correspondente
		para(i = 0; i != 8; i++){
			
			se(array[i] >= 0){
				posi[cont_posi] = array[i]
				cont_posi++
			}senao{
				neg[cont_neg] = array[i]
				cont_neg++
			}
		}

		escreva("====================================\n")
		escreva("Números positivos digitados: ")
		para(i = 0; i != cont_posi; i++){
			escreva(posi[i]," ,")
		}
		escreva("\n====================================\n")
		escreva("Números negativos digitados: ")
		para(i = 0; i != cont_neg; i++){
			escreva(neg[i]," ,")
		}
		escreva("\n====================================\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1150; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array, 9, 10, 5}-{posi, 9, 20, 4}-{neg, 9, 29, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */