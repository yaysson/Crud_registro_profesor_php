#Hallar el numero menor de n numeros
print("Hallar el numero menor")
limit = int(input("Ingresa el numero limite para hallar el menor: "))
num = int(input("Ingresa un numero: "))

for i in range(1, limit, 1):
    menor = int(input("Ingresa un numero: "))
    if menor < num:
        num = menor
    
print("El numero menor del limite de {0} es: {1}".format(limit, num))