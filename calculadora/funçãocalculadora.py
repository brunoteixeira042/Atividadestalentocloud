
def calculadora(num1, num2,numOperacao):
    if(int(numOperacao)==1):
        resultado = print("o resultado da operação de soma: ", float(num1)+float(num2))
    elif(int(numOperacao)==2):
        resultado = print("o resultado da operação de subtração: ", float(num1)-float(num2))
    elif(int(numOperacao)==3):
       resultado = print("o resultado da operação de multiplicação: ", float(num1)*float(num2))
    elif(int(numOperacao)==4):
        resultado = print("o resultado da operação de divisão : ",float(num1)/float(num2))
    else:
        resultado = print("resultado: ",0)  
    return resultado    

calculadora(4,3,4)
