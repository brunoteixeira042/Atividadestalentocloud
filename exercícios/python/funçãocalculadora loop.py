"""Faça uma função calculadora que os números e as operações serão feitas pelo usuário. O código deve ficar rodando infinitamente até que o usuário escolha a opção de sair. No início, o programa mostrará a seguinte lista de operações:

1: Soma
2: Subtração
3: Multiplicação
4: Divisão
0: Sair

Digite o número para a operação correspondente e caso o usuário introduza qualquer outro, o sistema deve mostrar a mensagem “Essa opção não existe” e voltar ao menu de opções.

Após a seleção, o sistema deve pedir para o usuário inserir o primeiro e segundo valor, um de cada. Depois precisa executar a operação e mostrar o resultado na tela. Quando o usuário escolher a opção “Sair”, o sistema irá parar.

É necessário que o sistema mostre as opções sempre que finalizar uma operação e mostrar o resultado
"""


def calculadora():
    num1 = int(input("Digite o primeiro numero: "))
    num2 = int(input("Digite o segundo numero: "))
    numOperacao = input("Digite a operação: \n 1.adição \n 2.subtração \n 3.Multiplicação \n 4.Divisão \n 0.Sair \n : ")
    while True:
        if(int(numOperacao)==1):
            resultado = print("o resultado da operação de soma: ", float(num1)+float(num2))
        elif(int(numOperacao)==2):
            resultado = print("o resultado da operação de subtração: ", float(num1)-float(num2))
        elif(int(numOperacao)==3):
            resultado = print("o resultado da operação de multiplicação: ", float(num1)*float(num2))
        elif(int(numOperacao)==4):
            resultado = print("o resultado da operação de divisão : ",float(num1)/float(num2))
        elif(int(numOperacao)==0):
            resultado = print("saindo..: ")
            break
        else:
            print("operação invalida")

        num1 = int(input("Digite o primeiro numero: "))
        num2 = int(input("Digite o segundo numero: "))
        numOperacao = input("Digite a operação: \n 1.adição \n 2.subtração \n 3.Multiplicação \n 4.Divisão \n 0.Sair")
    return resultado        
calculadora()
