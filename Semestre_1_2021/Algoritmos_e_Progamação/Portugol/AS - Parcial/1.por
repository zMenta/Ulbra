programa
{
	
	/*1 -Faça um programa que receba a quantidade de funcionários de uma empresa, e para cada funcionário leia 
	o salário do funcionário, lucas brentano calcule e mostre o novo salário, acrescido de bonificação e de auxílio escola.*/
	
	funcao inicio()
	{
		inteiro size
		real sl , f//sl = salário | f = final
	
		escreva("Digite o número de funcionários: ")
		leia(size)

		para(inteiro i = 0; i < size; i++){
			f = 0
			escreva("\nDigite o salário do funcionário ",i+1,": ")
			leia(sl)

			se(sl < 500){
				f = sl*1.05
			}senao se(sl < 1200){
				f = sl*1.12
			}senao{
				f = sl
			}

			se(sl < 600){
				f += 150
			}senao{
				f += 100
			}
			
			escreva("\nSalário ajustado: ",f)
			
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 603; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */