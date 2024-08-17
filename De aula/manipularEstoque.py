
def manipular_estoque(arr):
  fechar = False
  while(fechar == False):
    print("O que deseja fazer? Digite o número: ")
    print("1. Ver produtos em estoque")
    print("2. Alterar produto")
    print("3. Fechar o sistema")
    print("4. Adicionar produto ao estoque")

    acao = input()

    if(acao == "1"):
      print("Produtos em estoque: ")
      for i in range(len(arr)):
        print(str(i) + " - " + arr[i])

    elif(acao == "2"):
      print("Qual é o índice do produto que deseja alterar? ")
      indice = int(input())
      print("Qual é o novo produto?")
      novo_produto = input()
      arr[indice] = novo_produto
      print("Produto " + novo_produto + " adicionado com sucesso")

    elif(acao == "3"):
      print("Fechando o sitema")
      fechar = True

    elif(acao == "4"):
      ElementoAdicionar = input("Digite o elemento a ser adicionado: ")
      arr.append(ElementoAdicionar)
      print("Elemento",ElementoAdicionar,"foi adicionado")

    else:
      print("Por favor informe um código válido")

produtos = ["açai", "pão", "manteiga", "arroz","queijo"]

manipular_estoque(produtos)