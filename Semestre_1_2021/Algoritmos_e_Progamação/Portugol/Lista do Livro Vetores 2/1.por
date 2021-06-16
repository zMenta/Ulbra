programa
{
	/*1. Faça um programa que preencha um vetor com seis elementos numéricos inteiros. Calcule e mostre:
■■ todos os números pares;
■■ a quantidade de números pares;
■■ todos os números ímpares;
■■ a quantidade de números ímpares.*/

	funcao inicio()
	{
		inteiro odd = 0 , even = 0 , i 
		inteiro numbers[6], even_list[6], odd_list[6]

		para(i = 0; i < 6; i++){
			escreva("Type the ",i,"th number: ")
			leia(numbers[i])

			se(numbers[i] % 2 == 0){
				even_list[even] = numbers[i]
				even++
				
			}senao{
				odd_list[odd] = numbers[i]
				odd++
			}

		}

		//showing the even numbers
		escreva("Total even numbers: ",even,". The numbers: ")
		para(i = 0; i < even; i++){
			escreva(even_list[i],", ")
		}

		//showing the odd numbers
		escreva("\nTotal odd numbers: ",odd,". The numbers: ")
		para(i = 0; i < odd; i++){
			escreva(odd_list[i],", ")
		}

		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 890; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numbers, 12, 10, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */