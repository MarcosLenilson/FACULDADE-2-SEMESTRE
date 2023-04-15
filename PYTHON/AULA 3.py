
#! CLASSES E MÉTODOS EM PYTHON

#! LIVRO TEXTO UNIDADE 3 SEÇÃO 1 => NÃO PODE FALTAR

# * O que é uma CLASSE ??

# * Uma CLASSE é uma abstração que descreve entidades do mundo real, uma CLASSE é um modelo para um OBJETO. e, quando instanciadas, dão origem a OBJETOS com características similares. Portanto, a CLASSE é o modelo e o OBJETO é uma instância. Podemos considerar uma CLASSE uma forma de organizar os dados (de um OBJETO) e seus comportamentos

# * O que é um OBJETO ??

# * OBJETOS são os componentes de um programa OO. Um programa que usa a tecnologia OO é basicamente uma coleção de OBJETOS.

#! TELE AULA 3 => AULA 3
#! LIVRO TEXTO UNIDADE 3 SEÇÃO 1 => NÃO PODE FALTAR

# EXEMPLOS DE CLASSE:

# ? class Pessoa:
# ?     def imprimir_mensagem(self, nome):
# ?        # ? print(f"Olá {nome}, seja bem vindo!")


# ? app = Pessoa()  # ! Instanciando um OBJETO do tipo Pessoa
# ?app.imprimir_mensagem('Marcos Lenilson')

# MAIS EXEMPLOS:


# ? class Calculadora:

# ?     def somar(self, n1, n2):
# ?         return n1 + n2

# ?     def subtrair(self, n1, n2):
# ?         return n1 - n2

# ?     def multiplicar(self, n1, n2):
# ?         return n1 * n2

# ?     def dividir(self, n1, n2):
# ?         return n1 / n2

# ?     def dividir_resto(self, n1, n2):
# ?         return n1 % n2


# ? calc = Calculadora()

# ? print('Soma:', calc.somar(4, 3))
# ? print('Subtração:', calc.subtrair(13, 7))
# ? print('Multiplicação:', calc.multiplicar(2, 4))
# ? print('Divisão:', calc.dividir(16, 5))
# ? print('Resto da divisão:', calc.dividir_resto(7, 3))


#! CONSTRUTOR DA CLASSE __INIT__()

# *  Um atributo de instância é uma variável precedida com o parâmetro self, ou seja, a sintaxe para criar e utilizar é <<<<< self.nome_atributo >>>>>

# EXEMPLOS:

# ? class Televisao:
# ?     def __init__(self):
# ?         self.volume = 10

# ?     def aumentar_volume(self):
# ?         self.volume += 1

# ?     def diminuir_volume(self):
# ?         self.volume -= 1


# ?tv = Televisao()
# ?print("Volume ao ligar a tv = ", tv.volume)
# ?tv.aumentar_volume()
# ?print("Volume atual = ", tv.volume)

# MAIS EXEMPLOS:


# ?class Gato:
# ?     '''Classe para trabalhar com gatos'''

#    ? def __init__(self, nome, idade):
#   ?      '''Inicializa o objeto capturando o nome e a idade do animal'''
#  ?       self.nome = nome
# ?        self.idade = idade
# ? print('O seu gato se chama', self.nome, 'e ele tem', idade, 'anos.')


# ? nome_gato = input('Digite o nome do seu gato: ')
# ? idade_gato = input('Digite a idade do seu gato: ')
# ? gt = Gato(nome_gato, idade_gato)


#! VARIÁVEIS E MÉTODOS PRIVADOS => Modificadores de acesso = public, private e protected

# * Em linguagens de programação OO, como Java e C#, as classes, os atributos e os métodos são acompanhados de modificadores de acesso, que podem ser: PUBLIC, PRIVATE e PROTECTED. Em Python, não existem modificadores de acesso e todos os recursos são públicos. Para simbolizar que um atributo ou método é privado, por convenção, usa-se um sublinhado "_"  antes do nome; por exemplo, _cpf, _calcular_desconto()

# EXEMPLOS:

# ? class ContaCorrente:
# ?     def __init__(self):
# ?         self.saldo = None

# ?     def depositar(self, valor):
# ?         self._saldo += valor

# ?     def consultar_saldo(self):
# ?         return self._saldo


# * Lembre-se: em Python, atributos e métodos privados são apenas uma convenção, pois, na prática, os recursos podem ser acessados de qualquer forma.

#! HERANÇA EM PYTHON

# * O que é herança?

# * É a reutilização de código por meio da herança, que permite que uma classe-filha herde os recursos da classe-pai. Em Python, uma classe aceita múltiplas heranças, ou seja, herda recursos de diversas classes. A sintaxe para criar a herança é feita com parênteses após o nome da classe: class NomeClasseFilha(NomeClassePai). Se for uma herança múltipla, cada superclasse deve ser separada por vírgula.

# EXEMPLOS:

# class Pessoa:
#     3


# print(dir(Pessoa()))

# ?     def __init__(self):
# ?         self.cpf = None
# ?         self.nome = None
# ?         self.endereco = None


# ? class Funcionario(Pessoa):

# ?     def __init__(self):
# ?         self.matricula = None
# ?         self.salario = None

# ?     def bater_ponto(self):
# ?         # ? código aqui
# ?         pass

# ?     def fazer_login(self):
# ?         # ? código aqui
# ?         pass


# ? class Cliente(Pessoa):

# ?     def __init__(self):
# ?         self.codigo = None
# ?         self.dataCadastro = None

# ?     def fazer_compra(self):
# ?         # ? código aqui
# ?         pass

# ?     def pagar_conta(self):
# ?         # ? código aqui
# ?         pass


# ? f1 = Funcionario()
# ? f1.nome = "Funcionário A"
# ? print(f1.nome)

# ? c1 = Cliente()
# ? c1.cpf = "111.111.111-11"
# ? print(c1.cpf)


#! MÉTODOS MÁGICOS EM PYTHON

# * Quando uma classe é criada em Python, ela herda, mesmo que não declarado explicitamente, todos os recursos de uma classe-base chamada object. Veja o resultado da função dir(), que retorna uma lista com os recursos de um objeto.

# EXEMPLOS:
# ? class Pessoa:
# ? print(dir(Pessoa()))


#! EXEMPLIFICANDO
# * Para treinar tudo o que aprendemos nessa seção, vamos implementar a solução representada no diagrama de classes da Figura 3.4, na qual temos uma classe-base chamada ContaCorrente com os seguintes campos:

# * Nome, que é do tipo string e deve ser público.
# * Email, que é do tipo string e deve ser público.
# * Telefone, que é do tipo string e deve ser público.
# * Saldo, que é do tipo ponto flutuante e NÃO deve ser público.

#! A classe-base conta ainda com os métodos:

# * Depositar, que recebe como parâmetro um valor, não retorna nada e deve ser público.
# * Obter saldo, que não recebe nenhum parâmetro, retorna um ponto flutuante e deve ser público.
# * Sacar, que recebe como parâmetro um valor, retorna se foi possível sacar (booleano) e deve ser público.
# * Checar saldo, que não recebe nenhum parâmetro, retorna um booleano e deve ser privado, ou seja, será usado internamente pela própria classe.

class ContaCorrente:

    def __init__(self, nome):
        self.nome = nome
        self.email = None
        self.telefone = None
        self._saldo = 0

    def Depositar(self, valor):
        self._saldo += valor

    def obter_saldo(self):
        return self._saldo

    def sacar(self, valor):
        if self._checar_saldo(valor):
            self._saldo -= valor
            return True
        else:
            return False

    def _checar_saldo(self, valor):
        return self._saldo >= valor


class ContaPF(ContaCorrente):
    def __init__(self, nome, cpf):
        super().__init__(nome)
        self.cpf = cpf

    def solicitar_emprestimo(self, valor):
        return self.obter_saldo() >= 500


class ContaPJ(ContaCorrente):
    def __init__(self, nome, cnpj):
        super().__init__(nome)
        self.cnpj = cnpj

    def sacar_emprestimo(self, valor):
        return valor <= 5000
    

conta_pf1 = ContaPF("João", '111.111.111-11')
conta_pf1.Depositar(1000)
print('Saldo atual é', conta_pf1.obter_saldo())
print('Receberá empréstimo = ', conta_pf1.solicitar_emprestimo(2000))

conta_pf1.sacar(800)
print('Saldo atual é', conta_pf1.obter_saldo())
print('Receberá empréstimo = ', conta_pf1.solicitar_emprestimo(2000))

conta_pj1 = ContaPJ("Empresa A", "11.111.111/1111-11")
print('Saldo atual é', conta_pj1.obter_saldo())
print('Receberá empréstimo = ', conta_pj1.sacar_emprestimo(3000))

#! TELE AULA 3 => AULA 4
#! LIVRO TEXTO UNIDADE 3 SEÇÃO 2 => NÃO PODE FALTAR
