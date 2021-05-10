programa
{
	/*FUP que leia o número da conta bancária e o saldo de um cliente.
	Caso a conta tenha saldo negativo, o programa deve enviar a seguinte mensagem:
	CONTA ESTOURADA, caso contrário CONTA NORMAL.*/	
	funcao inicio()
	{
		real n_conta , saldo

		escreva("Digite o código da conta bancária: ")
		leia(n_conta)
		escreva("Digite o saldo da conta: ")
		leia(saldo)

		se(saldo < 0){
			escreva("CONTA ESTOURADA")
		}senao{
			escreva("CONTA NORMAL")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 471; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */