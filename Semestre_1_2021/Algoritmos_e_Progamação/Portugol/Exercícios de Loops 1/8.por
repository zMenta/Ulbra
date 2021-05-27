programa
{
	/*8.	Solicitar a idade de várias pessoas e imprimir: Total de pessoas com 
	menos de 21 anos. Total de pessoas com mais de 50 anos. O programa termina 
	quando idade for =-99 */
	funcao inicio()
	{
		inteiro idade = -1 , menos21 = 0, acima50 = 0

		enquanto(idade != -99){
			escreva("Digite uma idade: (digite -99 para parar)")
			leia(idade)

			se(idade >= 0 e idade < 21){
				menos21+=1
			}senao se(idade >= 0){
				acima50+=1
			}

		}

		escreva("Total de pessoas Menores de 21: ", menos21)
		escreva("\nTotal de pessoas Maiores de 50: ", acima50)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 529; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */