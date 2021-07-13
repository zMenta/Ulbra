programa
{
	/*Faça um programa que leia um vetor de cinco posições para números reais e,
	depois,um código inteiro. Se o código for zero, finalize o programa;
	se for 1, mostre o vetor na ordem que foi digitada se for 2,
	mostre o vetor na ordem inversa. Caso, o código for diferente
	de 0, 1 e 2 escreva uma mensagem falando que o código é inválido. O programa deve encerrar apenas ao digitar 0.*/
	funcao inicio()
	{
		real value[5]
		inteiro code, i

		para(i =0;i < 5; i++){
			escreva("Digite o valor ",i," : ")
			leia(value[i])
		}
		limpa()
		faca{
			escreva("Códigos:\n 0 - encerrar\n 1 - Mostrar números \n 2 - Mostrar números inversamente\n Code: ")
			leia(code)

			escolha(code){
				caso 0:
				pare

				caso 1:
					escreva("Opção 1\n")
					escreva("Ordem digitada: ")
					para(i = 0; i < 5; i++){
						escreva(value[i]," | ")
					}
					escreva("\n")
					pare

				caso 2:
					escreva("opção 2\n")
					escreva("Ordem inversa: ")
					para(i = 4; i >= 0; i--){
						escreva(value[i]," | ")
					}
					pare

				caso contrario:
					escreva("Opção inválida. Tente novamente\n")
			}

		}enquanto(code != 0)
		
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