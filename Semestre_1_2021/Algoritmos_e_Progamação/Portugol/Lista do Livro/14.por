programa
{
	/*14. Cada espectador de um cinema respondeu a um questionário no qual constava sua idade e sua opinião

em relação ao filme: ótimo — 3; bom — 2; regular — 1. Faça um programa que receba a idade e a opi-
nião de quinze espectadores, calcule e mostre:

■■ a média das idades das pessoas que responderam ótimo;
■■ a quantidade de pessoas que responderam regular; e
■■ a percentagem de pessoas que responderam bom, entre todos os espectadores analisados.*/
	funcao inicio()
	{
		inteiro i, nota, idade, m_oti = 0, q_reg =0 , p_oti = 0
		real porcem, q_bom = 0.0,t_pes = 0.0
		para(i = 0; i != 15; i++){
			escreva("Digite a idade da pessoa ",i+1," :")
			leia(idade)
			escreva("Digite sua opinião do filme. 3-ótimo; 2-bom; 1-regular: ")
			leia(nota)
			escreva("--------------------------------------------------------------\n")

			t_pes++

			se(nota == 3){
				m_oti += idade
				p_oti++
			}

			se(nota == 2){
				q_bom++
			}

			se(nota == 1){
				q_reg++
			}

			
		}
		porcem = (q_bom/t_pes)*100
		
		se(p_oti >= 1){
			escreva("Média das idades das pessoas que responderam ótimo: ",m_oti/p_oti)
		}senao{
			escreva("Nenhuma pessoa foi registrada que responderam ótimo.")
		}
		escreva("\nQuantidade de pessoas que responderam regular: ",q_bom)
		escreva("\nPorcentagem de pessoas que responderam bom, entre todos os espectadores analisados: ", porcem,"%")
		escreva("-----------------------------------------------------------------------------------------------------")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1103; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */