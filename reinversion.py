#Calcular la reinversion por mes al 2% durante un año
print("Reinversion por mes")
inversion = float(input("Ingrese su inversion: "))

for i in range(0, 12, 1):
    ganacia = inversion * 0.02
    inversion += ganacia
    
print("La ganacia por mes durante un ano es: ${0}".format(inversion))