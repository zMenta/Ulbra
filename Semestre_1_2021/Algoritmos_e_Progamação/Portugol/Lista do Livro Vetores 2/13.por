programa
{
	/*13. Faça um programa que receba o nome e a nota de oito alunos e mostre o relatório a seguir:
Digite o nome do 1o

aluno: Carlos
Digite a nota do Carlos: 8
Digite o nome do 2o

aluno: Pedro
Digite a nota do Pedro: 5
Relatórios de notas
Carlos 8.0
Pedro 5.0
..
Média da classe = ??*/
	funcao inicio()
	{
		const inteiro size = 8
		real grade[size], average = 0
		cadeia name[size]

		inteiro i 
		

		para(i = 0; i < size; i++){
			escreva("Type the name of the student: ")
			leia(name[i])
			escreva("Type his grade: ")
			leia(grade[i])
			escreva("---------------------------------\n")

			average += grade[i]
		}

		average = average/i
		
		para(i = 0; i < size; i++){
			escreva(name[i]," : ",grade[i],"\n")
		}

		escreva("\n---------------------------------\n")
		escreva("Class average: ",average)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 446; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */