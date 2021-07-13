programa
{
	/*2. Leia um conjunto de notas, cuja quantidade seja determinada pelo usuário. Calcule a média de todas elas.
	Exiba o conjunto das notas maiores do que a média calculada. Em seguida, de forma agrupada,
	exiba o outro conjunto de notas (menores do que a média).*/
	
	funcao inicio()
	{
		inteiro size, i
		real nota[45], total = 0

		escreva("Digite o total de notas (máximo 45 notas): ")
		leia(size)

		para(i = 0; i < size; i++){
			escreva("Digite a nota ",i+1," : ")
			leia(nota[i])

			total += nota[i]
			
		}

		total = total/size

		escreva("Notas digitadas menores que ",total," : ")
		para(i = 0; i < size; i++){
			se(nota[i] < total){
				escreva(nota[i],", ")
			}
		}

		escreva("\nNotas digitadas maiores que ",total," : ")
		para(i = 0; i < size; i++){
			se(nota[i] > total){
				escreva(nota[i],", ")
			}
		}

		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 641; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */