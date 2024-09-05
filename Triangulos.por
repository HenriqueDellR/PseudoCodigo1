programa
{
	
inclua biblioteca Matematica --> mat // Inclui a biblioteca Matemática
	funcao inicio()
	{
		real base, lado1, lado2, AreaEqui, AreaIsos, AreaEsca, altura, semiperi

		escreva("Digite o tamanho da base do triângulo (em cm): ")
		leia(base)
		escreva("Digite o tamanho do 1° lado do triângulo (em cm): ")
		leia(lado1)
		escreva("Digite o tamanho do 2° lado do triângulo (em cm): ")
		leia(lado2)

		se (lado1 == lado2 e lado1 == base e lado2 == base) {
				escreva("Este é um triângulo Equilátero")
				AreaEqui = ((lado1 * lado2) * 1.73205080757) / 4	// Cálculo da área do triângulo Equilátero ((L².√3):4)
				escreva("\nA área deste equilátero é de: ", AreaEqui, "cm²")
			}
		
			senao se (lado1 == lado2 ou lado1 == base ou lado2 == base) {
					escreva("Este é um triângulo Isósceles")
					altura = mat.raiz ((lado1 * lado2) - ((base * base) / 4), 2.0)	// Cálculo da altura de um triângulo (√(L²-(b²:4)))
					AreaIsos = base * altura / 2	// Cálculo da área de um triângulo Isósceles ((b.h):2)
					se (AreaIsos <= 0.0)
						escreva("\nEste triângulo é degenerado")
					senao
						escreva("\nA área deste isósceles é de: ", AreaIsos, "cm²")	
				}
		
				senao {
						escreva ("Este é um triângulo Escaleno")
           				semiperi = (base + lado1 + lado2) / 2  // Cálculo do semiperímetro
           				AreaEsca = mat.raiz (semiperi * (semiperi - base) * (semiperi - lado1) * (semiperi - lado2), 2.0)	/*
           				Cálculo da área de um triângulo Escaleno (√(s.(s-b).(s-L1).(s-L2)))	*/
          				se (AreaEsca <= 0)
		  					escreva("\nEste triângulo é degenerado")
		  				senao
		  					escreva("\nA área deste escaleno é de: ", AreaEsca, "cm²")
					}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 690; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */