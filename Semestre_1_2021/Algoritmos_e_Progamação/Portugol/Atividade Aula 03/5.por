programa
{
	//Exercício 05
	
	funcao inicio()
	{
		inteiro codigo //número do funcionário
		real horas, salario_hora , salario_final

		escreva("Digite o número do funcionário: ")
		leia(codigo)
		escreva("Digite por quantas horas esse funcionário trabalha: ")
		leia(horas)
		escreva("Digite o quanto este funcionário recebe por cada hora trabalhada: ")
		leia(salario_hora)

		salario_final = salario_hora*horas

		escreva("\nO funcionário: ", codigo, "\n")
		escreva("Salário a receber $", salario_final, "\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 419; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */