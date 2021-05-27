programa
{
	/*10   Elabore um algoritmo que dada a idade de uma pessoa ele classifica-o em uma das seguintes categorias:
o   Menor de 16 anos - Não eleitor
o   Com 16 e menor de 18 anos – Eleito, com voto facultativo
o   Com 18 e menor de 70 anos – Eleito, com voto obrigatório
o   Com 70 ou mais– Eleitor, com voto facultativo
O programa deve encerrar ao digitar a idade 0. Ao fim deve ser mostrado o total de eleitores,
o total de eleitores com votos obrigatório e os não eleitores.
*/
	funcao inicio()
	{
		inteiro idade, t_elei = 0, t_obri = 0 , t_not = 0 
		//idade, total de eleitores, total obrigatório e total de não eleitores respectivamente.
		faca{
			escreva("Digite uma idade (digite 0 para parar.): ")
			leia(idade)

			se(idade != 0){
				se(idade < 16){
					t_not++
				}senao se(idade < 18){
					t_elei++
				}senao se(idade < 70){
					t_elei++
					t_obri++
				}senao{
					t_elei++
				}
			}
			
		}enquanto(idade > 0)

		escreva("\nTotal de eleitores: ",t_elei)
		escreva("\nTotal de eleitores com voto obrigatório: ",t_obri)
		escreva("\nTotal de não eleitores: ",t_not)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1109; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */