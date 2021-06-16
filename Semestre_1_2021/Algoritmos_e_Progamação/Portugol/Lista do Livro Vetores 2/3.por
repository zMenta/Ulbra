programa
{
	/*3. Faça um programa para controlar o estoque de mercadorias de uma empresa. Inicialmente, o programa de-
verá preencher dois vetores com dez posições cada, onde o primeiro corresponde ao código do produto e o

segundo, ao total desse produto em estoque. Logo após, o programa deverá ler um conjunto indeterminado
de dados contendo o código de um cliente e o código do produto que ele deseja comprar, juntamente com a
quantidade. Código do cliente igual a zero indica fim do programa. O programa deverá verificar:
■■ se o código do produto solicitado existe. Se existir, tentar atender ao pedido; caso contrário, exibir
mensagem Código inexistente;
■■ cada pedido feito por um cliente só pode ser atendido integralmente. Caso isso não seja possível,
escrever a mensagem Não temos estoque suficiente dessa mercadoria. Se puder atendê-lo, escrever
a mensagem Pedido atendido. Obrigado e volte sempre;
■■ efetuar a atualização do estoque somente se o pedido for atendido integralmente;
■■ no final do programa, escrever os códigos dos produtos com seus respectivos estoques já atualizados.*/

	funcao inicio()
	{
		const inteiro size = 10 // Size is the size of the product list and stock list.
		//Arrays 
		cadeia  item, product[size] //= {"potato","ice"}
		inteiro stock[size] //= {100,20}
		//Vars
		inteiro i, client, item_id = 0 , amount
		logico not_found, in_stock

		//Registering Products area.
		para(i = 0; i < size; i++){
			escreva("The product index ",i," name: ")
			leia(product[i])
			escreva("The amount of available stock to purchase of ",product[i],": ")
			leia(stock[i])
		}

		escreva("--------------------------------------\n")

		//Client area.
		faca{

			in_stock = verdadeiro
			not_found = verdadeiro

			//Reads the client code.
			escreva("Type your client code (0 to stop): ")
			leia(client)
			//Verifies if the client code is 0.
			//0 stops the algorithm.
			se(client == 0){
				pare
			}

			//While-Check if the user typed the right products.Otherwise repeat the question.
			enquanto(not_found){
					
				//Print what is available to buy.
				escreva("--------------------------------------\n")
				escreva("Products: ")
				para(i = 0; i < size; i++){
					escreva(product[i],", ")
				}
				escreva("\n--------------------------------------\n")
	
				//Reads the product name.
				//While the product is not found. The loop will continue.
				//If the product is found. The loop breaks.
				escreva("Type the product name that you want to buy: ")
				leia(item)
				para(i = 0; i < size; i++){
					se(item == product[i]){
						escreva("You want to buy: ", product[i],". And it's index i: ",i)
						item_id = i
						not_found = falso
						pare	
					}
				}

					//If the product is not found he warns the user.
					se(not_found){
						escreva("\n--------------------------------------\n")
						escreva("Please try again. Product not found.\n")
					}
			} // End of the product while loop

			//While loop to verify the quantity that he wants to buy. If invalid it asks again.
			enquanto(in_stock){

				//Ask the user the amount of product that he wants to buy.
				escreva("\n--------------------------------------\n")
				escreva("The amount of '",product[item_id],"' that you want to buy: ")
				leia(amount)

				//Verifies if the product is in stock. 
				//Can't make the purchase if the amount is greater than the stock.
				se(stock[item_id] - amount > 0){
					escreva("\n--------------------------------------\n")
					escreva("Thank you for your purchase!")
					escreva("\n--------------------------------------\n")
					stock[item_id] = stock[item_id] - amount
					pare
				}senao{
					escreva("--------------------------------------\n")
					escreva("We're sorry. The quantity that you asked is bigger than the stock for that item. Please try again.\n")
					escreva(product[item_id]," stock: ",stock[item_id])
				}
			}// End of the amount while loop


			//Print an stock update
			escreva("Items update")
			escreva("\n--------------------------------------\n")
			para(i = 0; i < size; i++){
				escreva("  ",product[i]," |  stock: ",stock[i],"   ")
				escreva("\n--------------------------------------\n")
			}
			
			
			
		}enquanto(client != 0)

		escreva("--------------------------------------\n")
		escreva("Thank you.Please come again!")
		escreva("\n--------------------------------------")
		
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1358; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {product, 21, 16, 7}-{stock, 22, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */