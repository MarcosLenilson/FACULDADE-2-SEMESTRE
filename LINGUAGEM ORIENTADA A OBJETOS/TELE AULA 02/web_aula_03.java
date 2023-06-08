/*
 ####################### LIVRO TEXTO UND 2 SEÇÃO 2 => NÃO PODE FALTAR #######################
          ####################### TELE AULA 2 - WEB_AULA 3 #######################
           ####################### CW-2 UNIDADE 2 SEÇÃO 2 #######################

 ! ESTRUTURAS DE DECISÃO
 
    Java, assim como a maioria das linguagens de programação, executa o seu código de forma sequencial e de cima para baixo, linha a linha. Às vezes, é necessário romper com essa execução sequencial, e queremos executar um trecho do código somente se alguma coisa ocorrer. 
 

 ! COMANDO IF E IF-ELSE

    A principal estrutura de decisão é o comando if e if-else. Esses comandos também podem ser concatenados sucessivamente por outros ifs, como em 
    if - elseif - else, etc.

    Exemplos:
    
    @ Usando IF para saber SE o num é maior que 10.
        num = 5;                             // VARIÁVEL   
        if(num > 10){                       // CONDICIONAL   
            System.out.println("Maior")    // COMANDO
        }

    @ Usando IF/ELSE para saber SE o num é maior ou menor que 10.
        num = 5;                               // VARIÁVEL   
        if(num > 10){                         // CONDICIONAL 1 = SE   
            System.out.println("Maior")      // COMANDO CASO A CONDICIONAL 1 SEJA VERDADEIRA
        }else {                             // CONDICIONAL 2 = SENÃO
            System.out.println("Menor")    // COMANDO CASO A CONDICIONAL 1 SEJA FALSA
        }

    @ Usando IF/ELSEIF/ELSE para saber SE o num é maior, menor ou igual a 10.
        num = 5;                                 // VARIÁVEL   
        if(num > 10){                           // CONDICIONAL 1 = SE   
            System.out.println("Maior")        // COMANDO CASO A CONDICIONAL 1 SEJA VERDADEIRA
        }elseif(num == 10) {                  // CONDICIONAL 2 = SENÃO SE
            System.out.println("Igual")      // COMANDO CASO A CONDICIONAL 1 SEJA FALSA
        }else{                              // CONDICIONAL 3 = SENÃO
            System.out.println("Menor")    // COMANDO CASO A CONDICIONAL 1 E 2 SEJA FALSA
        }

 ! OPERADOR TERNÁRIO
    
    Uma forma mais simplificada de se construir comandos do tipo if-else dá-se por meio do operador ternário em Java. O nome operador ternário deve-se ao fato de que o comando é quebrado em três partes separadas pelos símbolos de interrogação (?) e de dois pontos (:).
        
    Exemplos:
    
    @ Comando: if-else
        num = 5;                               // VARIÁVEL   
        if(num > 10){                         // CONDICIONAL   
            System.out.println("Maior")      // COMANDO
        }else {                             // CONDICIONAL 2 = SENÃO
            System.out.println("Menor")    // COMANDO CASO A CONDICIONAL 1 SEJA FALSA
        }

    @ Comando: operador-ternário
        num = 5;                             // VARIÁVEL 
        num > 10 ? System.out.println("Maior") : System.out.println("Menor") 

    Uma forma muito simples e útil de utilização do operador ternário se dá para o cálculo do máximo e mínimo de dois valores.
    
    @ Exemplo máximo
        double max = x > y ? x : y;
        System.out.println("max: " + max);

    @ Exemplo mínimo
        double min = x < y ? x : y;
        System.out.println("min: " + min);     

    O operador ternário pode também ser combinado com ele mesmo, criando expressões ainda mais complexas, como nos trechos de códigos mostrados a seguir:
    
    String compXY = x > y ? "maior" : x<y ? "menor" :"igual";
    String diaSem = dia == 0 ? "dom" : dia==1 ? "seg" 
    : dia == 2 ? "ter" : dia == 3 ? "qua" 
    : dia == 4 ? "qui" : dia == 5 ? "sex" 
    :"sab"; 

*/
