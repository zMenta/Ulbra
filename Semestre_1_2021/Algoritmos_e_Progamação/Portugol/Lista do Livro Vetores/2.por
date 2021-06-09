programa
{
	/*2. Uma pequena loja de artesanato possui apenas um vendedor e comercializa dez tipos de objetos. O
vendedor recebe, mensalmente, salário de R$ 545,00, acrescido de 5% do valor total de suas vendas.
O valor unitário dos objetos deve ser informado e armazenado em um vetor; a quantidade vendida de
cada peça deve ficar em outro vetor, mas na mesma posição. Crie um programa que receba os preços
e as quantidades vendidas, armazenando-os em seus respectivos vetores (ambos com tamanho dez).
Depois, determine e mostre:
■■ um relatório contendo: quantidade vendida, valor unitário e valor total de cada objeto. Ao final,
deverão ser mostrados o valor geral das vendas e o valor da comissão que será paga ao vendedor; e
■■ o valor do objeto mais vendido e sua posição no vetor (não se preocupe com empates).*/

	funcao inicio()
	{
		real precos[10], quant[10], total = 0.0 // quant = quantidade 
		inteiro i, high = 0

		inteiro size = 3
		
		para(i = 0; i != size; i++){
			escreva("O preço do produto ",i+1,", R$")
			leia(precos[i])
			escreva("A quantidade comprada do produto ",i+1,": ")
			leia(quant[i])
			escreva("======================================\n")

			total += precos[i]*quant[i]
			
		}

		escreva("RELATÓRIO: \n")
		escreva(" ID Produto | Preço | Quantidade | Total R$\n")
		
		para(i = 0; i != size; i++){ //Quantidade de Vendas.
			escreva("\n--------------------------------------------------")
			escreva("\n ID: ",i+1," | R$",precos[i]," | Quantidade: ",quant[i]," | Total R$",precos[i]*quant[i])

			se(i == 0){ //Verificador de produto mais vendido.
				high = i
			}senao se(quant[high] < quant[i]){
				high = i
			}
	
		}

		escreva("\n--------------------------------------------------")
		escreva("\nTOTAL DE VENDAS  R$",total)
		escreva("\nValor da comissão de vendas R$",total*0.05)
		escreva("\n--------------------------------------------------")
		escreva("\nID do produto mais vendido: ",high+1)
		escreva("\nPreço do produto mais vendido R$",precos[high])
		escreva("\n--------------------------------------------------")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1656; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {precos, 15, 7, 6}-{quant, 15, 19, 5}-{high, 16, 13, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */