// @ Código 2.15 | Implementação das superclasses e subclasses do exemplo da Figura 2.10
public class Geom2D { // herda implicitamente a classe Object
    protected double perimetro;
    protected double area;

    public double calcPerimetro() {
        return 0; // não existe perímetro em objeto abstrato
    }

    public double calcArea() {
        return 0; // não existe área em objeto abstrato
    }
}

public class Geom3D { // herda implicitamente a classe Object
    protected double area;
    protected double volume;

    public double calcArea() {
        return 0; // não existe área em objeto abstrato
    }

    public double calcVolume() {
        return 0; // não existe volume em objeto abstrato
    }
}

public class Retangulo extends Geom2D {
    private final double base;
    private final double altura;

    public Retangulo(double lado) {
        this.base = lado;
        this.altura = lado;
    }

    public Retangulo(double base, double altura) {
        this.base = base;
        this.altura = altura;
    }

    @Override
    public double calcPerimetro() {
        super.perimetro = 2 * this.base + 2 * this.altura;
        return super.perimetro;
    }

    @Override
    public double calcArea() {
        super.area = this.base * this.altura;
        return super.area;
    }

    @Override
    public String toString() {
        return String.format("Rect:{\n peri: %.2f\n area: %.2f\n}",
                this.calcPerimetro(), this.calcArea());
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Retangulo) {
            Retangulo r = (Retangulo) obj;
            return (base == r.base) && (altura == r.altura);
        } else {
            return false;
        }
    }

    public static void main(String[] args) {
        Retangulo rect1 = new Retangulo(4, 25);
        Retangulo rect2 = new Retangulo(4, 26);
        System.out.println(rect1); // invoca método toString
        System.out.println(rect2); // invoca método toString
        if (rect1.equals(rect2)) { // invoca método equals
            System.out.println("Figuras Geométricas Iguais");
        } else {
            System.out.println("Figuras Geométricas Diferentes");
        }
    }
}

public class Cubo extends Geom3D {
    private final double lado;

    public Cubo(double lado) {
        this.lado = lado;
    }

    @Override
    public double calcArea() {
        super.area = 6 * this.lado * this.lado;
        return super.area;
    }

    @Override
    public double calcVolume() {
        super.volume = this.lado * this.lado * this.lado;
        return super.volume;
    }

    @Override
    public String toString() {
        return String.format("Cubo:{\n area: %.2f\n vol: %.2f\n}",
                this.calcArea(), this.calcVolume());
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Cubo) {
            Cubo cubo = (Cubo) obj;
            return this.lado == cubo.lado;
        } else {
            return false;
        }
    }

    public static void main(String[] args) {
        Cubo cubo1 = new Cubo(1);
        Cubo cubo2 = new Cubo(1);
        System.out.println(cubo1); // invoca método toString
        System.out.println(cubo2); // invoca método toString
        if (cubo1.equals(cubo2)) { // invoca método equals
            System.out.println("Figuras Geométricas Iguais");
        } else {
            System.out.println("Figuras Geométricas Diferentes");
        }
    }}

    // @ Código 2.16 | Demonstração de comportamentos polimórficos
    // Variável de Referência → Tipo do Objeto
    Geom2D geom1 = new Circulo(1);
    Geom2D geom2 = new Triangulo(3, 4, 5);
    Geom2D geom3 = new Retangulo(4, 10);

    // @ Código 2.17 | Exemplo de modelagem usando-se polimorfismo
public class TestePolimorfismo {
    public static void main(String[] args) {
        Geom2D objCirculo = new Circulo(2.9);
        objCirculo.calcPerimetro();
        Geom2D objTriangulo = new Triangulo(6);
        objTriangulo.calcPerimetro();
        Geom2D maxPeri = maxPerimetro(objCirculo, objTriangulo);
        System.out.println("Maior Perimetro: " + maxPeri);
        if (maxPeri instanceof Circulo){
            Circulo max = (Circulo)maxPeri;
            System.out.println("Max Circulo: " + max);
        } else if (maxPeri instanceof Triangulo){
            Triangulo max = (Triangulo)maxPeri;
            System.out.println("Max Triangulo: " + max);
        }
    }
    public static Geom2D maxPerimetro(Geom2D geom1, Geom2D geom2){
        if (geom1.getPerimetro() > geom2.getPerimetro()) {
            return geom1; 
        } else {
            return geom2;
        }
    }    
}
// No Código 2.17, em específico nas linhas 3 e 5, temos a declaração de dois
// objetos polimórficos. Na linha 7, temos a chamada a um método que calcula e
// retorna o objeto com maior perímetro entre duas figuras geométricas 2D. Por
// fim, das linhas 9 a 15, temos um processamento feito baseado no tipo de
// objeto retornado; aqui, o tipo de objeto mais genérico é convertido para um
// tipo de objeto mais específico, e essa é uma das vantagens do polimorfismo: a
// capacidade que um objeto possui de assumir diversas formas diferentes.