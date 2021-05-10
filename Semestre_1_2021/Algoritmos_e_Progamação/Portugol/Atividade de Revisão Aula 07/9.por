programa
{
	/*O hotel Pica-Pau cobra 50,00 Reais a diária e mais uma taxa de serviços. A taxa de serviços é de:
1,50 por dia, se número de diárias <15
1,00 por dia, se número de diárias =15
0,50 por dia, se número de diárias >15
FUP que lê o número de diárias e calcula o total a ser pago pelo cliente.
*/
	funcao inicio()
	{
		inteiro dias, diarias
		real total, servico

		escreva("Digite quantos dias da estadia do hotel Pica-pau:")
		leia(dias)

		diarias = dias*50

		se(dias == 15){
			servico = dias*1
			total = servico + diarias
		}senao se(dias < 15){
			servico = dias*1.50
			total = servico + diarias
		}senao{
			servico = dias*0.50
			total = servico + diarias
		}

		escreva("O TOTAL a ser pago: ",total)
		escreva("\n R$50 por dia: ", diarias)
		escreva("\n Valor dos serviços: ", servico)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 310; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */