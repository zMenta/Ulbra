programa
{
	
	/*3. Faça um programa que receba três notas e seus respectivos pesos,
	calcule e mostre a média ponderada.*/
	
	funcao inicio()
	{
		real nota, peso, soma_nota = 0, soma_peso = 0
		inteiro contador

		para(contador = 1; contador != 4; contador += 1){
			escreva("Digite o peso da ",contador," nota: ")
			leia(peso)
			escreva("Digite a nota ",contador, ":")
			leia(nota)

			soma_nota += nota*peso
			soma_peso += peso
			}

			escreva("A média ponderada entre essas 3 notas é: ",soma_nota/soma_peso)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 347; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */