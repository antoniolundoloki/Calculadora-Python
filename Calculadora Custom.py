from customtkinter import *


def clique(valor):
    if valor == '=':
        try:
            resultado = eval(entrada.get().replace(',', '.').replace('x', '*').replace('÷', '/'))
            entrada.delete(0, END)
            resultado = str(resultado).replace('.', ',')
            entrada.insert(0, resultado)
        except:
            entrada.delete(0, END)
            entrada.insert(0, 'Erro')
    else:
        entrada.insert(END, valor)
def apagar(letra):
    if letra == 'c':
        entrada.delete(0, END)
    elif letra == 'd':
        total = len(entrada.get())
        entrada.delete(total-1)


mas = CTk()
mas.geometry('300x370+500+100')
mas.title('Calculadora Custom')
mas.resizable(False, False)

f = CTkFrame(mas, width=290, height=340)
f.place(x=5, y=5)


entrada = CTkEntry(f, width=270, height=50, justify='right', font=('Arial', 20), placeholder_text='Resultado da operação    ')
entrada.place(x=10, y=20)


botoes = [('7', 10, 90), ('8', 80, 90), ('9', 150, 90), ('÷', 220, 90),
          ('4', 10, 140), ('5', 80, 140), ('6', 150, 140), ('x', 220, 140),
          ('1', 10, 190), ('2', 80, 190), ('3', 150, 190), ('-', 220, 190),
          (',', 10, 240), ('0', 80, 240), ('=', 150, 240), ('+', 220, 240)]

for item, x, y in botoes:
    bt = CTkButton(f, text=item, width=60, height=40, command=lambda valor=item: clique(valor), font=('Arial', 16, 'bold'))
    bt.place(x=x, y=y)

bt_clear = CTkButton(f, text='C', width=130, height=40, command=lambda: apagar('c'), font=('Arial', 16, 'bold'))
bt_clear.place(x=10, y=290)

bt_deletar = CTkButton(f, text='<-', width=130, height=40, command=lambda: apagar('d'), font=('Arial', 16, 'bold'))
bt_deletar.place(x=150, y=290)

mas.mainloop()

