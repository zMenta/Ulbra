programa
{
	/*2- Faça um programa que calcule a média de 5 números inteiros dados como
	entrada e imprima o resultado.*/
	funcao inicio()
	{
		inteiro i, num, sum = 0

		para(i = 0; i != 5; i++){
			escreva("Digite o valor ",i," :")
			leia(num)
			sum += num
			
		}
		escreva("A média entre todos os número digitados é de ", sum/i)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 193; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */