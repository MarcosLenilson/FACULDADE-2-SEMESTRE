/*
 ! ATRIBUTOS E MÉTODOS ESTÁTICOS

    Imagine que você gostaria de modelar uma classe chamada Matemática para resolver problemas relacionados a essa área do conhecimento. Nessa classe, você gostaria que houvesse as seguintes constantes: número pi (PI), número de Euler (E) e número de ouro (PHI). A constante PI é famosa na matemática e representa a razão entre o comprimento da circunferência e o seu diâmetro; já a constante E representa a base dos logaritmos naturais; e a constante PHI representa uma proporção encontrada em diversas aplicações na natureza. Além disso, você também gostaria que houvesse dois métodos: um para a soma e outro para a multiplicação de inteiros, logo, decide implementar o Código (ARQUIVO Matematica.java)

 ! MÉTODOS CONSTRUTORES

    A declaração de um construtor é obrigatória deve sempre possuir o mesmo nome da classe. Toda classe em Java possui um método construtor padrão que possui o mesmo nome da classe e não recebe nenhum argumento. É importante reparar que a declaração de um construtor deve sempre possuir o mesmo nome da classe; que não existe nenhum tipo de retorno, nem mesmo a palavra void pode ser especificada; e que alguns outros modificadores de acesso são possíveis, além do public, mas veremos isso nas seções seguintes. 

    EXEMPLO:
        public class Carro{
        $ Construtor da classe Carro
    }
    public Carro(){
        $ Construtor do objeto
    }

 ! INVOCANDO UM CONSTRUTOR
 
    public class Carro {
        String nome;
        double peso;
    
    public static void main(String[] args) {
        $ Construtor da classe Carro 
    Carro Ford = new Carro();
    Ford.nome = "Ranger";
    Ford.peso = 1000.56;
    
    System.out.println("O nome do carro é " + Ford.nome + ", e o peso dele é de " + Ford.peso + " kilos");
    
    }
    }
 
 ! CLASSIFICAÇÃO DOS CONSTRUTORES

    A fim de que entenda melhor os métodos construtores, vamos criar uma nova classe em Java que modela a entidade Triângulo. O Código 2.3 no (ARQUIVO Matematica.java)

    PADRÃO =>
        Implícitos = Não possui nenhum código
        Explícitos = Possui códigos, mas sem argumentos


    NÃO PADRÃO =>
        Explícitos = Possui códigos com argumentos

 ! SOBRECARGA E SOBREPOSIÇÃO DE MÉTODOS
 
    A sobrecarga caracteriza-se por haver mais de um método em uma mesma classe com o mesmo nome, no entanto, com diferentes tipos de dados ou diferentes quantidades de parâmetros.

















*/
