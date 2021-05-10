programa
{

/*5. Faça um programa que receba o salário de um funcionário e o percentual de aumento,
calcule e mostre o valor do aumento e o novo salário.*/
	
	funcao inicio()
	{
		real salario, aumento, porcentagem

		escreva("Digite o salário do funcionário: ")
		leia(salario)
		escreva("Digite a % que queres aumentar o salário: ")
		leia(porcentagem)

		aumento = (porcentagem/100)+1

		
		limpa()

		escreva("O salário de $",salario,", agora com um aumento de %",porcentagem)
		escreva("\nSalário final: $",salario*aumento)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */