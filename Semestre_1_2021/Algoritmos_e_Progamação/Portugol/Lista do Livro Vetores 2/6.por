programa
{
	/*6. Faça um programa que receba o total das vendas de cada vendedor de uma loja e armazene-as em um vetor.
Receba também o percentual de comissão a que cada vendedor tem direito e armazene-os em outro vetor.
Receba os nomes desses vendedores e armazene-os em um terceiro vetor. Existem apenas dez vendedores na
loja. Calcule e mostre:
■■ um relatório com os nomes dos vendedores e os valores a receber referentes à comissão;
■■ o total das vendas de todos os vendedores;
■■ o maior valor a receber e o nome de quem o receberá;
■■ o menor valor a receber e o nome de quem o receberá.*/
	funcao inicio()
	{
		const inteiro size = 3
		inteiro sales[size]
		real commission[size]
		cadeia vendor[size]

		inteiro i, total = 0, high=0, low=0

		para(i = 0; i < size; i++){
			escreva("Type the name of the salesman: ")
			leia(vendor[i])
			escreva("Type his/her commission rate per sale. %")
			leia(commission[i])
			escreva("Type his/her total sales: ")
			leia(sales[i])
			
			total += sales[i]

			se(commission[i] > commission[high]){
				high = i
			}
			se(commission[i] < commission[low]){
				low = i
			}
		
		}

		para(i = 0; i < size; i++){
			escreva("--------------------------------------------\n")
			escreva("Vendor: ",vendor[i]," | Commission: ",commission[i],"%  | Sales: ",sales[i])
			escreva("\n--------------------------------------------\n")
		}
		escreva("Total sales: ",total)
		escreva("\nBiggest Commission: ",vendor[high]," - ",commission[high],"%")
		escreva("\nLowest Commission: ",vendor[low]," - ",commission[low],"%")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1502; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */