programa
{
	/*11. Faça um programa que receba dez números inteiros e armazene-os em um vetor. Calcule e mostre dois
vetores resultantes: o primeiro com os números pares e o segundo, com os números ímpares.*/
	funcao inicio()
	{
		const inteiro size = 10

		inteiro a[size], od[size], ev[size], i // od = odd numbers | ev = even numbers
		inteiro p_od = 0 , p_ev = 0 // p = position

		para(i = 0; i < size; i++){
			escreva("Type a number: ")
			leia(a[i])

			se(a[i] % 2 == 0){
				ev[p_ev] = a[i]
				p_ev++
			}senao{
				od[p_od] = a[i]
				p_od++
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 515; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {a, 9, 10, 1}-{od, 9, 19, 2}-{ev, 9, 29, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */