programa
{
	inclua biblioteca Matematica --> mat

/*
9.Faça um programa que receba um número positivo e maior que zero, calcule e mostre:
a) o número digitado ao quadrado; b) o número digitado ao cubo;
c) a raiz quadrada do número digitado; d) a raiz cúbica do número digita*/
	
	funcao inicio()
	{
		real num

		escreva("Escreva um número positivo e maior que 0: ")
		leia(num)

		escreva("\n Elevado ao quadrado: ", mat.potencia(num,2) )
		escreva("\n Elevado ao cubo: ", mat.potencia(num,3) )
		escreva("\n Raiz quadrada: ", mat.raiz(num,2) )
		escreva("\n Raiz cúbica: ", mat.raiz(num,3) )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 575; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */