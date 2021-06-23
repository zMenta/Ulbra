programa
{
	/*
10. Faça um programa que preencha um vetor com dez números inteiros e um segundo vetor com cinco nú-
meros inteiros, calcule e mostre dois vetores resultantes. O primeiro vetor resultante será composto pela soma
de cada número par do primeiro vetor somado a todos os números do segundo vetor. O segundo vetor resultante
será composto pela quantidade de divisores que cada número ímpar do primeiro*/
	funcao inicio()
	{
		inteiro a1[10] = {4, 7, 5, 8, 2, 15, 9, 6, 10, 11}
		inteiro a2[5] = {3,4,5,8,2}

		inteiro r1[10] //r = result | a = array
		inteiro r2[10]
		inteiro p_r1 = 0 // p = position
		inteiro p_r2 = 0, qt // qt = quantity 
		

		para(inteiro i = 0; i < 10; i++){

			se(a1[i] % 2 == 0){
				r1[p_r1] = a1[i]
				para(inteiro j = 0; j < 5; j++){
					r1[p_r1] += a2[j] 
				}
				p_r1 += 1
			}senao{
				qt = 0
				para(inteiro j = 0; j < 5; j++){
					se(a1[i] % a2[j] == 0){
						qt += 1
					}
				}
				r2[p_r2] = qt
				p_r2 += 1
			}
			
		}

		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 911; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {a1, 10, 10, 2}-{a2, 11, 10, 2}-{r1, 13, 10, 2}-{r2, 14, 10, 2}-{p_r1, 15, 10, 4}-{i, 19, 15, 1}-{j, 23, 17, 1}-{j, 29, 17, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */