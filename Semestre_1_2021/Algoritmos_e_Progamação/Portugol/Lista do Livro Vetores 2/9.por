programa
{
	/*9. Faça um programa que preencha três vetores com dez posições cada um: o primeiro vetor, com os nomes de

dez produtos; o segundo vetor, com os códigos dos dez produtos; e o terceiro vetor, com os preços dos pro-
dutos. Mostre um relatório apenas com o nome, o código, o preço e o novo preço dos produtos que sofrerão

aumento.
Sabe-se que os produtos que sofrerão aumento são aqueles que possuem código par ou preço superior a
R$ 1.000,00. Sabe-se ainda que, para os produtos que satisfazem as duas condições anteriores, código e
preço, o aumento será de 20%; para aqueles que satisfazem apenas a condição de código, o aumento será
de 15%; e para aqueles que satisfazem apenas a condição de preço, o aumento será de 10%.*/
	funcao inicio()
	{
		const inteiro size = 4
		inteiro i

		cadeia product[size] = {"oven","gas","bread", "furnace"}
		inteiro code[size] //= {16,8,3,7}
		real price[size] //= {1000,100,100,1000}

		
		para(i = 0; i < size; i++){
			escreva("Type the name of the product: ")
			leia(product[i])
			escreva("Type the code of the product: ")
			leia(code[i])
			escreva("Type the price of the product: ")
			leia(price[i])
		}
		
		escreva("Products: ")
		para(i = 0; i < size; i++){
			se(code[i] % 2 == 0 e price[i] >= 1000){
				escreva("\n",product[i]," -> ",price[i]*1.2)
			}senao se(code[i] % 2 == 0 e price[i] < 1000){
				escreva("\n",product[i]," -> ",price[i]*1.15)
			}senao se(code[i] % 2 != 0 e price[i] >= 1000){
				escreva("\n",product[i]," -> ",price[i]*1.1)
			}senao{
				escreva("\n",product[i]," -> ",price[i])
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1171; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {product, 18, 9, 7}-{code, 19, 10, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */