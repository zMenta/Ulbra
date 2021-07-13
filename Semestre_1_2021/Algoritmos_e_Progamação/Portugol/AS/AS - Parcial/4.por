programa
{
	/*4. Leia um conjunto de valores inteiros e em seguida os exiba-os na ordem inversa do que foram digitados.*/
	funcao inicio()
	{
		const inteiro size = 5
		inteiro num[size], i

		para(i = 0; i < size; i++){
			escreva("Digite um número: ")
			leia(num[i])
		}

		escreva("Ordem inversa dos números digitados: ")
		para(i = size-1; i >= 0; i--){
			escreva(num[i],", ")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 397; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */