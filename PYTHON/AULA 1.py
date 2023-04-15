
#! Tipos de Variáveis

# msg = print('Hello World!')
# name = 'Marcos Lenilson'
# numInt = 10
# numFloat = 8.98
# bool = True

# print(type(msg))
# print(type(name))
# print(type(numInt))
# print(type(numFloat))
# print(type(bool))

# name = input('Digite seu nome: ')
# Forma de imprimir (Formatadores de caracteres)
# Modo 1 - usando formatadores de caracteres (igual na linguagem C) para imprimir variável e texto.
# print('Olá %s, seja bem vindo!' % (name))
# Modo 2 - usando a função format() para imprimir variável e texto
# print('Olá {}, seja bem vindo!'.format(name))
# Modo 3 - usando strings formatadas
# print(f'Olá {name}, seja bem vindo!')

#! Operações matemáticas

# Qual o resultado armazenado na variável operacao_1: 25 ou 17?
# operacao_1 = 2 + 3 * 5

# Qual o resultado armazenado na variável operacao_2: 25 ou 17?
# operacao_2 = (2 + 3) * 5

# Qual o resultado armazenado na variável operacao_3: 4 ou 1?
# operacao_3 = 4 / 2 ** 2

# Qual o resultado armazenado na variável operacao_4: 1 ou 5?
# operacao_4 = 13 % 3 + 4


# print(f"Resultado em operacao_1 = {operacao_1}")
# print(f"Resultado em operacao_2 = {operacao_2}")
# print(f"Resultado em operacao_3 = {operacao_3}")
# print(f"Resultado em operacao_4 = {operacao_4}")


#! Estrutura de repetições e condicionais

#! Estrutura de repetição FOR
# nomes = ['Pedro', 'João', 'Letícia', 'Marcos', 'Oliveira', 'Duarte']
# for n in nomes:
#      print(n)
# else:
#      print("Todos os nomes foram listados com sucesso")

# nome = 'Marcos'
# for n in nome:
#     print(nome)

# nome = 'Marcos'

# for i, n in enumerate(nome):
#     print(f'Posição = {i}, valor = {n}')

# for n in nome:
#     print(n)

# for n in range(5): #* Com 1 argumento
#     print(n)

# for n in range(1, 20): #* Com 2 argumento
#     print(n)

# for n in range(1, 22, 4): #* Com 3 argumento
#     print(n)

#! Estrutura de repetição WHILE

# num = 1

# while num != 0:
#     num = int(input('Digite um numero: '))

#     if num % 2 == 0:
#         print('Numero PAR')
#     else:
#         print('Numero IMPAR')

#! Condicionais

# aluno1 = float(input('Digita a nota Final do aluno1: '))

# if aluno1 > 7:
#     print('APROVADO!')
# else:
#     print('REPROVADO!')


#! EXERCÍCIO 1

# c = 200  # * valor da constante

# mes = input("Digite o mês que deseja saber o resultado: ") # * Função para captura o mês Digitado
# mes = int(mes) # * Converter para numérico o valor captura pela função input()
# res = mes * c
# print('O resultado do mês {} foi: {}'.format(mes, res))

#! EXERCÍCIO 2 = CONDICIONAL

# faltas = int(input('Digite a quantidade de faltas: '))
# media_final = float(input('Digite a média final: '))

# if faltas <= 6 and media_final >= 7:
#     print('Aluno aprovado!')
# else:
#     print('Aluno reprovado!!')


#! EXERCÍCIO LIVRO TEXTO - CALCULO DE I.R


# * Base de cálculo em reais Alíquota (%) Parcela a deduzir do IRPF em reais
# * Até 1.903,98       -        -
# * De 1.903,99 até 2.826,65 - 7,5 = 142,8
# * De 2.826,66 até 3.751,05 - 15 = 354,8
# * De 3.751,06 até 4.664,68 - 22,5 = 636,1
# * Acima de 4.664,68 - 27,5 = 869,36

# salario = 0
# salario = float(input("Digite o salário do colaborador: "))

# if salario <= 1903.98:
#     print(f"O colaborador isento de imposto.")
#     print(f"Salário a receber = {salario}")
# elif salario <= 2826.65:
#     print(f"O colaborador deve pagar R$ 142,80 de imposto.")
#     print(f"Salário a receber = {salario - 142.80}")
# elif salario <= 3751.05:
#     print(f"O colaborador deve pagar R$ 354,80 de imposto.")
#     print(f"Salário a receber = {salario - 354.80}")
# elif salario <= 4664.68:
#     print(f"O colaborador deve pagar R$ 636,13 de imposto.")
#     print(f"Salário a receber = {salario - 636.13}")
# else:
#     print(f"O colaborador deve pagar R$ 869,36 de imposto.")
#     print(f"Salário a receber = {salario - 869.36}")


#! FUNÇÕES

# def soma(a, b):
#     return a + b

# resultado = soma(2, 4)

# print(resultado)

#!----------------------------------------------------------------------------------------------------

# def imprimir_mensagem(disciplina, curso):
#     return f"Minha primeira função em Python desenvolvida na disciplina: {disciplina}, do curso: {curso}."

# mensagem = imprimir_mensagem("Python", "ADS")
# print(mensagem)

#!----------------------------------------------------------------------------------------------------

