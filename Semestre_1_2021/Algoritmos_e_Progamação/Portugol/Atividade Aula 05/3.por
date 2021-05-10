programa
{
	//3
	funcao inicio()
	{
		inteiro idade

		escreva("Qual sua idade? ")
		leia(idade)

		se(idade < 5){
			escreva("Você não se encaixa na categoria.")
		}senao se(idade <= 10){
			escreva("Você está na categora: INFANTIL")
		}senao se(idade <= 17){
			escreva("Você está na categora: JUVENIL")
		}senao se(idade <= 30){
			escreva("Você está na categora: PROFISSIONAL")
		}senao{
			escreva("Você está na categora: SÊNIOR")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 17; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */