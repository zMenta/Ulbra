programa
{

/*6. Faça um programa que receba o salário base de um funcionário, calcule e mostre
o salário a receber, sabendo-se que o funcionário tem gratificação de 5% sobre
o salário base e paga imposto de 7% também sobre o salário base.*/
	
	funcao inicio()
	{
		real salario, salario_final , grato , imposto

		escreva("Digite o salário base do funcionário: ")
		leia(salario)

		grato = salario*1.05
		imposto = salario*0.07
		salario_final = grato - imposto

		escreva("O salário final do funcionário é de: $",salario_final)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 481; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */