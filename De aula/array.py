
def acharElemento(nome, array):
    achou = False

    for i in range(len(array)):
     if array[i] == nome:
        achou = True
    
    if (achou == False):
        print("Elemento não encontrado",nome)
    else:
        print("Achamos o elemento", nome)            




array = ["Bruno","Sousa"]

nome = input("Digite o nome: ")
acharElemento(nome,array)       