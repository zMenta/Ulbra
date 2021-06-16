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
		inteiro numbers[6]

		para(i = 0; i < 6; i++){
			escreva("Type the ",i,"th number: ")
			leia(numbers[i])

		}

		escreva("Even numbers: ")
		para(i = 0; i < 6; i++){
			se(numbers[i] % 2 == 0){
				even++
				escreva(numbers[i],", ")
			}
		}
		escreva("\nTotal of even numbers: ", even)

		escreva("Odd numbers: ")
		para(i = 0; i < 6; i++){
			se(numbers[i] % 2 != 0){
				odd++
				escreva(numbers[i],", ")
			}
		}
		escreva("\nTotal of odd numbers: ", odd)

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 763; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */