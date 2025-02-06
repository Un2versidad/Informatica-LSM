# © Programador Franklin Leon 21/10/2022

#Importar Libreria
import random as rnd
import time as Thread
import sys as s

#Barra de Carga
for bar in range(21):
    s.stdout.write("\r[%-20s] %d%%" % ('•'*bar, 5*bar))
    s.stdout.flush()
    Thread.sleep(0.40)

#Msg de Bienvenida + generar No. Random
print("\n\nBienvenido No. " + str(rnd.choice(range(1, 1000)))+ "\n")

#Imprimir Opciones del menu
def Opciones():
    print("--------Menu--------")
    opciones = ["1. Triangulo", "2. Paralelogramo", "3. Rectángulo", "4. Cuadrado", "5. Salir", "--Funciones extra--", "6. Volver al Menu", "7. Seleccion Random"]
    for x in opciones:
             print(x)
             print("--------------------")

#funcion para el calculo del triangulo
def triangulo():
  try:
    print("\nSelecciono la opción del Triangulo\n")
    z=int(input("\nOpciones para calcular: \n1. Area\n2. Perimetro\nSeleccion: "))
    if z==1:
       y=float(input("\nIntroduzca el lado altura: "))
       t=float(input("\nIntroduzca el lado base: "))
       print("\nResultado: ", y*t/2)
    elif z==2: 
       a=float(input("\nIntroduzca el valor de a: "))
       j=float(input("\nIntroduzca el valor b: "))
       p=float(input("\nIntroduzca el valor c: "))
       print("\nResultado: ", a+j+p)
    else:
     print("La opción seleccionada no esta disponible por el momento...")
     triangulo()
  except ValueError: 
         print("Coloque un número, por favor. \n")
         triangulo()

#funcion para el calculo del paralelogramo
def paralelogramo():
  try:
    print("\nSelecciono la opción del Paralelogramo\n")
    z=int(input("\nOpciones para calcular:\n1. Area\n2. Perimetro\nSeleccion: "))
    if z==1:
       q=float(input("\nIntroduzca el lado altura: "))
       t=float(input("\nIntroduzca el lado base: "))
       print("\nResultado: ",q*t)
    elif z==2: 
       a=float(input("\nIntroduzca el valor de a: "))
       b=float(input("\nIntroduzca el valor b: "))
       print("\nResultado: ",2*(a+b))
    else:
     print("La opción seleccionada no esta disponible por el momento...")
     paralelogramo()
  except ValueError: 
         print("Coloque un número, por favor. \n")
         paralelogramo()

#funcion para el calculo del rectangulo
def rectangulo():
  try:
    print("Selecciono la opción del Rectángulo\n")
    z=int(input("Opciones para calcular: \n1. Area\n2. Perimetro\nSeleccion: "))
    if z==1:
       y=float(input("\nIntroduzca el lado altura: "))
       t=float(input("\nIntroduzca el lado base: "))
       print("\nResultado: ",y*t)
    elif z==2: 
       a=float(input("\nIntroduzca el valor de a: "))
       j=float(input("\nIntroduzca el valor b: "))
       print("\nResultado: ",2*(a+j))
    else:
     print("La opción seleccionada no esta disponible por el momento...")
     rectangulo()
  except ValueError: 
        print("Coloque un número, por favor. \n")
        rectangulo()

#funcion para el calculo del rectangulo
def cuadrado():
  try:
    print("Selecciono la opción del Cuadrado\n")
    z=int(input("Opciones para calcular: \n1. Area\n2. Perimetro\nSeleccion: "))
    if z==1:
       y=float(input("\nIntroduzca la distancia de un lado del cuadrado: "))
       print("\nResultado: ",y*y)
    elif z==2: 
       a=float(input("\nIntroduzca el valor de a: "))
       print("\nResultado: ",4*y)
    else:
     print("La opción seleccionada no esta disponible por el momento...")
     rectangulo()
  except ValueError: 
        print("Coloque un número, por favor. \n")
        rectangulo()

#funcion para la seleccion aleatoria
def randomselect():
    lista = [triangulo, rectangulo, paralelogramo, cuadrado]
    rnd.choice(lista)()
      
#funcion de Opciones a elegir 
def Seleccion(): 
  try:
    num = int(input("\nIntroduzca algun número del menu para seleccionar:\n"))
#Selección del Menu
    if num == 1:
     triangulo()
    elif num == 2:
     paralelogramo()
    elif num == 3:
     rectangulo()
    elif num == 4:
     cuadrado()
    elif num == 5:
     Thread.sleep(100)
     exit("Saliendo del programa...")
    elif num == 6:
     Opciones()
     Seleccion()
    elif num == 7:
     randomselect()
    else:
     print("La opción seleccionada no esta disponible por el momento...")
     Opciones()
     Seleccion()
  except ValueError: 
         print("Coloque un número, por favor. \n")
         Opciones()
         Seleccion()

#funcion para iniciar el programa
def run_program():
    Opciones()
    Seleccion()

run_program()