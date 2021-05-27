programa
{
	/*13. Faça um programa que receba a idade e o peso de quinze pessoas, e que calcule e mostre as médias dos
pesos das pessoas da mesma faixa etária. As faixas etárias são: de 1 a 10 anos, de 11 a 20 anos, de 21 a
30 anos e de 31 anos para cima.*/
	funcao inicio()
	{
		inteiro i, idade
		real peso, m_10 = 0, m_20 = 0, m_30 = 0, m_31plus = 0 //somatório dos pesos das pessoas em X faix etária.

		para(i = 0; i != 15; i++){
			escreva("Digite a Idade da pessoa",i+1," :")
			leia(idade)
			escreva("Digite o peso da pessoa ",i+1," :")
			leia(peso)
			escreva("-------------------------------\n")

			se(idade >= 1 e idade <= 10){
				m_10 += peso
			}senao se(idade <= 20){
				m_20 += peso
			}senao se(idade <= 30){
				m_30 += peso
			}senao{
				m_31plus += peso
			}

		}
		escreva("Média de 1-10: ",m_10/i)
		escreva("\nMédia de 11-20: ",m_20/i)
		escreva("\nMédia de 21-30: ",m_30/i)
		escreva("\nMédia de 31+: ",m_31plus/i)	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 793; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */