programa
{
	// Atividade de aula.
	
	funcao inicio()
	{
		inteiro choice, cont
		real numbers[3] , num , a , b , c , max = 0 , min = 0, mid = 0

		escreva("Escreva 3 números distintos. \n")

		// Leitor das variáveis A, B e C
		para(cont = 0; cont != 3; cont += 1){
			escreva("Digite um número: ")
			leia(num)

			numbers[cont] = num
		}

		//Organização de valores
		a = numbers[0]
		b = numbers[1]
		c = numbers[2]

		//Definidor de maior número
		se(a >= b e a >= c){
			max = a
		}senao se(b >= c e b >= a){
			max = b
		}senao se(c >= b e c >= a){
			max = c
		}

		//Definidor de menor número 
		se(a <= b e a <= c){
			min = a
		}senao se(b <= a e b <= c){
			min = b
		}senao se(c <= a e c <= b){
			min = c
		}

		//Definidor do número do meio
		se(a != max e a != min){
			mid = a
		}senao se(b != max e b != min){
			mid = b
		}senao se(c != max e b != min){
			mid = c
		}
		
		escreva("Digite a opção 1(Crescente) , 2(Decrescente) ou 3(Maior no meio).")
		leia(choice)

		//Ordem crescente
		se( choice == 1){
			escreva("Ordem crescente: ")

			escreva(min,", ")
			escreva(mid,", ")
			escreva(max,".")
		}senao se( choice == 2){
			escreva("Ordem decrescente: ")

			escreva(max,", ")
			escreva(mid,", ")
			escreva(min,".")
		}senao se( choice == 3){
			escreva("Maior no meio: ")

			escreva(mid,", ")
			escreva(max,", ")
			escreva(min,".")
		}senao{
			escreva("Opção inválida, tente novamente.")
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 181; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */