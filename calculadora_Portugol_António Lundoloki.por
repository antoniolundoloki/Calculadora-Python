programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		cadeia r = "s"
		
		escreva("*****************************\n")
		escreva("*   Calculadora Básica SML  *\n")
		escreva("*****************************\n")

		faca{

			inteiro opc1
			escreva("----- Menu de operações -----")
			linha()
			escreva("1- ADIÇÃO")
			linha()
			escreva("2- SUBTRAÇÃO")
			linha()
			escreva("3- MULTIPLICAÇÃO")
			linha()
			escreva("4- DIVISÃO")
			linha()
			escreva("123- OPERAÇÕES ESPECIAIS")
			linha()
			escreva("0- SAIR DO PROGRAMA")
			linha()
			escreva("Qual operação a efectuar? (1 à 4): ")
			leia(opc1)
			limpa()
	
			se(opc1 > 0 e opc1 <= 4 ou opc1 == 123){
				escreva("Processando")
				para(inteiro c = 0; c<=3 ;c++){
					u.aguarde(1000)
					escreva(".")
				}limpa()
			}
			
			escolha(opc1){
				caso 0:
				se(opc1 == 0){
					escreva("Saindo do programa")
					r = "n"
					para(inteiro c = 0; c<=3 ;c++){
						u.aguarde(1000)
						escreva(".")
					}limpa()
				}
				pare
				caso 1:
				real ns1, ns2
				menu(1)
				leia(ns1)
				limpa()
				menu(1)
				escreva(ns1, " + ")
				leia(ns2)
				limpa()
				menu(1)
				escreva(ns1, " + ",ns2, " = ",ns1+ns2)
				pare
					
				caso 2:
				real nb1, nb2
				menu(2)
				leia(nb1)
				limpa()
				menu(2)
				escreva(nb1, " - ")
				leia(nb2)
				limpa()
				menu(2)
				escreva(nb1, " - ",nb2, " = ",nb1-nb2)
				pare
	
				caso 3:
				real nm1, nm2
				menu(3)
				leia(nm1)
				limpa()
				menu(3)
				escreva(nm1, " x ")
				leia(nm2)
				limpa()
				menu(3)
				escreva(nm1, " x ",nm2, " = ",nm1*nm2)
				pare
					
				caso 4:
				real nd1, nd2
				menu(4)
				leia(nd1)
				limpa()
				menu(4)
				escreva(nd1, " / ")
				leia(nd2)
				limpa()
				menu(4)
				escreva(nd1, " / ",nd2, " = ",m.arredondar( (nd1/nd2), 2))
				pare
	
				caso 123:
				menu2()
				pare
				
				caso contrario :
				limpa()
				escreva("Operação inválida!")
				u.aguarde(2000)
				limpa()
			}
			se(opc1 >= 1 e opc1 <= 4){
				u.aguarde(2000)
				escreva("\n\nQuer continuar? ")
				leia(r)
				r = t.caixa_baixa(r)
				limpa()
						
				se(r == "n" ou r == "nao"){		
					escreva("Saindo do programa")
					para(inteiro c = 0; c<=3 ;c++){
						u.aguarde(1000)
						escreva(".")
					}limpa()
				}
			}

		}enquanto(r == "s" ou r == "sim")
		escreva("Jesus is the way, the true and the life!")
	}


	funcao linha(){
		escreva("\n-----------------------------\n")
	}


	funcao menu(inteiro op){
		se (op == 1){
			escreva("----- ADIÇÃO -----\n")
		}
		senao se (op == 2){
			escreva("----- SUBTRAÇÃO -----\n")
		}
		senao se(op == 3){
			escreva("----- MULTIPLICAÇÃO -----\n")
		}
		senao se(op == 4){
			escreva("----- DIVISÃO -----\n")
		}
		senao se(op == 5){
			escreva("----- POTENCIAÇÃO -----\n")
		}
		senao se(op == 6){
			escreva("----- RADICIAÇÃO -----\n")
		}
		senao se(op == 7){
			escreva("----- FATORIAL -----\n")
		}
		senao se(op == 8){
			escreva("----- LOGARITMO -----\n")
		}
		senao se(op == 9){
			escreva("----- EQUAÇÃO DO 2° -----\n")
		}
		senao se(op == 10){
			escreva("----- TABUADA DE MULTIPLICAR -----\n")
		}
		senao se(op == 11){
			escreva("----- PROCESSO DE FIBONACCI -----\n")
		}
		senao se(op == 12){
			escreva("----- HIPOTENUSA DO TRIÂNGULO -----\n")
		}
		senao se(op == 13){
			escreva("----- FUNÇÕES TRIGONOMÉTRICAS -----\n")
		}
	}


	funcao equacao (inteiro a ,inteiro b ,inteiro c){
		real x1, x2, d
		escreva("\n")
		d = m.potencia(b, 2.0) - 4 * a*c

		u.aguarde(1000)
		se(b > 0 e c > 0){
			escreva("Equação: ",a,"X² + ",b,"X + ",c," = 0\n")
		}
		senao se(b > 0){
			escreva("Equação: ",a,"X² + ",b,"X ",c," = 0\n")
		}
		senao se(c > 0){
			escreva("Equação: ",a,"X² ",b,"X + ",c," = 0\n")
		}senao{
			escreva("Equação: ",a,"X² ",b,"X  ",c," = 0\n")
		}

		u.aguarde(1000)
		escreva("∆ = ",d,"\n")

		u.aguarde(1000)
		se(d == 0){
			x1 = (-b + m.raiz(d, 2.0))/(a*2.0)
			x1 = m.arredondar(x1, 2)
			escreva("X1 = ",x1, "  ^  X2 = ",x1)
		}
		senao se(d > 0){
			x1 = (-b + m.raiz(d, 2.0))/(a*2.0)
			x2 = (-b - m.raiz(d, 2.0))/(a*2.0)

			x1 = m.arredondar(x1, 2)
			x2 = m.arredondar(x2, 2)
			escreva("X1 = ",x1, "  ^  X2 = ",x2)
		}
		senao{
			escreva("NTS! ∆ = ",d)
		}
	}

	

	funcao menu2(){
		
		inteiro opc2
		cadeia r ="s"

		faca{
			escreva("----- Menu de operações -----")
			linha()
			escreva("1- POTENCIAÇÃO")
			linha()
			escreva("2- RADICIAÇÃO")
			linha()
			escreva("3- FATORIAL")
			linha()
			escreva("4- LOGARITMO")
			linha()
			escreva("5- EQUAÇÃO DO 2°")
			linha()
			escreva("6- TABUADA DE MULTIPLICAR")
			linha()
			escreva("7- PROCESSO DE FIBONACCI")
			linha()
			escreva("8- HIPOTENUSA DO TRIÂNGULO")
			linha()
			escreva("9- FUNÇÕES TRIGONOMÉTRICAS")
			linha()
			escreva("0- Sair (OPERAÇÕES ESPECIAIS)")
			linha()
			escreva("Qual operação a efectuar? (1 à 9): ")
			leia(opc2)
			limpa()
	
			se(opc2 > 0 e opc2 <= 9){
				escreva("Processando")
				para(inteiro c = 0; c<=3 ;c++){
						u.aguarde(1000)
						escreva(".")
				}limpa()
			}
			
			escolha(opc2){
				caso 0:
				se(opc2 == 0){
					escreva("Saindo (OPERAÇÕES ESPECIAIS)")
					r = "n"
					para(inteiro c = 0; c<=3 ;c++){
						u.aguarde(1000)
						escreva(".")
					}limpa()
				}
				pare
					
				caso 1:
				real np1, np2
				menu(5)
				leia(np1)
				limpa()
				menu(5)
				escreva(np1, " ^ ")
				leia(np2)
				limpa()
				menu(5)
				escreva(np1, " ^ ",np2, " = ",m.potencia(np1, np2))
				pare
	
				caso 2:
				real nr1, nr2
				menu(6)
				escreva("Índice = ")
				leia(nr1)
				escreva("Radicando = ")
				leia(nr2)
				escreva("\n√",nr2," = ", m.arredondar( m.raiz(nr2, nr1), 2))
				pare
	
				caso 3:
				inteiro nf1, nf2 = 1
				menu(7)
				escreva("!")
				leia(nf1)
				limpa()
				menu(7)
				para(inteiro c = nf1; c >= 1; c--){
					nf2 *= c
				}
				escreva(nf1, "! = ",nf2)
				pare
	
				caso 4:
				real nl1, nl2
				menu(8)
				escreva("log de ")
				leia(nl1)
				limpa()
				menu(8)
				escreva("log de ",nl1, " com base ")
				leia(nl2)
				limpa()
				escreva("----- LOGARITMO DE BASE ",nl2," -----\n")
				escreva("log ",nl1, " = ",m.arredondar( m.logaritmo(nl1, nl2), 2))
				pare
	
				caso 5:
				inteiro a, b, c
				menu(9)
				escreva("aX² + bX + c = 0\n")
				escreva("a = ")
				leia(a)
				escreva("b = ")
				leia(b)
				escreva("c = ")
				leia(c)
				equacao(a, b, c)
				pare
	
				caso 6:
				inteiro n
				menu(10)
				escreva("Insere o número para a tabuada: ")
				leia(n)
				limpa()
				escreva("----- TABUADA DO ",n," -----\n")
				para(inteiro ct = 1; ct<=12 ; ct++){
					escreva(n," x ",ct," = ",n*ct,"\n")
				}
				pare
	
				caso 7:
				
				inteiro t = 0, t1 = 1, t2, pos

				faca{
					menu(11)
					escreva("Qual posição quer ver (1 - 20): ")
					leia(pos)
					se(pos == 1){
						escreva(pos, "° posição do processo de fibonacci é ", t)
					}
					senao se(pos == 2){
						escreva(pos, "° posição do processo de fibonacci é ", t1)
					}
					senao se(pos > 2 e pos <= 20){
						para(inteiro cf = 3; cf <= 20;cf++){
							t2 = t + t1
							se(cf == pos){
								escreva(pos, "° posição do processo de fibonacci é ", t2)
							}
							t = t1
							t1 = t2
						}
					}senao{
						escreva("Posição inválida! Somente (1 à 20)")
						u.aguarde(2000)
						limpa()
					}
					
				}enquanto(pos < 1 ou pos > 20)
				pare

				caso 8:
				inteiro co, ca
				real h
				menu(12)
				escreva("H² = CO² + CA²\n")
	           	escreva("H² = ")
	           	leia(co)
	            	limpa()
	            	menu(12)
	            	escreva("H² = CO² + CA²\n")
	            	escreva("H² = ",co,"² + ")
	            	leia(ca)
	            	limpa()
	            	menu(12)
	            	escreva("H² = CO² + CA²\n")
	            	escreva("H² = ",co,"² + ",ca,"²\n")
	            	co = m.potencia(co, 2)
	            	ca = m.potencia(ca, 2)
	            	h = m.raiz(co + ca , 2)
	            	escreva("H = ",m.arredondar(h, 2))
				pare

				caso 9:
				inteiro angulo
				real radiano
				menu(13)
				escreva("Insira o ângulo: ")
				leia(angulo)
				radiano = angulo * (m.PI/180)

				escreva("\nSeno ",angulo," = ",m.seno(radiano))
				escreva("\nCosseno ",angulo," = ",m.cosseno(radiano))
				escreva("\nTangente ",angulo," = ",m.tangente(radiano))
				pare
				
				caso contrario :
				limpa()
				escreva("Operação inválida!")
				u.aguarde(3000)
				limpa()
			}
			se(opc2 >= 1 e opc2 <= 9){
				u.aguarde(2000)
				escreva("\n\nQuer continuar (OPERAÇÕES ESPECIAIS)? ")
				leia(r)
				r = t.caixa_baixa(r)
				limpa()
	
				se(r == "n" ou r == "nao"){				
					escreva("Saindo (OPERAÇÕES ESPECIAIS)")
					para(inteiro c = 0; c<=3 ;c++){
						u.aguarde(1000)
						escreva(".")
					}limpa()
				}
				
			}
		}enquanto(r == "s" ou r == "sim")
	}
}
