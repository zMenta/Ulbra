programa
{
	
/*14. Faça um programa que receba o nome e duas notas de seis alunos e mostre o relatório a seguir. Relatório
de notas:

PROVA |         |MÉDIA |SITUAÇÃO
Carlos 8,0 | 9,0 |  8,5 |Aprovado
Pedro 4,0 | 5,0  | 4,5 |Reprovado

■■ média da classe = ?
■■ percentual de alunos aprovados = ?%
■■ percentual de alunos de exame = ?%
■■ percentual de alunos reprovados = ?%*/
	funcao inicio()
	{
		const inteiro size = 2
		real f_grade[size], average = 0, grade1[size], grade2[size] 
		cadeia name[size]

		inteiro i, tot_pas = 0, tot_fai = 0
		

		para(i = 0; i < size; i++){
			escreva("Type the name of the student: ")
			leia(name[i])
			escreva("Type his 1th grade: ")
			leia(grade1[i])
			escreva("Type his 2th grade: ")
			leia(grade2[i])
			escreva("---------------------------------\n")

			f_grade[i] = (grade1[i]+grade2[i])/2

			average += f_grade[i]
		}

		average = average/i

		para(i = 0; i < size; i++){
			escreva(name[i]," | Grade 1: ",grade1[i]," | Grade 2: ",grade2[i]," | Final grade: ",f_grade[i]," | Situation: ")
			se(f_grade[i] >= 7){
				escreva("Passed")
				tot_pas++
			}senao{
				escreva("Failed")
				tot_fai++
			}
			escreva("\n------------------------------------------------------------------------------------------------------------\n")
		}

		escreva("The grade average of the class: ",average)
		escreva("\nPercentage of approved students: ",(tot_pas*100)/size,"%")
		escreva("\nPercentage of failed students: ",(tot_fai*100)/size,"%")
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 485; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {average, 18, 22, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */