programa
{
	/*Escreva um algoritmo que leia o preço de compra e o preço e venda e o nome de 10 mercadorias
	e calcule e escreva a quantidade de mercadorias proporcionam
(1) um lucro menor que 10%,
(2) um lucro maior ou igual a 10% e menor ou igual a 20% e
(3) um lucro maior do que 20%*/
	funcao inicio()
	{
		const inteiro size = 2
		real price[size], sell[size]
		cadeia name[size]
		inteiro i, quant10 = 0, quant1020 = 0, quant20plus = 00

		para(i = 0; i < size; i++){
			escreva("Digite o nome do produto ",i," : ")
			leia(name[i])
			escreva("Seu custo de produção: ")
			leia(price[i])
			escreva("Seu valor de venda: ")
			leia(sell[i])
		}

			escreva("Produtos com lucro menor que 10%: ")
			para(i = 0; i < size; i++){
				se(((sell[i]-price[i])/sell[i])*100 < 10){
					escreva("\nProduto: ",name[i])
					quant10++
				}
			}
			escreva("\nTotal de produtos: ",quant10)

			escreva("\n\nProdutos com lucro maior que 10% e menor que 20%: ")
			para(i = 0; i < size; i++){
				se(((sell[i]-price[i])/sell[i])*100 >= 10 e ((sell[i]-price[i])/sell[i])*100 < 20){
					escreva("\nProduto: ",name[i])
					quant1020++
				}
			}
			escreva("\nTotal de produtos: ",quant1020)

			escreva("\n\nProdutos com lucro maior que 20%: ")
			para(i = 0; i < size; i++){
				se(((sell[i]-price[i])/sell[i])*100 > 20){
					escreva("\nProduto: ",name[i])
					quant20plus++
				}
			}
			escreva("\nTotal de produtos: ",quant20plus)
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 649; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */