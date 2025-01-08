using System;
using System.Math;
using System.Threading;
namespace Calculadora{
	class projeto{
		static void Main(){
			string r = "s";
			int opc;
			double n1, n2;
			Console.WriteLine("*****************************");
			Console.WriteLine("*   Calculadora Básica SML  *");
			Console.WriteLine("*****************************");

			do{
				Console.Write("----- Menu de operações -----");
				linha();
				Console.Write("1- ADIÇÂO");
				linha();
				Console.Write("2- SUBTRAÇÂO");
				linha();
				Console.Write("3- MULTIPLICAÇÂO");
				linha();
				Console.Write("4- DIVISÂO");
				linha();
				Console.Write("5- POTENCIAÇÂO");
				linha();
				Console.Write("6- RADICIAÇÂO");
				linha();
				Console.Write("7- FATORIAL");
				linha();
				Console.Write("8- LOGARITMO");
				linha();
				Console.Write("9- EQUAÇÂO DO 2º");
				linha();
				Console.Write("10- TABUADA DE MULTIPLICAR");
				linha();
				Console.Write("11- PROCESSO DE FIBONACI");
				linha();
				Console.Write("0- Sair");
				linha();
				Console.Write("Qual operação a efectuar? (1 - 11): ");
				opc = ConvertToInt32(Console.ReadLine());
				Console.Clear();

				if(opc > 0 && opc <= 11){
					Console.Write("Processando");
					for(int c = 0; c<=3 ;c++){
							Thread.Sleep(1000);
							Console.Write(".");
						}Console.Clear();
				}

				switch(opc){
					case 0:
					if(opc == 0){
						Console.Write("Saindo");
						r = "n";
						for(int c = 0; c<=3 ;c++){
							Thread.Sleep(1000);
							Console.Write(".");
						}Console.Clear();
					}
					break;

					case 1:
					menu(1);
					n1 = ConvertToDouble64(Console.ReadLine());
					Console.Clear();
					menu(opc);
					Console.Write(n1, " + ");
					n2 = ConvertToDouble64(Console.ReadLine());
					Console.Clear();
					menu(opc);
					Console.Write(n1 + " + " + n2 +  " = " + (n1+n2));
					break;
					
					case 2:
					menu(2);
					n1 = ConvertToDouble64(Console.ReadLine());
					Console.Clear();
					menu(opc);
					Console.Write(n1 + " - ");
					n2 = ConvertToDouble64(Console.ReadLine());
					Console.Clear();
					menu(opc);
					Console.Write(n1 + " - " + n2 + " = " + (n1-n2));
					break;

					case 3:
					menu(3);
					n1 = ConvertToDouble64(Console.ReadLine());
					Console.Clear();
					menu(opc);
					Console.Write(n1 + " x ");
					n2 = ConvertToDouble64(Console.ReadLine());
					Console.Clear();
					menu(opc);
					Console.Write(n1 + " x " + n2 + " = " + (n1*n2));
					break;
					
					case 4:
					menu(4);
					n1 = ConvertToDouble64(Console.ReadLine());
					Console.Clear();
					menu(opc);
					Console.Write(n1 + " / ");
					n2 = ConvertToDouble64(Console.ReadLine());
					Console.Clear();
					menu(opc);
					Console.Write(n1 + " / " + n2 + " = " + (Math.Round((n1/n2), 2)));
					break;

		case 5:
		menu(5);
		n1 = ConvertToDouble64(Console.ReadLine());
		Console.Clear();
		menu(opc);
		Console.Write(n1 + " ^ ");
		n2 = ConvertToDouble64(Console.ReadLine());
		Console.Clear();
		menu(opc);
		Console.Write(n1 + " ^ " + n2 + " = " + (Math.Pow(n1, n2)));
		break;

		case 6:
		menu(6);
		Console.Write("índice = ");
		n1 = ConvertToDouble64(Console.ReadLine());
		Console.Write("Radicando = ");
		n2 = ConvertToDouble64(Console.ReadLine());
		Console.Write("√" + n2 + " = " + (Math.Round(Math.Sqrt(n2, n1), 2)));
		break;

		case 7:
		n2 = 1;
		menu(opc);
		Console.Write("!");
		n1 = ConvertToDouble64(Console.ReadLine());
		menu(opc);
		for(int c = n1; c >= 1; c--){
			n2 *= c;
		}
		Console.Write(n1 + "! = " + n2);
		break;

		case 8:
		menu(opc);
		Console.Write("log de ");
		n1 = ConvertToDouble64(Console.ReadLine());
		Console.Clear();
		menu(opc);
		Console.Write("log de " + n1 + " com base ");
		n2 = ConvertToDouble64(Console.ReadLine());
		Console.Clear();
		menu(opc);
		Console.Write("log de " + n1 + " com base " + n2 + " = " + (Math.Round(Math.Log(n1, n2), 2)));
		break;

		case 9:
		int a, b, c;
		menu(opc);
		Console.Write("a = ");
		a = ConvertToInt32(Console.ReadLine());
		Console.Write("b = ");
		b = ConvertToInt32(Console.ReadLine());
		Console.Write("c = ");
		c = ConvertToInt32(Console.ReadLine());
		equacao(a, b, c);
		break;

		case 10:
		int n;
		menu(10);
		Console.Write("Insere o número para a tabuada: ");
		n = ConvertToInt32(Console.ReadLine());
		Console.Clear();
		Console.WriteLine("----- TABUADA DO " + n + " -----");
		for(int ct = 1; ct<=12 ; ct++){
			Console.Write(n + " x " + ct + " = " + (n*ct));
		}
		break;

		case 11:
		menu(11);
		int t = 0, t1 = 1, t2, pos;
		Console.Write("Qual posição quer ver (1 - 20): ");
		pos = ConvertToInt32(Console.ReadLine());
		if(pos == 1){
			Console.Write(pos + "ª posição do processo de fibonacci é " + t);
		}
		else if(pos == 2){
			Console.Write(pos + "ª posição do processo de fibonacci é " + t1);
		}
		else if(pos > 2 && pos <= 20){
			for(int cf = 3; cf <= 20;cf++){
				t2 = t + t1;
				if(cf == pos){
					Console.Write(pos + "ª posição do processo de fibonacci é " + t2);
				}
				t = t1;
				t1 = t2;
			}
		}
		break;
					
					default:
					Console.Clear();
					Console.Write("Operação inálida");
					Thread.Sleep(2000);
					Console.Clear();
				}

				if(opc >= 1 && opc <= 11){
					Thread.Sleep(2000);
					Console.WriteLine("Quer continuar? ");
					r = Console.ReadLine();
					r = r.ToLower();
					Console.Clear();

					if(r == "n" || r == "nao"){
						Console.Write("Saindo");
						for(int c = 0; c<=3 ;c++){
							Thread.Sleep(1000);
							Console.Write(".");
						}Console.Clear();
					}
				}
				

			}while(r == "s" || r == "sim");
			Console.Write("Jesus is the way, the true and the life!");
		}

		void linha(){
			Console.Write("\n-----------------------------\n");
		}

		void menu(int op){
			if (op == 1){
				Console.Write("----- ADIÇÃO -----\n");
			}
			else if(op == 2){
				Console.Write("----- SUBTRAÇÃO -----\n");
			}
			else if(op == 3){
				Console.Write("----- MULTIPLICAÇÃO -----\n");
			}
			else if(op == 4){
				Console.Write("----- DIVISÃO -----\n");
			}
			else if(op == 5){
				Console.Write("----- POTENCIAÇÃO -----\n");
			}
			else if(op == 6){
				Console.Write("----- RADICIAÇÃO -----\n");
			}
			else if(op == 7){
				Console.Write("----- FATORIAL -----\n");
			}
			else if(op == 8){
				Console.Write("----- LOGARITMO -----\n");
			}
			else if(op == 9){
				Console.Write("----- EQUAÇÃO DO 2º -----\n");
			}
			else if(op == 10){
				Console.Write("----- TABUADA DE MULTIPLICAR -----\n");
			}
			else if(op == 11){
				Console.Write("----- PROCESSO DE FIBONACI -----\n");
			}
		}

		void equacao (float a ,float b ,float c){
			float x1, x2, d;
			Console.Write("\n");
			d = Math.Pow(b, 2.0) - 4 * a*c;
			if(d == 0){
				x1 = (-b + m.raiz(d, 2.0))/(a*2.0);
				x1 = Math.Round(x1);
				escreva("X1 = " + x1 + "  ^  X2 = " + x1);
			}
			else if(d > 0){
				x1 = (-b + m.raiz(d, 2.0))/(a*2.0);
				x2 = (-b - m.raiz(d, 2.0))/(a*2.0);
				x1 = Math.Round(x1);
				x2 = Math.Round(x2);
				escreva("X1 = " + x1 + "  ^  X2 = " + x2);
			}
			else{
				escreva("NTS! ∆ = " + d);
			}
		}

	}
}