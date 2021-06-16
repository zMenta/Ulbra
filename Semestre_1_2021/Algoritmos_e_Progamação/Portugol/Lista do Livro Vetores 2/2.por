programa
{
	
/*2. Faça um programa que preencha um vetor com sete números inteiros, calcule e mostre:
■■ os números múltiplos de 2;
■■ os números múltiplos de 3;
■■ os números múltiplos de 2 e de 3.*/

	funcao inicio()
	{
		inteiro i 
		inteiro numbers[7]

		para(i = 0; i < 7; i++){
			escreva("Type the ",i,"th number: ")
			leia(numbers[i])

		}

		escreva("Numbers multiples of 2: ")
		para(i = 0; i < 7; i++){
			se(numbers[i] % 2 == 0){
				escreva(numbers[i],", ")
			}
		}

		escreva("\nNumbers multiples of 3: ")
		para(i = 0; i < 7; i++){
			se(numbers[i] % 3 == 0){
				escreva(numbers[i],", ")
			}
		}

		escreva("\nNumbers multiples of 2 and 3: ")
		para(i = 0; i < 7; i++){
			se(numbers[i] % 3 == 0 e numbers[i] % 2 == 0){
				escreva(numbers[i],", ")
			}
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 777; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */