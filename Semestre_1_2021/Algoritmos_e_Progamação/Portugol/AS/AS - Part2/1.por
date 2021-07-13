programa
{
	/*Faça um programa que Leia 10 números inteiros e armazene em um vetor. Em seguida escreva os elementos que são 
	pares e suas respectivas posições no vetor.*/
	funcao inicio()
	{
		inteiro value[10], i

		para(i = 0; i < 10;i++){
			escreva("Digite o número ",i+1," : ")
			leia(value[i])
		}

		escreva("Os seguintes números são pares.\n")
		escreva("Número |\tPosição\n")
		escreva("-------------------------------\n")
		para(i = 0; i < 10; i++){
			se(value[i]%2==0){
				escreva(value[i],"\t|\t",i+1,"th\n")
			}
		}
	

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 438; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */