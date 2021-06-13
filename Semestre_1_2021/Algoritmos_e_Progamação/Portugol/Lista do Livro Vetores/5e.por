programa
{
	/*5. Faça um programa que preencha dois vetores, X e Y, com dez números inteiros cada. Calcule e mostre
os seguintes vetores resultantes:

■■ A intersecção entre X e Y
(apenas os elementos que aparecem nos dois vetores, sem repetições).*/
	funcao inicio()
	{
		logico found, repeated
		inteiro i, j ,k, inter = 0 // i , j and inter are counters
		inteiro array_x[10] = {3,3,4,2,1,6,8,7,11,9}
		inteiro array_y[10] = {2,1,5,12,3,0,1,4,5,6}
		inteiro inter_xy[10]
		
		para(i = 0; i != 10; i++){
			found = falso
			j = 0
			enquanto(nao found e j < 10){
				se(array_x[i] == array_y[j]){
					found = verdadeiro
				}senao{
					j++
				}
			}

			se(found){
				
				repeated = falso
				k = 0
				enquanto(k < 10 e nao repeated){
					se(array_y[j] != inter_xy[k]){
						k++
					}senao{
						repeated = verdadeiro
					}
				}

				se(nao repeated){
					inter_xy[inter] = array_y[j]
					inter++
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
 * @POSICAO-CURSOR = 676; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {j, 11, 13, 1}-{inter, 11, 19, 5}-{array_x, 12, 10, 7}-{array_y, 13, 10, 7}-{inter_xy, 14, 10, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */