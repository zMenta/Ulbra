programa
{
	/*5. Faça um programa de consulta de telefones a partir de um nome informado por uma chave de dados:
	leia nomes de pessoas com seus respectivos telefones, sendo a quantidade determinada pelo usuário.
	Em seguida, pergunte ao usuário qual o nome lucas brentano que ele deseja consultar o telefone. Após sua resposta,
	exiba o telefone da pessoa procurada.*/

	funcao inicio()
	{
		inteiro size, i
		inteiro num[45]
		cadeia nome[45], r = "", n = "" // r = resposta | n = name

		escreva("Quantas pessoas queres registrar (45 o máximo): ")
		leia(size)

		para(i = 0; i < size; i++){
			escreva("Digite o nome ",i+1,": ")
			leia(nome[i])
			escreva("Digite o número de celular de ",nome[i]," : ")
			leia(num[i])

		}
		
		enquanto(verdadeiro){
			enquanto(verdadeiro){
				escreva("Deseja consultar um número (s/n)? ")
				leia(r)
				se(r == "s" ou r == "n"){
					pare
				}senao{
					escreva("Opção inválida, tente novamente.\n")
				}
			}
			se(r == "n"){
					pare
				}

			enquanto(verdadeiro){
				escreva("Digite o nome da pessoa que quer consultar o número: ")
				leia(n)
				para(i = 0; i < size; i++){
					se(n == nome[i]){
						escreva("O número de ",nome[i]," é : ",num[i],"\n")
						pare
					}
				}

				se(i >= size){ 
					escreva("Nome não encontrado, tente novamente.\n")
				}senao{
					pare
				}

			}
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 373; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */