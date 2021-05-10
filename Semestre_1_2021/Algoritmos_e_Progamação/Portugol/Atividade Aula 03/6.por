programa
{
	//Exercício 06
	
	funcao inicio()
	{
		inteiro quantidade, codigo, contador
		real total = 0 , preco

		para(contador = 1; contador <= 2; contador+=1)
		{
			preco = 0
			
			escreva("Digite o código da peça ", contador, " :") 
			leia(codigo)

			/*
			O exercício pede para somente ler 
			o código, não para fazer algo com ele.
			*/
			
			escreva("O preço da peça ",contador," :")
			leia(preco)
			escreva("A quantidade de peças compradas: ")
			leia(quantidade)
			escreva("------------------------\n")

			total += quantidade*preco
		}

		escreva("O total de sua compra foi: ",total, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 522; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */