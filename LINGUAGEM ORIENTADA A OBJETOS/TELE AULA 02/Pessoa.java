public class Pessoa {
    String nome; 
    String corPele;

    // Criar método 1
    public void comer() {
        System.out.println("Estou com fome");
    }

    // Criar método 2
    public void sono() {
        System.out.println("Estou com sono");
    }

    // Criar método estudar 
    public void estudar() {
        System.out.println("Olá estudante, vá estudar");
    }

    // Exemplo de método privado. Este não pode ser herdado
    private void correr() {
        System.out.println("Necessário correr para se exercitar");
    }

    public static void main(String[] args) {
        Pessoa pessoa1 = new Pessoa();
        pessoa1.nome = "Marcos Lenilson";
        pessoa1.corPele = "Moreno";

        System.out.println("Olá! meu nome é " + pessoa1.nome + " e eu sou " + pessoa1.corPele + ".");
        
    }
}

