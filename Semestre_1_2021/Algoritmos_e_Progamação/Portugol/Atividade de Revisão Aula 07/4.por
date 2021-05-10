programa
{
	/*Escreva um algoritmo que leia a idade de um atleta e escreva na tela 
	em que categoria ele se enquadra, seguindo o quadro abaixo:
	Faixa Etária Categoria de 5 a 10 anos Infantil de 11 a 17 
	anos Juvenil de 18 a 30 anos Profissional acima de 30 anos Sênior*/
	funcao inicio()
	{
		inteiro idade

		escreva("Escreva uma idade: ")
		leia(idade)

		se(idade < 5){
			escreva("Categoria nula.")
		}senao se(idade <= 10){
			escreva("Infantil")
		}senao se(idade <= 17 ){
			escreva("Juvenil")
		}senao se(idade <= 30){
			escreva("Profissional")
		}senao{
			escreva("Sênior")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 534; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */