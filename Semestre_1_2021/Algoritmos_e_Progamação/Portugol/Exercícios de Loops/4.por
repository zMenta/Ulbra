programa
{

	funcao inicio()
	{
		inteiro i = 1, idade, soma = 0, media = 0

		enquanto(media <= 20){
			se(i == 10){
				pare
			}
			
			escreva("\nDigite a idade da pessoa", i," :")
			leia(idade)

			soma+=idade
			media = soma/i

			i++
			escreva("\nMédia atual: ", media)
		}
		escreva("\nA média das idades superou 20. Fim do algoritmo")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 11; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */