algoritmo "Antonio Lundoloki"
var
     nf, f, cont, opc, nt, ct: inteiro
     t, t1, t2, pose, cf, angulo: inteiro
     a, b, c, d, x1, x2: real
     n1, n2, h, radiano: real
     r, re: caracter
     
inicio

     procedimento linha()
     inicio
           escreval("-----------------------------")
     fimprocedimento

     procedimento menu(op: inteiro)
     inicio
           limpatela
           se op = 1 entao
              escreval("----- ADIÇÃO -----")
           senao
           se op = 2 entao
              escrevaL("----- SUBTRAÇÃO -----")
           senao
           se op = 3 entao
              escreval("----- MULTIPLIÇÃO -----")
           senao
           se op = 4 entao
              escrevaL("----- DIVISÃO -----")
           senao
           se op = 5 entao
              escreval("----- EXPONENCIAÇÃO -----")
           senao
           se OP = 6 entao
              escreval("----- RAIZ QUADRADA -----")
           senao
           se op = 7 entao
              escreval("----- FATORIAL -----")
           senao
           se op = 8 entao
              escreval("----- LOGARITMO DE BASE 10 -----")
           senao
           se op = 9 entao
              escreval("----- EQUAÇÃO DO 2Âº -----")
           senao
           se op = 10 entao
              escreval("----- TABUADA DE MULTIPLICAR -----")
           senao
           se op = 11 entao
             escreval("----- PROCESSO DE FIBONACCI -----")
           senao
           se op = 12 entao
              escreval("----- HIPOTENUSA DO TRIÂNGULO -----")

           fimse
           fimse
           fimse
           fimse
           fimse
           fimse
           fimse
           fimse
           fimse
           fimse
           fimse
           fimse
     fimprocedimento


     procedimento menu2()
     inicio
     repita
            escreval("-------- MENU DE OPERAÇÕES --------")
            linha()
            escreval("1. EXPONENCIAÇÃO ")
            linha()
            escreval("2. RAIZ QUADRADA ")
            linha()
            escreval("3. FATORIAL ")
            linha()
            escreval("4. LOGARITMO DE BASE 10")
            linha()
            escreval("5. EQUAÇÃO DO 2º")
            linha()
            escreval("6. TABUADA DE MULTIPLICAR")
            linha()
            escreval("7. PROCESSO DE FIBONACCI")
            linha()
            escreval("8. HIPOTENUSA DO TRIANGULO")
            linha()
            escreval("0. Sair (OPERAÇÕES ESPECIAIS)")
            linha()
            escreva("Qual operação efectuar? (1 - 8): ")
            leia(opc)
            
            escolha (opc)
            caso 0
                 limpatela
                 escreval()
                 re <- "n"
                 
            caso 1
                 menu(5)
                 leia(n1)
                 limpatela
                 menu(5)
                 escreva(n1, " ^ ")
                 leia(n2)
                 limpatela
                 menu(5)
                 escreval(n1, " ^ ",n2 ," = ",n1 ^ n2)

            caso 2
                 menu(6)
                 escreva("RaizQ de ")
                 leia(n1)
                 limpatela
                 menu(6)
                 escreval("RaizQ de ",n1, " = ",raizQ(n1))

            caso 3
                 menu(7)
                 escreva("!")
                 leia(nf)
                 limpatela
                 f <- 1
                 para cont <- nf ate 1 passo -1 faca
                      f <- f * cont
                 fimpara
                 menu(7)
                 escreval(nf,"! = ",f)

            caso 4
                 menu(8)
                 escreva("log de ")
                 leia(n1)
                 limpatela
                 menu(8)
                 escrevaL("log",n1, " = ",log(n1))

            caso 5
                 menu(9)
                 escreval("aXÂ² + bX + c = 0")
                 escreva("a = ")
                 leia(a)
                 escreva("b = ")
                 leia(b)
                 escreva("c = ")
                 leia(c)
                 d <- b^2 - 4 * a*c

                 escreval()
                 se (b > 0) e (c > 0)entao
                    escreval("Equação: ",a,"X² +",b,"X +",c," = 0")
                 senao
                 se c > 0 entao
                    escreval("Equação: ",a,"X² ",b,"X +",c," = 0")
                 senao
                 se (b > 0 ) entao
                    escreval("Equação: ",a,"X² +",b,"X ",c," = 0")
                 senao
                    escreval("Equação: ",a,"X² ",b,"X ",c," = 0")
                 fimse
                 fimse
                 fimse

                 escreval("DELTA = ",d)
                 se d = 0 entao
                    x1 <- (-b + d) / (a*2)
                    escreval("X1 = ",x1, " ^ X2 = ",x1)
                 senao
                 se d > 0 entao
                    x1 <- (-b + raizQ(d))/(a*2)
                    x2 <- (-b - raizQ(d))/(a*2)
                    escreval("X1 = ",x1, " ^ X2 = ",x2)
                 senao
                      escreval("NTS!")
                 fimse
                 fimse

            caso 6
                 menu(10)
                 escreva("Qual o numero para a tabuada: ")
                 leia(nt)
                 menu(10)
                 para ct <- 1 ate 12 faca
                      escreval(nt," x ",ct," = ",nt*ct)
                 fimpara

            caso 7
                 menu(11)
                 repita
                 escreva("Qual posição quer ver (1 ï¿½ 20): ")
                 leia(pose)
                 
                 se (pose < 0) ou (pose > 20) entao
                    escreval("Erro! Insira de 1 Ã¡ 20.")
                 fimse
                 
                 ate (pose > 0) e (pose < 21)
                 limpatela
                 
                 escreval("Escolheu a posição ",pose)
                 t <- 0
                 t1 <- 1
                 se (pose = 1) entao
                    escreval(pose, "1ª posição do processo de fibonacci ", t)
                 senao
                 se (pose = 2) entao
                    escreval(pose, "2ª posição do processo de fibonacci ", t1)
                 senao
                 se (pose > 2) entao
                   para cf <- 3 ate 20 faca
                        t2 <- t + t1
                        se cf = pose entao
                           escreval(pose, "ª posição do processo de fibonacci ", t2)
                        fimse
                        t <- t1
                        t1 <- t2
                   fimpara
                 fimse
                 fimse
                 fimse
                 
            caso 8
            menu(12)
            escreval("H² = CO² + CA²")
            escreva("H² = ")
            leia(nf)
            limpatela
            menu(12)
            escreval("H² = CO² + CA²")
            escreva("H² = ",nf,"² + ")
            leia(nt)
            limpatela
            menu(12)
            escreval("H² = CO² + CA²")
            escreval("H² = ",nf,"² + ",nt,"²")
            h <- raizq((nf*nf)+(nt*nt))
            escreva("H = ",h)


            outrocaso
                      escreval("Operação invalida")
            fimescolha
            
            se opc <> 0 entao
               escreval()
               escreva("Quer continuar (OPERAÇÕES ESPECIAIS)?: ")
               leia(re)
               limpatela
               re <- minusc(re)
               opc <- 0
               se re = "n" entao
                 escreva()
               fimse
            fimse
            ate re = "n"
     fimprocedimento
     
     
            escreval("**********************************")
            escreval("**    CALCULADORA BASICA SML    **")
            escreval("**********************************")
            
      repita
            escreval("-------- MENU DE OPERAÇÕES --------")
            linha()
            escreval("1. ADIÇÃO ")
            linha()
            escreval("2. SUBTRAÇÃO ")
            linha()
            escreval("3. MULTIPLICAÇÃO ")
            linha()
            escreval("4. DIVISÃO ")
            linha()
            escreval("123. OPERAÇÕES ESPECIAIS")
            linha()
            escreval("0. Sair ")
            linha()
            escreva("Qual operação efectuar? (0 - 4): ")
            leia(opc)
            
            escolha (opc)
            caso 0
                 limpatela
                 escreva("Saindo...")
                 r <- "n"
            caso 1
                 menu(1)
                 leia(n1)
                 limpatela
                 menu(1)
                 escreva(n1, " + ")
                 leia(n2)
                 limpatela
                 menu(1)
                 escreval(n1, " + ",n2 ," = ",n1 + n2)
                 
            caso 2
                 menu(2)
                 leia(n1)
                 limpatela
                 menu(2)
                 escreva(n1, " - ")
                 leia(n2)
                 limpatela
                 menu(2)
                 escreval(n1, " - ",n2 ," = ",n1 - n2)

            caso 3
                 menu(3)
                 leia(n1)
                 limpatela
                 menu(3)
                 escreva(n1, " x ")
                 leia(n2)
                 limpatela
                 menu(3)
                 escreval(n1, " x ",n2 ," = ",n1 * n2)
                 
            caso 4
                 menu(4)
                 leia(n1)
                 limpatela
                 menu(4)
                 escreva(n1, " / ")
                 leia(n2)
                 limpatela
                 menu(4)
                 escreval(n1, " / ",n2 ," = ",n1 / n2)
                 

            caso 123
            limpatela
            menu2()
            outrocaso
                      escreval("Operaçõo invalida")
            fimescolha
            
            se opc <> 0 entao
               escreval()
               escreva("Quer continuar? (N/S): ")
               leia(r)
               limpatela
               r <- minusc(r)

               se (r = "n") entao
                 escreva("Saindo...")
               fimse
            fimse
      ate (r="n")
      
fimalgoritmo