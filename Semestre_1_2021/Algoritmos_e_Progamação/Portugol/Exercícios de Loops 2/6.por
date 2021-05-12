programa
{
	/*6- Faça um programa que leia os valores dos salários atuais dos funcionários
	de uma empresa e imprima os valores com aumento. Se o salário for menor ou 
	igual a R$ 500,00, o programa deve aplicar um aumento de 0.10 (10%) e se for
	maior que R$ 500,00, o aumento deve ser de 0.08 (8%). Assim como no nosso 
	último exemplo, o usuário é que deve informar quando deseja sair. Ou seja,
	ele deve digitar o salário de um funcionário e o programa vai exibir o valor 
	com o aumento. Depois ele deve responder se deseja digitar outro salário ou não.
	Se ele responder que sim, deve-se solicitar o novo salário e exibir o valor com
	aumento. Então, torna-se a perguntar se ele deseja informar um novo salário e 
	repetir o laço até que ele não queira informar novos salários.*/
	funcao inicio()
	{
		inteiro sl // sl = salary 
		cadeia ch // ch = choice

		faca{
			escreva("Digite o valor do salário do funcionário. R$")
			leia(sl)

			se(sl <= 500){
				escreva("O salário ajustado foi de R$",sl," para R$",sl*1.10)
			}senao{
				escreva("O salário ajustado foi de R$",sl," para R$",sl*1.08)
			}

			faca{
				escreva("\n-------------------------------------------------------------------")
				escreva("\nVocê deseja escrever mais um salário? (s/n em letras minúsculas)")
				leia(ch)
				se(ch != "s" e ch != "n" ){
					escreva("\nValor digitado inválido, por favor tente novamente.")
				}
				
			}enquanto( ch != "s" e ch != "n")
			
		}enquanto(ch == "s")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1480; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */