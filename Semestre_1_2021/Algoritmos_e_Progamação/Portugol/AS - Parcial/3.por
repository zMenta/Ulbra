programa
{
	/*3. Leia um conjunto de alunos, cada uma com o nome e a nota. Em seguida, exiba o nome dos alunos que possuem nota maior
	do que a média da turma.*/
	funcao inicio()
	{
		const inteiro size = 5
		cadeia nome[size]
		real nota[size], total = 0 

		para(inteiro i = 0; i < size; i++){
			escreva("Digite o nome do aluno ",i+1," : ")
			leia(nome[i])
			escreva("Digite a nota de ",nome[i]," : ")
			leia(nota[i])

			total += nota[i]

		}

		total = total/size

		escreva("Os alunos com a nota maior que a média da turma: ",total,"\n")
		para(inteiro i = 0; i < size; i++){
			se(nota[i] > total ){
				escreva(nome[i],", ")
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 449; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */