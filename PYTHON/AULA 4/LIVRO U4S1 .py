from datetime import datetime
import requests
from bs4 import BeautifulSoup
import pandas as pd

#! ESTUDAR Web Scraping em Python


texto_string = requests.get('https://globoesporte.globo.com/').text
hora_extracao = datetime.now().strftime("%d-%m-%Y %H:%M:%S")
bsp_texto = BeautifulSoup(texto_string, 'html.parser')
lista_noticias = bsp_texto.find_all('div', attrs={'class': 'feed-post-body'})

print(hora_extracao)
print("Quantidade de manchetes = ", len(lista_noticias))
print(lista_noticias[0].contents[1].text.replace('"', ""))
print(lista_noticias[0].find('a').get('href'))


descricao = lista_noticias[0].contents[2].text
if not descricao:
    descricao = lista_noticias.find('div', attrs={'class': 'bstn-related'})
    # Somente acessará a propriedade text caso tenha encontrado ("find")
    descricao = descricao.text if descricao else None

metadados = lista_noticias[0].find(
    'div', attrs={'class': 'feed-post-metadata'})

time_delta = metadados.find('span', attrs={'class': 'feed-post-datetime'})
secao = metadados.find('span', attrs={'class': 'feed-post-metadata-section'})

time_delta = time_delta.text if time_delta else None
secao = secao.text if secao else None

print('time_delta = ', time_delta)
print('seção = ', secao)
time_delta = 'Há 3 horas'
seção = 'futebol italiano '

dados = []

for noticia in lista_noticias:
    manchete = noticia.contents[1].text.replace('"', "")
    link = noticia.find('a').get('href')

    descricao = noticia.contents[2].text
    if not descricao:
        descricao = noticia.find('div', attrs={'class': 'bstn-related'})
        descricao = descricao.text if descricao else None

    metadados = noticia.find('div', attrs={'class': 'feed-post-metadata'})
    time_delta = metadados.find('span', attrs={'class': 'feed-post-datetime'})
    secao = metadados.find(
        'span', attrs={'class': 'feed-post-metadata-section'})

    time_delta = time_delta.text if time_delta else None
    secao = secao.text if secao else None

    dados.append((manchete, descricao, link, secao, hora_extracao, time_delta))

df = pd.DataFrame(dados, columns=[
                  'manchete', 'descrição', 'link', 'seção', 'hora_extração', 'time_delta'])
df.head()


class ExtracaoPortal:
    def __init__(self):
        self.portal = None

    def extrair(self, portal):
        self.portal = portal
        texto_string = requests.get('https://globoesporte.globo.com/').text
        hora_extracao = datetime.now().strftime("%d-%m-%Y %H:%M:%S")

        bsp_texto = BeautifulSoup(texto_string, 'html.parser')
        lista_noticias = bsp_texto.find_all(
            'div', attrs={'class': 'feed-post-body'})

        dados = []

        for noticia in lista_noticias:
            manchete = noticia.contents[1].text.replace('"', "")
            link = noticia.find('a').get('href')

            descricao = noticia.contents[2].text
            if not descricao:
                descricao = noticia.find(
                    'div', attrs={'class': 'bstn-related'})
                descricao = descricao.text if descricao else None

            metadados = noticia.find(
                'div', attrs={'class': 'feed-post-metadata'})
            time_delta = metadados.find(
                'span', attrs={'class': 'feed-post-datetime'})
            secao = metadados.find(
                'span', attrs={'class': 'feed-post-metadata-section'})

            time_delta = time_delta.text if time_delta else None
            secao = secao.text if secao else None

            dados.append((manchete, descricao, link,
                         secao, hora_extracao, time_delta))

        df = pd.DataFrame(dados, columns=[
                          'manchete', 'descrição', 'link', 'seção', 'hora_extração', 'time_delta'])
        return df


df = ExtracaoPortal().extrair("https://globoesporte.globo.com/")
df.head()
