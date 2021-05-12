programa
{
	/*6.	Escrever um programa que receba vários números inteiros no teclado e 
	no final imprimir a média dos números múltiplos de 3. Para sair digitar 0(zero). 
*/
	funcao inicio()
	{
		inteiro i = 1, soma = 0, num = 0

		faca{
			escreva("Digite um número inteiro (digite 0 para parar): ")
			leia(num)

			se(num%3==0){
				soma+=num
				i++
			}
			
		}enquanto(num != 0)

		escreva("A média dos valores digitados e múltiplos de 3 são: ", soma/i)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 462; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */