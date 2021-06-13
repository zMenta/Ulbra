programa
{
	/*5. Faça um programa que preencha dois vetores, X e Y, com dez números inteiros cada. Calcule e mostre
os seguintes vetores resultantes:
■■ A união de X com Y
(todos os elementos de X e de Y sem repetições).

■■ A diferença entre X e Y
(todos os elementos de X que não existam em Y, sem repetições).

■■ A soma entre X e Y
(soma de cada elemento de X com o elemento de mesma posição em Y).

■■ O produto entre X e Y
(multiplicação de cada elemento de X com o elemento de mesma posição em Y).

■■ A intersecção entre X e Y
(apenas os elementos que aparecem nos dois vetores, sem repetições).*/
	funcao inicio()
	{
		inteiro i, j , u = 0 // i , j and u are counters
		inteiro array_x[10] = {3,8,4,2,1,6,8,7,11,9}
		inteiro array_y[10] = {2,1,5,12,3,0,1,4,5,6}

		//Union of X and Y (XUY)
		//supposed to return: {3,8,4,2,1,6,7,11,9,5,12,0}

		inteiro array_xuy[20] // 20 because it's the max size possibility.

		//Adds non repeated numbers in array_xuy from the array_x.
		para(i = 0; i != 10; i++){
			j = 0 
			
			// Verifies if there's repeated numbers in the array_xuy of the array_x.
			enquanto(j < u e array_x[i] != array_xuy[j]){
				j++
			}

			// If j is less than u. That means that a repeated number was found. 
			// Then don't add the number.
			se(j >= u){
				array_xuy[u] = array_x[i]
				
				u++ // U is working as the position of the array_xuy. When a number is added, it moves to the next position.
			}
			
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1101; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array_xuy, 28, 10, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */