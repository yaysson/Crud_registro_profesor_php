#Calcular salario semanal de un obrero
horas = input("Ingrese horas trabajadas")

if horas <= 40:
    salario = horas * 16
    print("Las horas trabajadas fueron {0} y su salario es ${1}".format(horas, salario))
else:
    extra = horas - 40
    sal1 = 40 * 16
    sal2 = extra * 20
    salario = sal1 + sal2
    print("Las horas trabajdas fueron {0}, sus horas extra son {1} y su salario es ${2}".format(horas, extra, salario))