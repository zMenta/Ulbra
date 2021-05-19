programa
{
	/*18. Foi feita uma pesquisa entre os habitantes de uma região. Foram coletados os dados de idade, sexo (M/F)
e salário. Faça um programa que calcule e mostre:
■■ a média dos salários do grupo;
■■ a maior e a menor idade do grupo;
■■ a quantidade de mulheres com salário até R$ 200,00;
■■ a idade e o sexo da pessoa que possui o menor salário.
Finalize a entrada de dados ao ser digitada uma idade negativa.*/

	funcao inicio()
	{
		inteiro idade, m200 = 0, p = 0 , menor_sl_id = 0, menor_idade = 0 , maior_idade = 0 // p = contador de pessoas | m200 = contador de mulheres salario até R$200
		real sl, soma = 0.0, menor_sl = 0 // sl = salário
		cadeia sexo, es , menor_sex = ""  // es = escolha 

		faca{
			escreva("---------------------------------------------------\n")
			p++
			escreva("Digite a idade da pessoa: ")
			leia(idade)
			
			faca{ //verificador de dado do sexo
			escreva("Digite seu sexo(m/f): ")
			leia(sexo)
			se(sexo != "m" e sexo != "f"){
				escreva("Opção inválida. Tente novamente\n")
			}
			
			}enquanto(sexo != "m" e sexo != "f")
			
			escreva("Digite seu salário R$")
			leia(sl)			
			soma += sl

			se(sexo == "f" e sl <= 200){ //Verificador de mulher que ganha menos que R$200
				m200++
			}
			
			se(p == 1){  // Cadastra a primeira pessoas todos os valores
				menor_sl = sl
				menor_sex = sexo
				menor_sl_id = idade
				menor_idade = idade
				maior_idade = idade
				
			}senao se(menor_sl > sl){ //Verificador da pessoa com o menor salario
				menor_sl = sl
				menor_sex = sexo
				menor_sl_id = idade
			}

			se(maior_idade < idade){ //Verificador de maior idade
				maior_idade = idade
			}

			se(menor_idade > idade){ //Verificador de menor idade
				menor_idade = idade
			}
			
			faca{
				escreva("Quer registrar mais uma pessoa? (s/n)")  //Verificador de resposta e perguntador.
				leia(es)
				se(es != "s" e es != "n"){
					escreva("\nOpção inválida. Tente novamente\n")
				}
			}enquanto(es != "s" e es != "n")
				
		}enquanto(es == "s")

		escreva("\nA média dos salários digitados é de R$",soma/p)
		escreva("\nA pessoa mais VELHA registrada tem ",maior_idade,"anos e a mais JOVEM tem ",menor_idade," anos.")
		escreva("\nQuantidade de mulheres com salário menor de R$200 é de ",m200)
		escreva("\nA pessoa com o menor salário (R$",menor_sl,") tem ",menor_sl_id," anos, e é do sexo ",menor_sex)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 838; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */