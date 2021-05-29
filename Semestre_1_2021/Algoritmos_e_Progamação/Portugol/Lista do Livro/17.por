programa
{
	/*17. Foi feita uma pesquisa sobre a audiência de canal de TV em várias casas de uma cidade, em determinado
dia. Para cada casa consultada foi fornecido o número do canal (4, 5, 7, 12) e o número de pessoas que
estavam assistindo àquele canal. Se a televisão estivesse desligada, nada era anotado, ou seja, essa casa
não entrava na pesquisa. Faça um programa que:

■■ leia um número indeterminado de dados (número do canal e número de pessoas que estavam as-
sistindo); e

■■ calcule e mostre a porcentagem de audiência de cada canal.
Para encerrar a entrada de dados, digite o número do canal ZERO.*/
	funcao inicio()
	{
		real total = 0, tc_4 = 0, tc_5=0, tc_7=0, tc_12=0  // tc_* = total(de pessoas) do canal * 
		inteiro canal, p // p = pessoas
		
		faca{
			escreva("Digite o canal a ser assistido 4,5,7 ou 12 (canal 0 para parar): ")
			leia(canal)
			escreva("O número de pessoas que assistia o canal digitado: ")
			leia(p)
			escreva("---------------------------------------------------------\n")

			se(canal != 0){
				total+=p
				
				se(canal == 4){
					tc_4+=p
				}senao se(canal == 5){
					tc_5+=p
				}senao se(canal == 7){
					tc_7+=p
				}senao se(canal == 12){
					tc_12+=p
				}
			}
			
		}enquanto(canal != 0)

		escreva("TOTAL DE PESSOAS: ",total)
		escreva("\n-------------------------------")
		escreva("\nCANAL 4: ",(tc_4/total)*100,"%")
		escreva("\nCANAL 5: ",(tc_5/total)*100,"%")
		escreva("\nCANAL 7: ",(tc_7/total)*100,"%")
		escreva("\nCANAL 12: ",(tc_12/total)*100,"%")
		escreva("\n-------------------------------")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1386; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */