#esta es la forma de comentariar
#nombre es la variable 0
nombre = input("Ingrese su nombre")
#apellido es la variable 1
apellido = input("Ingrese su apellido")
#edad = input("Ingrese su edad")

print ("Hola {0} {1}, Como estas?".format(nombre, apellido))

edad = input("Ingrese su edad")

if edad <= 18:
    print("Usted es menor de edad")
else:
    print("Usted es mayor de edad")