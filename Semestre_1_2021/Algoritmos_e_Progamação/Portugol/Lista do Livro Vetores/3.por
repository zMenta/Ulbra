programa
{
	/*3. Faça um programa que preencha dois vetores de dez elementos numéricos cada um e mostre o vetor resultante
da intercalação deles.*/
	funcao inicio()
	{
		inteiro array1[10], array2[10], array3[20]
		inteiro i, count = 10, j = 1, k = 0

		// For testisg. array1[10] = {3,5,4,2,2,5,3,2,5,9}, array2[10] = {7,15,20,0,18,4,55,23,8,6}
		
		
		//Leitura de dados do primeiro array
		para(i = 0; i != count; i++){
			escreva("Digite um número inteiro da posição ",i," do array 1: ")
			leia(array1[i])
		}

		//Leitura de dados do segundo array
		para(i = 0; i != count; i++){
			escreva("Digite um número inteiro da posição ",i," do array 2: ")
			leia(array2[i])
		}
		

		//intercala os dados do array1 e array2 no array3.
		para(i = 0; i != count; i++){
			
			array3[k] = array1[i]
			array3[j] = array2[i]

			j += 2
			k += 2
		}

		para(i = 0; i != 20; i++){
			escreva(array3[i],", ")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 275; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {array1, 7, 10, 6}-{array2, 7, 22, 6}-{array3, 7, 34, 6}-{i, 8, 10, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */