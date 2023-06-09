/*
 ####################### LIVRO TEXTO UND 2 SEÇÃO 2 => NÃO PODE FALTAR #######################
          ####################### TELE AULA 2 - WEB_AULA 4 #######################

 ! ESTRUTURAS DE DECISÃO, CONTROLE E REPETIÇÃO

 ! COMANDO SWITCH-CASE E SWITCH-CASE-DEFAULT

    Esse comando provê o que chamamos de estrutura de seleção múltipla baseada em alguma variável de controle. As variáveis de controle utilizadas dentro do switch podem ser dos seguintes tipos: byte, short, int, char e String.

    @ Comando: switch-case
        valor = 25
        switch (VariávelDeControle) {

            case Valor1:
                Comando1; 
                break;
            case Valor2:
                Comando2; 
                break;

    @ Comando: switch-case-default        
        valor = 25
        switch (VariávelDeControle) {

            case Valor1:
                Comando1; 
                break;
            case Valor2:
                Comando2; 
                break;    
            default:
                ComandoParaCasoPadrão;
    
    No switch-case-default se nenhum dos casos for verdadeiro será executado um padrão(DEFAULT)

 ! OPERADORES ARITMÉTICOS 
 
      @ Nome Operador               Símbolo             Exemplo em Java             Exemplo Numérico
        Soma	                        +	                 x + y	                   5 + 3   (= 8)
        Subtração	                    -	                 x - y	                   5 - 3   (= 2)
        Multiplicação	                *	                 x * y	                   5 * 3   (= 15)
        Divisão	                        /	                 x / y	                   5 / 3   (= 1)
        Resto da divisão	            %	                 x % y	                   5 % 3   (= 2)


 ! OPERADORES RELACIONAIS

      @ Nome Operador               Símbolo             Exemplo em Java             Exemplo Numérico        
        Igualdade	                  ==	                x == y	                5 == 3     (falso)
        Diferente	                  !=	                x != y	                5 != 3    (verdade)
        Maior que	                  >	                    x > y	                5 > 3     (verdade)
        Maior ou igual a	          >=	                x >= y	                5 >= 3    (verdade)
        Menor que	                  <	                    x < y	                5 < 3      (falso)
        Menor ou igual a	          <=	                x <= y	                5 <= 3     (falso)
    

 ! OPERADORES DE ATRIBUIÇÃO

      @ Nome do Operador            Símbolo             Exemplo Encurtado           Significado Exemplo         
        Atribuição de adição	      +=                	x += 3	                    x = x + 3
        Atribuição de subtração	      -=	                x -= 3	                    x = x - 3
        Atribuição de multiplicação	  *=	                x *= 3	                    x = x * 3
        Atribuição de divisão	      /=	                x /= 3	                    x = x / 3
        Atribuição de resto	          %=	                x %= 3	                    x = x % 3    

 
 ! OPERADOR DE INCREMENTO E DECREMENTO      

      @ Nome Operador               Símbolo             Exemplo em Java	           Explicação do Exemplo
        Pré-incremento	              ++	                ++x	                    Incrementa x em 1 e, então, utiliza x na expressão atual.
        Pós-incremento	              ++	                x++	                    Utiliza x na expressão atual e, então, incrementa x em 1.
        Pré-decremento	              --	                --x	                    Decrementa x em 1 e, então, utiliza x na expressão atual.
        Pós-decremento	              --	                x--	                    Utiliza x na expressão atual e, então, decrementa x em 1.      


 ! OPERADORES LÓGICOS

      @ Nome Operador               Símbolo             Exemplo em Java             Exemplo com Valores
        E Lógico	                &&	                  exp1 && exp2	                true && false       (falso)
        Ou Lógico	                ||	                  exp1 || exp2	                true || false       (verdade)
        Negação Lógico	            !	                  !exp	                        !true               (falso) 


 ! TIPOS DE DADOS 

    Os tipos primitivos podem ser do tipo lógico, tipo carácter ou tipo numérico, que pode ser separado em dois grupos: o tipo inteiro e o tipo real (ou ponto flutuante). Eles podem ser classificados em: boolean, char, byte, short, int, long, float e double.

    Os tipos de dados derivados podem ser de qualquer classe, como, por exemplo, String, Integer, Double, Array e Object.

    QUADRO:

      @ Nome do Tipo                   Tamanho em bits                 Tamanho em bytes                   Intervalo de Valores

        boolean	                              1	                               -                       true ou false
        char	                              16                               2                	   0 até 65535   ou   '\u0000' até '\uffff'
        byte	                              8	                               1	                   -128 até 127   ou   -27 até 27-1
        short	                              16                               2                       -32.768 até 32.767   ou  -215 até 215-1
        int	                                  32                               4                       -2.147.483.648 até 2.147.483.647 ou -231 até 231-1
        long	                              64                               8                       -263 até 263 -1
        float	                              32	                           4	                   1.4e-45 até 3.4e+38
        double	                              64	                           8	                   4.9e-324 até 1.8e+308


 ! ESTRUTURAS DE REPETIÇÃO    
 
      @ Comando: for                               Comando: while                              Comando: do-while

    for (Inicializ; ExpLóg; Inc){               while (ExpLógicaIni){                            do {

        SeqDeComandosA;                             SeqDeComandosA;                                 SeqDeComandosA;

    }                                           }                                               } while (ExpLógicaFim); 


















*/
