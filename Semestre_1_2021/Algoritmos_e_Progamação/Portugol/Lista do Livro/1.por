programa
{
	/*1. Faça um programa que leia cinco grupos de quatro valores (A, B, C, D) e mostre-os na ordem lida.Em segui-
da, organize-os em ordem crescente e decrescente.*/
	funcao inicio()
	{
	inteiro i, a, b, c, d, t

	para(i = 0; i <= 4; i++){
		escreva("-------------------------\n")
		escreva("Digite os valores do grupo ",i+1,"\n")
		escreva("-------------------------\n")
		escreva("Digite o valor A: ")
		leia(a)
		escreva("Digite o valor B: ")
		leia(b)
		escreva("Digite o valor C: ")
		leia(c)
		escreva("Digite o valor D: ")
		leia(d)

		escreva("\nA ordem digitada dos valores foram: A=",a,", B=",b,", C=",c,", D=",d,"\n")

		enquanto(a>b ou b>c ou c>d){
			
			se(a>b){
				t = a
				a = b
				b = t
			}

			se(b>c){
				t = b
				b = c
				c = t
			}

			se(c>d){
				t = c
				c = d
				d = t
			}

		}
		
		escreva("Ordem crescente: ",a,", ",b,", ",c,", ",d,"\n")
		escreva("Ordem decrescente: ",d,", ",c,", ",b,", ",a,"\n")
	}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 720; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */