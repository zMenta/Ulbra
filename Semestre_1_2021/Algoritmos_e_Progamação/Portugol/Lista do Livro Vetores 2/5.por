programa
{
	/*5. Uma escola deseja saber se existem alunos cursando, simultaneamente, as disciplinas Lógica e Linguagem de
Programação. Coloque os números das matrículas dos alunos que cursam Lógica em um vetor, quinze alunos.
Coloque os números das matrículas dos alunos que cursam Linguagem de Programação em outro vetor, dez
alunos. Mostre o número das matrículas que aparecem nos dois vetores.*/
	funcao inicio()
	{
		const inteiro size_log = 15
		const inteiro size_lang = 10

		inteiro i

		inteiro logic[size_log] //= {10,20,30,40,45,85,90,120} These values were for testing
		inteiro lang[size_lang] //= {10,85,20,30,45,120}


		para(i = 0; i < size_log; i++){
			escreva("Type the student enrolment code:")
			leia(logic[i])
		}

		para(i = 0; i < size_lang; i++){
			escreva("Type the student enrolment code:")
			leia(lang[i])
		}


		escreva("The enrolment codes that're the same on both classes: ")
		para(i = 0; i < size_lang; i++){
			
			para(inteiro j = 0; j < size_log; j++){

				se(lang[i] == logic[j]){
					escreva(lang[i], ", ")
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
 * @POSICAO-CURSOR = 586; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {j, 32, 16, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */