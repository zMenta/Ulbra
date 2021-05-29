programa
{
	/*16. Faça um programa que receba várias idades, calcule e mostre a média das idades digitadas. Finalize di-
gitando idade igual a zero.*/
	funcao inicio()
	{
		inteiro idade, p = 0, media, soma=0 // p = pessoas

		faca{
			escreva("Digite uma idade (digite 0 para parar): ")
			leia(idade)
			
			se(idade > 0){
				p++ //adiciona uma pessoa no contador pessoa
				soma+=idade
			}
			
			media = soma/p 
			
		}enquanto(idade != 0)

		escreva("A média das idades digitadas é: ",media)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 259; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */