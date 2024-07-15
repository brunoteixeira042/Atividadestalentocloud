
def calcularIdade():
    while True:
        try:
            nome = str(input("Digite seu nome: "))
            anoNascimento = int(input("Digite o ano de nascimento: ") )
            if 1922<=anoNascimento <2022:
                print(nome,"completou: " ,2022-(anoNascimento),"anos")
                break
            else:
                print("ano de nascimento não é valido")
        except:
                print("campos precisam ser preenchidos ")

calcularIdade()