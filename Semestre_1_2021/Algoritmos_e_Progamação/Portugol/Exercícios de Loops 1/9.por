programa
{
	/*9.	Solicitar um número entre 1 e 4. Se a pessoas digitar um número diferente,
	mostrar a mensagem "entrada inválida" e solicitar o número novamente.
	Se digitar correto mostrar o número digitado*/
	funcao inicio()
	{
		inteiro num

		enquanto(verdadeiro){
			escreva("\nDigite um número entre 1 e 4:")
			leia(num)
			escolha(num){
				caso 1: escreva("Você digitou 1")
					pare
					
				caso 2: escreva("Você digitou 2")
					pare

				caso 3: escreva("Você digitou 3")
					pare
					
				caso 4: escreva("Você digitou 4")
					pare

				caso contrario: escreva("Opção Inválida")

			}
			
			se(num >= 1 e num <= 4){
					pare
				}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 289; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */