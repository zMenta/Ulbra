programa
{
/*5. Faça um programa que preencha dois vetores, X e Y, com dez números inteiros cada. Calcule e mostre
os seguintes vetores resultantes:


■■ O produto entre X e Y
(multiplicação de cada elemento de X com o elemento de mesma posição em Y).
*/
	funcao inicio()
	{
		inteiro i
		inteiro array_x[10] = {3,8,4,2,1,6,8,7,11,9}
		inteiro array_y[10] = {2,1,5,12,3,0,1,4,5,6}
		inteiro multi_xy[10]

		para(i = 0; i < 10; i++){
			multi_xy[i] = array_x[i] * array_y[i]
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 489; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {multi_xy, 15, 10, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */