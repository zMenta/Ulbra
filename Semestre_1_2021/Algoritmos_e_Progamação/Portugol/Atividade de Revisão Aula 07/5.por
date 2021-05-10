programa
{
	/*Faça um algoritmo que leia um valor inteiro (que representa o real, moeda nacional)
	e calcule qual o menor número possível de notas de 100, 50, 10, 5, 2 e 1 
	em que o valor lido pode ser decomposto. Escrever o valor lido e a relação de notas necessárias, 
	por exemplo: R$ 153 serão decompostos em 1 nota de R$100, 1 nota de R$ 50, 1 nota de R$ 2 e 1 nota de R$ 1.*/
	funcao inicio()
	{
		// c = cedula
		inteiro valor, sobra, cedula 

		escreva("Escreva o valor a ser sacado: ")
		leia(valor)

		sobra = valor

		cedula = valor/100
		sobra = sobra%100
		escreva("Cédulas de R$100: ", cedula)

		cedula = sobra/50
		sobra = sobra%50
		escreva("\nCédulas de R$50: ", cedula)

		cedula = sobra/10
		sobra = sobra%10
		escreva("\nCédulas de R$10: ", cedula)

		cedula = sobra/5
		sobra = sobra%5
		escreva("\nCédulas de R$5: ", cedula)

		cedula = sobra/2
		sobra = sobra%2
		escreva("\nCédulas de R$2: ", cedula)

		cedula = sobra/1
		escreva("\nCédulas de R$1: ", cedula)


		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 548; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */