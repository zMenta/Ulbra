programa
{
	/*8. Faça um programa que solicite um Número N, o programa deve mostrar os números pares menores que N
	e maiores que zero*/
	funcao inicio()
	{
		inteiro i
		real num
		logico digitou = falso

		faca{
			escreva("Digite um número maior que zero: ")
			leia(num)
			se(num <= 0){
				escreva("O valor digitado tem que ser maior que zero. Tente novamente.\n")
			}
		}enquanto(num <= 0)

		
		escreva("Valores pares maiores que zero e menores que o valor digitado")
		para(i = 2; i < num; i+=2){
			escreva(", ",i)
			digitou = verdadeiro
		}
		se(nao digitou){
			escreva(". Nenhum número é par que seja maior que zero e menor que o valor digitado.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 678; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */