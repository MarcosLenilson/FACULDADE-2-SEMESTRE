/* 
 ####################### LIVRO TEXTO UND 1 SEÇÃO 1 => NÃO PODE FALTAR #######################

          ####################### TELE AULA 1 - WEB_AULA 4 #######################
              
 ENTENDENDO O CÓDIGO

 => Classe pública MyClass
    * PUBLIC e CLASS sõ palavras reservadas para definição de uma classe.
    * { } é utilizada para estrutura de bloco. 
    * PUBLIC STATIC VOID é um método estático pública chamada MAIN e não retorna nenhum valor e é passado um vetor de STRING como argumento.
*/
public class web_aula_4 {
    String nome;
    String cor;

    public static void main(String[] args) {
        web_aula_4 obj1 = new web_aula_4();
        obj1.nome = "Marcos";
        obj1.cor = "Azul";

        System.out.println("O meu nome é " + obj1.nome);
        System.out.println("Minha cor é " + obj1.cor);
    }
}
