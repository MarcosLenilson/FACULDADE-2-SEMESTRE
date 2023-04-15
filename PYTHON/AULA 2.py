import random

#! ESTRUTURA DE DADOS

#! 1ª PARTE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

#! Algoritmos de Busca = São algoritmos que resolvem problemas relacionados ao encontro de valores em uma estrutura de dados.

# * Operações IN e NOT = Verifica se há ou pertence valores em uma sequencia.

# EXEMPLO:

nomes = 'Marcos Lenilson Alves Duarte Janayna de Oliveira Dagoberto Duarte Keryn Hapuque Oliveira Duarte'.split()
print('Marcos' in nomes, 'Duarte' in nomes)  # Retorna True ou False
print(nomes)

#!------------------------------------------------------------------------------------------------------------------

# * Busca Linear (ou BUSCA SEQUENCIAL) <<< LIVRO TEXTO => UNIDADE 2 - SEÇÃO 2 >>>

#! Como o nome sugere, uma busca linear (ou exaustiva) simplesmente percorre os elementos da sequência, um ARRAY por exemplo (ITEM A ITEM) procurando aquele de destino.

# EXEMPLO:


def busca_Linear(lista, valor):
    for num in lista:
        if valor == num:
            return True
    return False


# Cria uma lista(array) com 50 valores até 100 de forma aleatória (randomica)
lista = random.sample(range(100), 50)
print(sorted(lista))
print(busca_Linear(lista, 10))

#! Na Busca linear podemos também saber a posição do elemento que buscamos com a função INDEX().

# EXEMPLO:

lista = random.sample(range(100), 50)
print(sorted(lista))
print(lista.index(5))

vogais = 'aeiou'
res = vogais.index('i')
print(res)


vogais = 'aeiou'


def procurar_valor(lista, valor):
    tamanho_lista = len(lista)
    for i in range(tamanho_lista):
        if valor == lista[i]:
            return i
    return None


resultado = procurar_valor(lista=vogais, valor='o')

if resultado != None:
    print(f'Valor encontrado na posição {resultado}')
else:
    print(f'Valor não encontrado')


#! 2ª PARTE <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

#! Análise da complexidade = Estuda da viabilidade de um algoritmo, em termos de espaço e tempo de processamento. É feita em duas dimensões ESPAÇO E TEMPO.


# * Busca Binária = Os valores precisam estar em ordem <<< LIVRO TEXTO => UNIDADE 2 - SEÇÃO 2 >>>

def executar_busca_binaria(lista, valor):
    minimo = 0
    maximo = len(lista) - 1

    while minimo <= maximo:

        # Encontra o elemento que divide a lista ao meio
        meio = (minimo + maximo) // 2

        # Verifica se o valor procurado está a esquerda ou direita do valor central
        if valor < lista[meio]:
            maximo = meio - 1
        elif valor > lista[meio]:
            minimo = meio + 1
        else:
            return True  # Se o valor for encontrado para aqui
    return False  # Se chegar até aqui, significa que o valor não foi encontrado


lista = list(range(1, 50))
print(lista)
print('\n', executar_busca_binaria(lista=lista, valor=10))
print('\n', executar_busca_binaria(lista=lista, valor=200))


#! EXERCÍCIO 1 LIVRO TEXTO UNIDADE 2 SEÇÃO 2 => FOCO NO MERCADO DE TRABALHO
#! Lista de CPFs => Eliminar duplicados e tirar pontos, traço e verificar se tem 11 dígitos.

# Como você fará o dedup usando um algoritmo de busca?
# É mais apropriado usar uma busca linear ou binária?
# * Resp: a que custo daria certo a busca binária?
# Como vai remover os caracteres ponto e traço que costumam aparecer nos CPFs? #! Método REPLACE()
# Como vai verificar se os CPFs possuem 11 dígitos?


# $ Parte 1 - Implementar o algoritmo de busca linear
def busca_linear_cpf(lista, valor):

    tamanho_lista = len(lista)

    for i in range(tamanho_lista):
        if valor == lista[i]:
            return True
    return False


# $ Parte 2 - Criar a função que faz o dedup e os tratamentos no cpf
def criar_lista_dedup(lista):
    lista_dedup = []

    for cpf in lista:
        cpf = str(cpf)  # * Converto em STRINGS
        cpf = cpf.replace("-", "").replace(".", "")
        if len(cpf) == 11:
            if not busca_linear_cpf(lista_dedup, cpf):
                lista_dedup.append(cpf)

    return lista_dedup


# $ Parte 3 - Criar uma função de teste
def testar_funcao(lista_cpfs):
    lista_dedup = criar_lista_dedup(lista_cpfs)
    print(lista_dedup)


lista_cpfs = ['111.111.111-11', '11111111111', '222.222.222-22',
              '333.333.333-33', '22222222222', '444.44444']
testar_funcao(lista_cpfs)


#! PAREI AQUI =>>> LIVRO TEXTO UNIDADE 2 SEÇÃO 3 => NÃO PODE FALTAR

#! ALGORITMOS DE ORDENAÇÃO

lista = [10, 4, 1, 15, -3, 2, -56, 565, 48, 99, 4, 0]
print('lista = ', lista, '\n')

lista_ordenada1 = sorted(lista)  # * Método sorted() coloca em ordem os numeros
print('lista_ordenada1 = ', lista_ordenada1)

# * O método sort() faz a ordenação na lista original com retorno None.
lista_ordenada2 = lista.sort()
print('lista_ordenada2 = ', lista_ordenada2)

print('lista = ', lista)

# * Esses métodos são 'prontos' mas o que temos que aprender é criar um algoritmo que faça isso por nós

# EXEMPLO: #! OBS: Só funciona com uma lista de 2 itens

lista = [7, 4]

if lista[0] > lista[1]:
    # * Variável auxiliar para não perder o valor da posição lista[1]
aux = lista[1]
lista[1] = lista[0]
lista[0] = aux

print(lista)

lista = [5, -1]

if lista[0] > lista[1]:
    lista[0], lista[1] = lista[1], lista[0]

print(lista)  # ! [-1, 5]

# * PARA IMPLEMENTAR UM ALGORITMO NA QUAL USA POUCOS RECURSOS DA MÁQUINA, TEMOS QUE ESTUDAR UM POUCO SOBRE AS
#!COMPLEXIDADES DOS ALGORITMOS
# * PARA OS PRÓXIMOS EXEMPLOS VEREMOS AS SEGUINTES COMPLEXIDADES:

#! 1 =>> COMPLEXIDADE O(N2): neste grupo estão os algoritmos selection sort, bubble sort e insertion sort. Esses algoritmos são lentos para ordenação de grandes listas, porém são mais intuitivos de entender e possuem uma codificação mais simples.

#! 2 =>> COMPLEXIDADE O(N log N): deste grupo, vamos estudar os algoritmos merge sort e quick sort. Tais algoritmos possuem performance superior, porém são um pouco mais complexos de serem implementados.


#! SELECTION SORT (ORDENAÇÃO POR SELEÇÃO)
# * O algoritmo SELECTION SORT recebe esse nome, porque faz a ordenação sempre escolhendo o menor valor para ocupar uma determinada posição.

# EXEMPLO:

def executar_selection_sort(lista):
    n = len(lista)
    for i in range(0, n):
        index_menor = i
        for j in range(i+1, n):
            if lista[j] < lista[index_menor]:
                index_menor = j
            lista[i], lista[index_menor] = lista[index_menor], lista[i]
    return lista


lista = [10, 9, 5, 8, 11, 3]
# ? print(executar_selection_sort(lista))


#! BUBBLE SORT (ORDENAÇÃO POR "BOLHA")
# * O algoritmo BUBBLE SORT (algoritmo da bolha) recebe esse nome porque faz a ordenação sempre a partir do início da lista, comparando um valor com seu vizinho.

def executar_bubble_sort(lista):
    n = len(lista)
    for i in range(n-1):
        for j in range(n-1):
            if lista[j] > lista[j + 1]:
                lista[j], lista[j + 1] = lista[j + 1], lista[j]
    return lista


lista = [10, 9, 5, 8, 11, -1, 3]
executar_bubble_sort(lista)


#! INSERTION SORT (ORDENAÇÃO POR INSERÇÃO)
# * O algoritmo INSERTION SORT (algoritmo de inserção) recebe esse nome porque faz a ordenação pela simulação da inserção de novos valores na lista.

def executar_insertion_sort(lista):
    n = len(lista)
    for i in range(1, n):
        valor_inserir = lista[i]
        j = i - 1

        while j >= 0 and lista[j] > valor_inserir:
            lista[j + 1] = lista[j]
            j -= 1
        lista[j + 1] = valor_inserir

    return lista


lista = [10, 9, 5, 8, 11, -1, 3]
executar_insertion_sort(lista)

#! MERGE SORT (ORDENAÇÃO POR JUNÇÃO)
# * O algoritmo MERGE SORT recebe esse nome porque faz a ordenação em duas etapa: (i) divide a lista em sublistas; e (ii) junta (merge) as sublistas já ordenadas. Esse algoritmo é conhecido por usar a estratégia "dividir para conquistar".


def executar_merge_sort(lista):
    if len(lista) <= 1:
        return lista
    else:
        meio = len(lista) // 2
        esquerda = executar_merge_sort(lista[:meio])
        direita = executar_merge_sort(lista[meio:])
        return executar_merge(esquerda, direita)


def executar_merge(esquerda, direita):
    sub_lista_ordenada = []
    topo_esquerda, topo_direita = 0, 0
    while topo_esquerda < len(esquerda) and topo_direita < len(direita):
        if esquerda[topo_esquerda] <= direita[topo_direita]:
            sub_lista_ordenada.append(esquerda[topo_esquerda])
            topo_esquerda += 1
        else:
            sub_lista_ordenada.append(direita[topo_direita])
            topo_direita += 1
    sub_lista_ordenada += esquerda[topo_esquerda:]
    sub_lista_ordenada += direita[topo_direita:]
    return sub_lista_ordenada


lista = [10, 9, 5, 8, 11, -1, 3]
executar_merge_sort(lista)

#! QUICKSORT (ORDENAÇÃO RÁPIDA)
# * Dado um valor em uma lista ordenada, à direita desse número existem somente números maiores que ele; e à esquerda, somente os menores. Esse valor, chamado de pivô, é a estratégia central no algoritmo QUICKSORT. O algoritmo QUICKSORT também trabalha com a estratégia de dividir para conquistar, pois, a partir do pivô, quebrará uma lista em sublistas (direita e esquerda) – a cada escolha do pivô e a cada quebra da lista, o processo de ordenação vai acontecendo.


def executar_quicksort(lista, inicio, fim):
    if inicio < fim:
        pivo = executar_particao(lista, inicio, fim)
        executar_quicksort(lista, inicio, pivo-1)
        executar_quicksort(lista, pivo+1, fim)
    return lista


def executar_particao(lista, inicio, fim):
    pivo = lista[fim]
    esquerda = inicio
    for direita in range(inicio, fim):
        if lista[direita] <= pivo:
            lista[direita], lista[esquerda] = lista[esquerda], lista[direita]
            esquerda += 1
    lista[esquerda], lista[fim] = lista[fim], lista[esquerda]
    return esquerda


lista = [10, 9, 5, 8, 11, -1, 3]
executar_quicksort(lista, inicio=0, fim=len(lista)-1)


#! EXERCÍCIO 1 LIVRO TEXTO UNIDADE 2 SEÇÃO 3 => FOCO NO MERCADO DE TRABALHO

# Fazer as transformações de limpeza e validação nos CPFs (remover ponto e traço, verificar se tem 11 dígitos e não deixar valores duplicados), fazer a entrega em ordem crescente.

# Parte 1 - Implementar o algoritmo de ordenação merge sort

def executar_merge_sort(lista, inicio=0, fim=None):
    if not fim:
        fim = len(lista)

    if fim - inicio > 1:
        meio = (inicio + fim) // 2
        executar_merge_sort(lista, inicio, meio)
        executar_merge_sort(lista, meio, fim)
        executar_merge(lista, inicio, meio, fim)
    return lista


def executar_merge(lista, inicio, meio, fim):
    esquerda = lista[inicio:meio]
    direita = lista[meio:fim]
    topo_esquerda = topo_direita = 0
    for p in range(inicio, fim):
        if topo_esquerda >= len(esquerda):
            lista[p] = direita[topo_direita]
            topo_direita += 1
        elif topo_direita >= len(direita):
            lista[p] = esquerda[topo_esquerda]
            topo_esquerda += 1
        elif esquerda[topo_esquerda] < direita[topo_direita]:
            lista[p] = esquerda[topo_esquerda]
            topo_esquerda += 1
        else:
            lista[p] = direita[topo_direita]
            topo_direita += 1

# Parte 2 - Implementar o algoritmo de busca binária


def executar_busca_binaria(lista, valor):
    minimo = 0
    maximo = len(lista) - 1
    while minimo <= maximo:
        meio = (minimo + maximo) // 2
        if valor < lista[meio]:
            maximo = meio - 1
        elif valor > lista[meio]:
            minimo = meio + 1
        else:
            return True
    return False

# Parte 3 - Implementar a função que faz a verificação do cpf, o dedup e devolve o resultado esperado


def criar_lista_dedup_ordenada(lista):
    lista = [str(cpf).replace('.', '').replace('-', '') for cpf in lista]
    lista = [cpf for cpf in lista if len(cpf) == 11]
    lista = executar_merge_sort(lista)

    lista_dedup = []
    for cpf in lista:
        if not executar_busca_binaria(lista_dedup, cpf):
            lista_dedup.append(cpf)
    return lista_dedup

# Parte 4 - Criar uma função de teste


def testar_funcao(lista_cpfs):
    lista_dedup = criar_lista_dedup_ordenada(lista_cpfs)
    print(lista_dedup)


lista_cpfs = ['44444444444', '111.111.111-11', '11111111111',
              '222.222.222-22', '333.333.333-33', '22222222222', '444.44444']
testar_funcao(lista_cpfs)
