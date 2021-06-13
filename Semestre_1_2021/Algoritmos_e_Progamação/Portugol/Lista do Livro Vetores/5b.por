programa
{
	/*5. Faça um programa que preencha dois vetores, X e Y, com dez números inteiros cada. Calcule e mostre
os seguintes vetores resultantes:

■■ A diferença entre X e Y
(todos os elementos de X que não existam em Y, sem repetições).

*/
	funcao inicio()
	{
		inteiro i, j , d = 0, k // i , j, d and k are counters. 
		inteiro array_x[10] = {3,8,4,2,1,6,8,7,11,9}
		inteiro array_y[10] = {2,1,5,12,3,0,1,4,5,6}
		inteiro d_xy[20]

		para(i = 0; i != 10; i++){
			
			j = 0
			//Verifies if the array_x index have it on the array_y.
			enquanto(j != 10 e array_x[i] != array_y[j]){
				j++
			}

			//If j >= 10, that means that the index of array_x does not exist on the array_y.
			se(j >= 10){
				k = 0
				enquanto(k < d e array_x[i] != d_xy[k]){
					k++
				}
				
				se(k >= d){
					d_xy[d] = array_x[i]
					d++
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 829; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {d_xy, 15, 10, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */