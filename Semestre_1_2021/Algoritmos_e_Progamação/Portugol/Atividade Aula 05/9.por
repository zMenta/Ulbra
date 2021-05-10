programa
{
	// Ex 9
	funcao inicio()
	{
		real num,soma = 0
		inteiro contador
		
		para(contador = 1; contador <= 3; contador += 1){
			escreva("Digite um número: ")
			leia(num)
			soma += num
		}

		escreva("A soma entre todos os números digitados é: ",soma)

		se(soma > 50){
			escreva("\nA soma é maior que 50.")
		}senao{
			escreva("\nSoma Menor que 50")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 378; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */