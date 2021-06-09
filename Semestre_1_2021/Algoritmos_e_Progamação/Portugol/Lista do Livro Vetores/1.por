programa
{
	/*1. Faça um programa que preencha um vetor com nove números inteiros, calcule e mostre os números
primos e suas respectivas posições.*/

	funcao inicio()
	{

	inteiro lista[9], num, i, j, div = 0
	
		para(i = 0; i != 9; i+=1){
			escreva("Digite o valor ",i+1," : ")
			leia(num)
			lista[i] = num
		}

		escreva("Os números digitados que são primos: ")
		
		//Verificador se o número da lista[i] é primo ou não.
		para(i = 0; i != 9; i += 1){
			div = 0
		
			//Verifica quantas vezes o número do índice i é divisível até chegar o valor i.
			para(j = 1; j <= lista[i]; j += 1){ 
				se(lista[i] % j == 0 ){
					div += 1
				}	
			}
			
			//Verifica se ele é múltiplo dele mesmo e 1. E escreve.
			se(div == 2){
				escreva("\n  Valor ",i+1," : ",lista[i])
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 787; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {lista, 9, 9, 5}-{i, 9, 24, 1}-{j, 9, 27, 1}-{div, 9, 30, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */