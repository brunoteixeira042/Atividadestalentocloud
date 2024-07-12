def mostrarNumero():
  numero_valido = False
 
  while(numero_valido == False):
    try:
      num = int(input())
      if (num < 0) or (num > 100):
        print("O número precisa ser maior que ou igual 0 ou menor ou igual a 100")
      else:
        print("Boa! Você escolheu o número: " + str(num))
        numero_valido = True
    except:
      print("Precisa digitar um número inteiro")
mostrarNumero()
 