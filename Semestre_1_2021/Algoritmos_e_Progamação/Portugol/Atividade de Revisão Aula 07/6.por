programa
{
	/*FUP que lê dois valores e escreve cada um juntamente com a mensagem:
	“É múltiplo de 2” ou “Não é múltiplo de dois”.*/
	funcao inicio()
	{
		inteiro num
		
		escreva("Digite um número inteiro: ")
		leia(num)

		se (num%2 == 0){
			escreva("É múltiplo de 2")
		}senao{
			escreva("Não é múltiplo de dois")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 335; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */