import pandas as pd
from datetime import date
from datetime import datetime as dt
#! INTRODUÇÃO A BIBLIOTECA PANDAS

#! Cw4 - Linguagem de Programação => Seção 1

# ? pd.Series(data=None, index=None, dtype=None, name=None, copy=False, fastpath=False)
# ? pd.Series(data=5)
# ? names = pd.Series('Howard Ian Peter Jonah Kellie'.split())
# ? print(names)

# ? pd.DataFrame(data=None, index=None, columns=None, dtype=None, copy=False)

# * Cria um DataFrame, de uma coluna a partir de uma lista
# ? names = pd.DataFrame('Howard Ian Peter Jonah Kellie'.split(), columns=['nome'])
# ? print(names)

# * Cria um DataFrame, com VARIAS COLUNAS a partir de uma lista

# ? lista_nomes = 'Howard Ian Peter Jonah Kellie'.split()
# ? lista_cpfs = '111.111.111-11 222.222.222-22 333.333.333-33 444.444.444-44 555.555.555-55'.split()
# ? lista_emails = 'risus.varius@dictumPhasellusin.ca Nunc@vulputate.ca fames.ac.turpis@cursusa.org non@felisullamcorper.org eget.dictum.placerat@necluctus.co.uk'.split()
# ? lista_idades = [32, 22, 25, 29, 38]
# ? dados = list(zip(lista_nomes, lista_cpfs, lista_idades, lista_emails)) # * Cria uma lista de tupla

# * Cria um DataFrame a partir de uma lista de tuplas
# ? table = pd.DataFrame(dados, columns=['nome', 'cpfs', 'idade', 'email'])
# ? print(table)

# * A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER
# * A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER
# * A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER
# * A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER

#! INTRODUÇÃO A MANIPULAÇÃO DE DADOS EM PANDAS

#! Cw4 - Linguagem de Programação => Seção 2

# ? lista_nomes_titanic = pd.DataFrame(['Mr. Owen Harris Braund', 'Mrs. John Bradley Florence Briggs Thayer Cumings','Miss. Laina Heikkinen', 'Mrs Jacques Heath (Lily May Peel) Futrelle', 'Mr. William Henry Allen'.split()])

# ? lista_idades = [22, 38, 26, 35, 35]
# ? lista_classe = [3, 1, 3, 1, 3]
# ? homens = pd['sexo'] == 'Masculino'
# ? print(homens)


# ? table = pd.DataFrame(dados, columns=['classe', 'nome', 'sexo', 'idade', 'sobreviveu'])

# * A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER
# * A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER
# * A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER
# * A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER A RESOLVER

#! TELE AULA 4 AULA 1 => LIVRO TEXTO => UNIDADE 4 SEÇÃO 1 = NÃO PODE FALTAR

# * Como uma ferramenta de alto nível, pandas possui duas estruturas de dados que são as principais para a análise/manipulação de dados: a Series e o DataFrame.


#! SERIES SERIES SERIES SERIES SERIES SERIES SERIES SERIES SERIES SERIES SERIES SERIES SERIES SERIES SERIES SERIES SERIES

pd.Series(data=5)  # Cria uma Series com o valor a
pd.Series(data=None, index=None, dtype=None,
          name=None, copy=False, fastpath=False)
# Cria uma Series com uma lista de nomes
names = pd.Series('Howard Ian Peter Jonah Kellie'.split())
# ? print(names)

#!  Series com um dicionário
dados = {
    'nome1': 'Howard',
    'nome2': 'Ian',
    'nome3': 'Peter',
    'nome4': 'Jonah',
    'nome5': 'Kellie',
}
dicionário = pd.Series(dados)  # ! Chave
# ? print(dicionário)                           #! Índice     Coluna
# nome1     Howard
# nome2     Ian
# nome3     Peter
# nome4     Jonah
# nome5     Kellie

#! Pode ser utilizado um lista para ser a chave(índice) ou rótulo dos valores da Series

lista_nomes = 'Howard Ian Peter Jonah Kellie'.split()
lista_cpfs = '111.111.111-11 222.222.222-22 333.333.333-33 444.444.444-44 555.555.555-55'.split()
dados1 = pd.Series(lista_nomes, index=lista_cpfs)
# ? print(dados1)

#! Localizador

# ? print(dados1.loc['111.111.111-11'])
# * Atributo loc()


#! EXTRAINDO INFORMAÇÕES DE UMA SERIES

series_dados = pd.Series([10.2, -1, None, 15, 23.4])

# Retorna uma tupla com o número de linhas
# ? print('Quantidade de linhas = ', series_dados.shape)

# Retorna o tipo de dados, se for misto será object
# ? print('Tipo de dados', series_dados.dtypes)

# Verifica se os valores são únicos (sem duplicações)
# ? print('Os valores são únicos?', series_dados.is_unique)

# Verifica se existem valores nulos
# ? print('Existem valores nulos?', series_dados.hasnans)

# Conta quantas valores existem (excluí os nulos)
# ? print('Quantos valores existem?', series_dados.count())

# Extrai o menor valor da Series (nesse caso os dados precisam ser do mesmo tipo)
# ? print('Qual o menor valor?', series_dados.min())

# Extrai o valor máximo, com a mesma condição do mínimo
# ? print('Qual o maior valor?', series_dados.max())

# Extrai a média aritmética de uma Series numérica
# ? print('Qual a média aritmética?', series_dados.mean())

# Extrai o desvio padrão de uma Series numérica
# ? print('Qual o desvio padrão?', series_dados.std())

# Extrai a mediana de uma Series numérica
# ? print('Qual a mediana?', series_dados.median())


#! RESUMO

# ? print('\nResumo:\n', series_dados.describe()) # Exibe um resumo sobre os dados na Series


#! 👇👇👇 👇👇👇DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME

# * Para construir um objeto do tipo DataFrame, precisamos utilizar o método DataFrame() do pacote pandas. O método possui o seguinte construtor:

pd.DataFrame(data=None, index=None, columns=None, dtype=None, copy=False)

# * Dentre todos os parâmetros esperados, somente um é obrigatório para se criar um DataFrame com dados, o parâmetro data=XXXX

#! DATAFRAME com LISTA

# ? lista_nomes = 'Howard Ian Peter Jonah Kellie'.split()
# ? idade = [255, 38, 26, 35, 35]
# ? dados = list(zip(lista_nomes, idade))
# ? pd.DataFrame(dados, columns=['nomes', 'idade'])
# ? print(pd.DataFrame(dados, columns=['nomes', 'idade']))

#! 👆👆👆 👆👆👆 DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME DATAFRAME

#! MÉTODO READ()

# ? url = 'https://en.wikipedia.org/wiki/Minnesota'

# ? dfs = pd.read_html(url)
# ? print(type(dfs))
# ? print(len(dfs))
# ? print(dfs)


#! TELE AULA 4 AULA 2 => LIVRO TEXTO => UNIDADE 4 SEÇÃO 2 = NÃO PODE FALTAR
#! INTRODUÇÃO A MANIPULAÇÃO DE DADOS EM PANDAS

# * Além dos métodos para carregar e salvar dados, a biblioteca pandas possui também métodos para a transformação dos dados e a extração de informação.

#! MÉTODOS PARA LEITURA E ESCRITA DA BIBLIOTECA PANDAS

# * A biblioteca pandas foi desenvolvida para trabalhar com dados estruturados, ou seja, dados dispostos em linhas e colunas. Os dados podem estar gravados em arquivos, em páginas web, em APIs, em outros softwares, em object stores (sistemas de armazenamento em cloud) ou em bancos de dados. Todos os métodos capazes de fazer a leitura dos dados estruturados possuem prefixo pd.read_XXX, onde pd é o apelido dado no momento da importação da biblioteca e XXX é o restante da sintaxe do método.

# * Dentre todos os possíveis métodos para leitura, nessa aula vamos estudar o read_json, o read_csv e a função read_sql, que contempla a função read_sql_query.

#! LEITURA DE JSON E CSV COM PANDAS

#! A leitura de um arquivo JSON deve ser feita com o método:

# $ pd.read_json(path_or_buf=None, orient=None, typ='frame', dtype=None, convert_axes=None, convert_dates=True, keep_default_dates=True, numpy=False, precise_float=False, date_unit=None, encoding=None, lines=False, chunksize=None, compression='infer')

# @ Os detalhes de cada parâmetro podem ser consultados na documentação oficial: https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.read_json.html. O único parâmetro que é obrigatório para se carregar os dados é o "path_or_buf", no qual deve ser passado um caminho para o arquivo ou um "arquivo como objeto" que é um arquivo lido com a função open(), por exemplo.

# EXEMPLO DE ESCRITA DO MÉTODO JSON
# * O nome do arquivo sempre tem que ser SETTINGS.JSON
# 'data':{
#     'nome': 'Marcos',
#     'idade': 36
# }

json = pd.read_json(
    'https://api.bcb.gov.br/dados/serie/bcdata.sgs.11/dados?formato=json').head()
# ? print(json)

#! A leitura de um arquivo CSV deve ser feita com o método:

# $ pandas.read_csv(filepath_or_buffer: Union[str, pathlib.Path, IO[~ AnyStr]], sep=',', delimiter=None, header='infer', names=None, index_col=None, usecols=None, squeeze=False, prefix=None, mangle_dupe_cols=True, dtype=None, engine=None, converters=None, true_values=None, false_values=None, skipinitialspace=False, skiprows=None, skipfooter=0, nrows=None, na_values=None, keep_default_na=True, na_filter=True, verbose=False, skip_blank_lines=True, parse_dates=False, infer_datetime_format=False, keep_date_col=False, date_parser=None, dayfirst=False, cache_dates=True, iterator=False, chunksize=None, compression='infer', thousands=None, decimal: str = '.', lineterminator=None, quotechar='"', quoting=0, doublequote=True, escapechar=None, comment=None, encoding=None, dialect=None, error_bad_lines=True, warn_bad_lines=True, delim_whitespace=False, low_memory=True, memory_map=False, float_precision=None).

# @ Para realizar o carregamento os dados, é necessário incluir o caminho(diretório), portanto o parâmetro "filepath_or_buffer" é OBRIGATÓRIO.

csv = pd.read_csv(
    'https://people.sc.fsu.edu/~jburkardt/data/csv/cities.csv').head()
# ? print(csv)

#! MANIPULAÇÃO DE DADOS COM PANDAS

# * Além de vários métodos para carregar e salvar os dados, a biblioteca pandas possui uma diversidade de métodos para a transformação dos dados e a extração de informação para áreas de negócio.

# @ Para entender como essas duas etapas acontecem no dia a dia das empresas, vamos utilizar os dados da taxa Selic. Selic, ou taxa Selic é a referência base de juros da economia brasileira (https://blog.nubank.com.br/taxa-selic/).

df_selic = pd.read_json(
    'https://api.bcb.gov.br/dados/serie/bcdata.sgs.11/dados?formato=json')
# ? print(df_selic.info())

#! REMOVER LINHAS DUPLICADAS

# * Para o carregamento de uma base de dados, um dos primeiros tratamentos que devemos fazer é remover os dados duplicados.

# ? print(df_selic.drop_duplicates(keep='last', inplace=True))

#! CRIAR NOVAS COLUNAS

data_extracao = date.today()

df_selic['data_extracao'] = data_extracao
df_selic['responsavel'] = 'Autora'

# ? print(df_selic.info())
df_selic.head()
# ? print(df_selic)

#! MÉTODO TO_DATETIME() E ASTYPE()

df_selic['data'] = pd.to_datetime(df_selic['data'], dayfirst=True)
df_selic['data_extracao'] = df_selic['data_extracao'].astype('datetime64[ns]')

print(df_selic.info())
df_selic.head()
print(df_selic)