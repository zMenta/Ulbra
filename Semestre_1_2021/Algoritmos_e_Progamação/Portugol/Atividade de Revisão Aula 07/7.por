programa
{
	/*FUP para ler três valores quaisquer e escrever o maior dos 3.*/
	funcao inicio()
	{
		// v = valor
		real v1, v2, v3
		
		escreva("Digite o valor 1:")
		leia(v1)
		escreva("Digite o valor 2:")
		leia(v2)
		escreva("Digite o valor 3:")
		leia(v3)

		escreva("O maior valor digitado é: ")

		se(v1 >= v2 e v1 >= v3){
			escreva(v1)
		}senao se(v2 >= v1 e v2 >= v3){
			escreva(v2)
		}senao se(v3 >= v1 e v3 >= v2){
			escreva(v3)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 451; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */