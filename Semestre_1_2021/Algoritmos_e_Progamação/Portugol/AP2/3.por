programa
{
	/*3- Faça um programa que lê três números diferentes e mostra na tela uma mensagem indicando qual é a soma dos
	valores e a média. Caso a média seja maior que 20 mostrar a mensagem "SOMA MAIOR QUE 20"*/
	funcao inicio()
	{
		inteiro i
		real num, soma = 0 

		para(i = 0; i != 3; i++){
			escreva("Digite o valor ",i+1,": ")
			leia(num)
			soma += num
		}
		escreva("A soma dos três valores: ",soma)
		escreva("\nMédia dos valores: ",(soma/i))

		se((soma/i) > 20){ //O enunciado diz para escrever "SOMA MAIOR QUE 20" caso a média seja maior que 20.
			escreva("\n---------------------")
			escreva("\nSOMA MAIOR QUE 20")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 655; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */