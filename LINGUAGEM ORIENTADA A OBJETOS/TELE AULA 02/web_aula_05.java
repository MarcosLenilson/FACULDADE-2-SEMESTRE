/*
 ####################### LIVRO TEXTO UND 2 SEÇÃO 3 => NÃO PODE FALTAR #######################
          ####################### TELE AULA 2 - WEB_AULA 5 #######################
          ####################### CW 2 Unidade 2 - Seção 3 #######################

 ! REUTILIZAÇÃO DE CLASSES
    
   A ideia de reutilização de classes e reaproveitamento de código é uma das ideias centrais da linguagem Java, que é extremamente rica em bibliotecas que provêm diversos serviços e funcionalidades prontas.    

 ! PRINCIPAIS PACOTES NATIVOS JAVA

   Uma forma de se pensar em um pacote é pensar em um diretório no sistema de arquivos do Sistema Operacional (SO). O diretório, de forma geral, serve para agrupar um determinado conjunto de arquivos, assim como um pacote em Java serve para agrupar um determinado conjunto de classes. Dessa maneira, os pacotes são utilizados também para se fazer o encapsulamento de um grupo de classes.

   O pacote nativo mais importante do Java é o java.lang, que agrupa as classes fundamentais para o projeto da linguagem Java, sendo elas: Object, Class, System, Math, String, Double, Float, Integer, etc. (ORACLE, 2020). Alguns outros pacotes importantes do Java são: java.io, java.net e java.util. 

 ! ORGANIZAÇÃO DE PACOTES 
 
   A linguagem Java utiliza pacotes para fazer a organização das classes e recursos.

 ! IMPORTAÇÃO DE PACOTES
 
   @ Exemplo de Código                        Descrição sobre as Importações
   import java.io.File;	                       Importação da classe File que está dentro pacote java.io.
   import java.net.Socket;	                    Importação da classe Socket do pacote java.net.
   import java.util.Random;	                 Importação da classe Random do pacote java.util.
   import java.lang.System;	                 Importação da classe System do pacote java.lang. OBS: esta importação é a unica opcional, pois é feita de forma automática.                                                         
   import java.io.*;	                          Importação de todas as classes do pacote java.io. 

   Exemplo de IMPORTAÇÃO no (ARQUIVO numeroPar no DIR) 

 ! MODIFICADORES DE ACESSO 

   Por meio deles, podemos restringir ou permitir que um atributo, método, construtor e/ou classe seja acessado ou não. Em Java, temos quatro modificadores de acesso, que são: público, privado, protegido e default. 

   @ Modificador                            Palavra-Reservada                            Descrição da Visibilidade
   Público	                                    public	                                Aplicável à própria classe e a qualquer outra.
   Protegido	                                 protected	                             Aplicável à própria classe, outras classes dentro do próprio 
                                                                                         pacote e dentro de subclasses em outros pacotes.
   Default	                                       -                                     Aplicável à própria classe e a outras classes dentro do mesmo pacote.
   Privado	                                    private                                  Aplicável à própria classe somente.








*/
