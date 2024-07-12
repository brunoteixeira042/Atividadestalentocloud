
def vericadordedivisor():
    while True:
        try:
            num = int(input("Digite um numero divisível por 2 e 3: "))
            if (num%2== 0) and (num%3==0):
                print("você escolheu o numero",num)
                break
            else:
                print("Número não é divisível por 2 e 3")    
        except:
           print("opção invalida")

vericadordedivisor()