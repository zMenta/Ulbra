programa
{
	/*15. Uma empresa fez uma pesquisa de mercado para saber se as pessoas gostaram ou não de um novo pro-
duto lançado. Para isso, forneceu o sexo do entrevistado e sua resposta (S — sim; ou N — não). Sabe-se

que foram entrevistadas dez pessoas. Faça um programa que calcule e mostre:
■■ o número de pessoas que responderam sim;
■■ o número de pessoas que responderam não;
■■ o número de mulheres que responderam sim; e
■■ a percentagem de homens que responderam não, entre todos os homens analisados.*/
	funcao inicio()
	{
		inteiro i,q_s = 0, q_n = 0, m_s = 0
		real  h_n = 0, h =0
		cadeia resp, sex

		para(i = 0; i != 10; i++){
			escreva("Digite sua resposta (s/n): ")
			leia(resp)
			escreva("Digite seu sexo (h/m): ")
			leia(sex)

			se(sex == "h"){
				h++
			}

			se(resp == "s"){
				q_s++
				se(sex == "m"){
					m_s++
				}
			}senao se(resp == "n"){
				q_n++
				se(sex == "h"){
					h_n++
				}
			}

		}

		escreva("TOTAL SIM: ",q_s)
		escreva("\nTOTAL NÃO: ",q_n)
		escreva("\nMULHERES SIM: ",m_s)
		escreva("\nHOMEM NÃO PORCENTAGEM: ",(h_n/h)*100)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 698; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */