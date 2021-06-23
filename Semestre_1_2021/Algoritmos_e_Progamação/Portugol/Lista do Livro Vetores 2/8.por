programa
{
	/*8. Faça um programa que preencha um vetor com os nomes de sete alunos e carregue outro vetor com a média
final desses alunos. Calcule e mostre:
■■ o nome do aluno com maior média (desconsiderar empates);

■■ para cada aluno não aprovado, isto é, com média menor que 7, mostrar quanto esse aluno precisa ti-
rar na prova de exame final para ser aprovado. Considerar que a média para aprovação no exame é 5.*/
	funcao inicio()
	{
		const inteiro size = 7

		cadeia name[size]
		real grade[size]

		inteiro high = 0 , i

		para(i = 0; i < size; i++){
			escreva("Type the student name: ")
			leia(name[i])
			escreva("Now his final grade: ")
			leia(grade[i])

			se(grade[i] > grade[high]){
				high = i
			}
			
		}

		escreva("The student who has the highest grade is ",name[high]," with a grade of ",grade[high])

		escreva("\nAnd for the students that need to do the final exam:\n")
		para(i = 0; i < size; i++){
			se(grade[i] < 7){
				//It's (10 - grade[i]) because of the formula: grade + exam / 2 => 5 to pass 
				// g = grade | e = exam  
				// (g+e)/2 = 5
				// g+e = 5*2
				// g+e = 10
				// e = 10-g
				escreva("   The studend ",name[i]," need a grade of atleast ",(10-grade[i])," to don't fail the class.\n") 
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 471; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {high, 16, 10, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */