programa
{
	//EX 7
	funcao inicio()
	{
		real salario, novo_salario
		inteiro codigo

		escreva("Digite o código do funcionário. 1-Técnico  2-Gerente: ")
		leia(codigo)
		escreva("Digite o SALÁRIO: ")
		leia(salario)


		se(codigo == 1){
			novo_salario = salario*1.50
		}senao se (codigo == 2){
			novo_salario = salario*1.3
		}senao{
			novo_salario = salario*1.2
		}

		escreva("O novo salário é de " + novo_salario)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 90; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */