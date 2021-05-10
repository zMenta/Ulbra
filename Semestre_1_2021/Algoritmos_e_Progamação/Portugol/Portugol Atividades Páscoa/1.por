programa
{
	/* 1. Faça um programa que receba quatro números inteiros, 
	calcule e mostre a soma desses números.
*/
	funcao inicio()
	{
		inteiro num,soma = 0,contador

		para(contador = 0 ;contador != 4; contador += 1){
			
			escreva("Digite um número inteiro: ")
			leia(num)
			soma += num
			}

		escreva("A soma de todos os números digitados é: ",soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 266; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */