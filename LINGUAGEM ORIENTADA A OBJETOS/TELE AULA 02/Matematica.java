// @ Código 2.1 | Versão inicial do programa em Java que modela a classe Matematica

public class Matematica {
    double PI = 3.1415926535;
    double E = 2.7182818284;
    double PHI = 1.6180339887;

    int soma(int a, int b) {
        return a + b;
    }

    int mult(int a, int b) {
        return a * b;
    }

    public static void main(String[] args) {
        Matematica mat = new Matematica();
        System.out.println("Numero Pi: " + mat.PI);
        System.out.println("Numero E: " + mat.E);
        System.out.println("Numero Phi: " + mat.PHI);
        System.out.println("Soma: " + mat.soma(5, 3));
        System.out.println("Mult: " + mat.mult(5, 3));
    }
}

// @ Código 2.2 | Modelagem de atributos e métodos de forma estática na classe
// Matematica

public class Matematica {
    static final double PI = 3.1415926535;
    static final double E = 2.7182818284;
    static final double PHI = 1.6180339887;

    static int soma(int a, int b) {
        return a + b;
    }

    static int mult(int a, int b) {
        return a * b;
    }

    public static void main(String[] args) {
        System.out.println("Numero Pi: " + Matematica.PI);
        System.out.println("Numero E: " + Matematica.E);
        System.out.println("Numero Phi: " + Matematica.PHI);
        System.out.println("Soma: " + Matematica.soma(5, 3));
        System.out.println("Mult: " + Matematica.mult(5, 3));
    }
}

// @ Código 2.4 | Modelagem da classe Matematica com sobrecarga de método mult

public class Matematica {
    static int mult(int a, int b) {
        return a * b;
    }

    static double mult(double a, double b) {
        return a * b;
    }

    static double mult(double a, double b, double c) {
        return a * b * c;
    }

    public static void main(String[] args) {
        System.out.println("Mult: " + Matematica.mult(5, 3));
        System.out.println("Mult: " + Matematica.mult(3.2, 4.1));
        System.out.println("Mult: " + Matematica.mult(1.4, 2));
        System.out.println("Mult: " + Matematica.mult(2, 3.5));
        System.out.println("Mult: " + Matematica.mult(4.5, 5.2, 2));
    }
}

// @ Código 2.3 | Modelagem da classe Triângulo com dois construtores

public class Triangulo {
    double ladoA;
    double ladoB;
    double ladoC;

    public Triangulo(double lado) {
        this.ladoA = lado;
        this.ladoB = lado;
        this.ladoC = lado;
    }

    public Triangulo(double a, double b, double c) {
        this.ladoA = a;
        this.ladoB = b;
        this.ladoC = c;
    }

    @Override
    public String toString() {
        return String.format("a: %.2f\nb: %.2f\nc: %.2f",
                this.ladoA, this.ladoB, this.ladoC);
    }

    public static void main(String[] args) {
        Triangulo trianIsosceles = new Triangulo(5);
        Triangulo trianEscaleno = new Triangulo(3, 25, 26);
        System.out.println(trianIsosceles);
        System.out.println(trianEscaleno);
    }
}