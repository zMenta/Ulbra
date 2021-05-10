programa
{

/*
10. Sabe-se que: 

pé = 12 polegadas
1 jarda = 3 pés 
1 milha = 1,760 jarda

Faça um programa que receba uma medida em pés, faça as conversões a seguir
e mostre os resultados. a) polegadas; b) jardas; c) milhas. */
	
	funcao inicio()
	{
		real pe, polegadas, jarda, milha

		escreva("Digite um valo em pés: ")
		leia(pe)

		polegadas = pe*12
		jarda = pe/3
		milha = jarda/1760

		escreva("\nPolegadas: ",polegadas)
		escreva("\nJardas: ",jarda)
		escreva("\nMilha: ",milha)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 493; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */