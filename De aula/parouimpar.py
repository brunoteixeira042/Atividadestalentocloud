
def vericadordenum():
    numero = False

    while (numero == False) :
        try:
            num = int(input("Digite um número: "))
            if(num%2 == 0):
                print("Seu numero é par")
                numero == True
            else:
                print("Seu numero precisa ser par")
        except:
            print("Voce não digitou um numero")

vericadordenum()