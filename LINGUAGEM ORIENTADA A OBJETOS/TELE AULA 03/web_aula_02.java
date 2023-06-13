/*
 ####################### LIVRO TEXTO UND 3 SEÇÃO 1 => NÃO PODE FALTAR #######################
          ####################### TELE AULA 3 - WEB_AULA 2 #######################
          ####################### CW 3 Unidade 3 - Seção 1 #######################
  
 & ENTRADA DE DADOS OU LEITURA DE VALORES EM JAVA

    Até este momento, você ainda não aprendeu nenhuma forma de entrada de dados ou leitura de valores em Java. Existem duas formas principais para se interagir com uma aplicação; 

        1ª A primeira delas se dá passando-se argumentos no momento da execução do programa.
        2ª Já a segunda se dá por meio da leitura de valores em tempo real.

    @ PASSAGEM DE ARGUMENTOS VIA LINHA DE COMANDO

            public class ArgsLinhaDeComandoBasico {
                $public static void main(String[] args) {  
                    System.out.printf("qtd de argumentos = %d%n", args.length);
                    for (int i = 0; i < args.length; i++) {
                        System.out.printf("\targs[%d] = %s%n", i, args[i]);
                    }
                }
            }

    $ Assinatura do ponto de entrada da aplicação
        % public static void main(String[] args) é o primeiro arquivo a ser execultado
        String[] = Vetor de strings que permite a passagem de quantos argumentos quisermos.
        args = Parâmetro que recebe valores no momento da execução do código.        


 & SEQUENCIAS DE SCAPE
 
  @ Sequência de Escape                Descrição                                   Exemplo de utilização
        \n	                     Insere nova linha.	                    System.out.print("Introdução\na\nProgramação\ncom\nJava");
        \t	                     Insere tabulação na horizontal.	    System.out.print("Col A\tCol B\tCol C\tCol D");
        \	                     Insere barra invertida.	            System.out.print("C:\\Windows\\system32");
        \”	                     Insere aspa dupla.	                    System.out.print("Nome do livro \"Dom Quixote\" de Miguel de Cervantes");
        \r	                     Realiza retorno do carro.	            System.out.print("Texto Não Mostrado \rEsse Texto Aparece\n");

 & ESPECIFICADORES 
 
  @ Especificador                   Descrição                                            Exemplo de Utilização                                     Saída
#        %d	              Valor inteiro em decimal com sinal 	                         System.out.print("%d", 127);	                            127
#                         (pode ser usado para byte, short, int e long).
#        %o	              Valor inteiro em octal com sinal.	                             System.out.print("%o", 127);	                            177
#        %x	              Valor inteiro em hexadecimal com sinal (minúsculo).	         System.out.printf("%x", 127);	                            7f
#        %X	              Valor inteiro em hexadecimal com sinal (maiúsculo).	         System.out.printf("%X", 127);	                            7F
#        %f	              Valor real (float ou double).	                                 System.out.printf("%f", 3.141592);	                        3,141592
#        %e	              Valor real (notação exponencial) (minúsculo).	                 System.out.printf("%e", 3.14);	                            3,14e+00
#        %E	              Valor real (notação exponencial) (maiúsculo).	                 System.out.printf("%E", 3.14);	                            3,14E+00
#        %X	              Valor inteiro em hexadecimal com sinal (maiúsculo).	         System.out.printf("%X", 10);	                            7F
#        %b	              Valor lógico (boolean) (minúsculo).	                         System.out.printf("%b", 3 > 2);	                        true
#        %B	              Valor lógico (boolean) (maiúsculo).	                         System.out.printf("%B", 2 > 3);	                        FALSE
#        %c	              Caractere (normal).	                                         System.out.printf("%c", ‘v’);	                            v
#        %C	              Caractere (maiúsculo).	                                     System.out.printf("%C", ‘v’);	                            V
#        %s	              String (normal).	                                             System.out.printf("%s", "String");	                        String
#        %S	              String (maiúscula).	                                         System.out.printf("%S", "String");	                        STRING
#        %%	              Imprime símbolo porcentagem.	                                 System.out.printf("%d%%", 68);	                            68%
#        %n	              Insere uma nova linha portável.	                             System.out.printf("L1%nL2");	                            L1 (linha de baixo)L2


 */
