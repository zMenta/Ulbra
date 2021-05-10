programa
{

	/*2. Faça um programa que receba três notas, calcule e mostre a média aritmética.*/
	
	funcao inicio()
	{
		real nota, soma = 0
		inteiro contador

		para(contador = 1; contador != 4; contador += 1){
			escreva("Digite a ",contador," nota: ")
			leia(nota)

			soma += nota
			}

			escreva("A média aritmética dessas três notas é: ",soma/3)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 358; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */