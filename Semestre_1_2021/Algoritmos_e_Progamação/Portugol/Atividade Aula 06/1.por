programa
{
	
	funcao inicio()
	{
		real nota, soma = 0, media

		escreva("NOTA1: ")
		leia(nota)
		soma += nota*2

		escreva("NOTA2: ")
		leia(nota)
		soma += nota*3

		escreva("NOTA3: ")
		leia(nota)
		soma += nota*5

		media = soma / 10 

		escreva("Sua nota é: ")

		se( media < 0){
			escreva("Errou feio!")
		}senao se( media < 5){
			escreva("E")
		}senao se( media < 6){
			escreva("D")
		}senao se( media < 7){
			escreva("C")
		}senao se( media < 8){
			escreva("B")
		}senao se( media <= 10){
			escreva("A")
		}senao{
			escreva("Você é bom mesmo.")
		}

		escreva(", (", media, ") ")
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 32; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */