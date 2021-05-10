programa
{

/*7. Faça um programa que receba o salário base de um funcionário, calcule e mostre
seu salário a receber, sabendo-se que o funcionário tem gratificação de R$ 50
e paga imposto de 10% sobre o salário base.*/
	
	funcao inicio()
	{
		real salario, salario_final , grato, imposto

		escreva("Digite o salário base do funcionário: ")
		leia(salario)

		grato = salario + 50
		imposto = salario*0.1
		salario_final = grato - imposto

		escreva("O salário final do funcionário é de: $",salario_final)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */