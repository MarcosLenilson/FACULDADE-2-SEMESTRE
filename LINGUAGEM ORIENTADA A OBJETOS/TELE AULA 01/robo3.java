public class robo3 {
    String nome = "R-ATM";
    float peso = 70;
    float velocidadeMax = 5;
    float pesoCargaMax = 20;
    String tipoTracao = "esteira";
    float posicaoX = 50;
    float posicaoY = 50;
    
    public void move(float x, float y){
        posicaoX = x;
        posicaoY = y;
    }
    
    public void printStatus(){
        System.out.println("-----------Info R-ATM----------");
        System.out.println("Nome do Robo: " + nome);
        System.out.println("Peso do Robo: " + peso);
        System.out.println("Velocidade Max: " + velocidadeMax);
        System.out.println("Carga Max do Robo: " + pesoCargaMax);
        System.out.println("Tipo Tração do Robo: " + tipoTracao);
        System.out.println("Posição X do Robo: " + posicaoX);
        System.out.println("Posição Y do Robo: " + posicaoY);
        System.out.println("-------------------------------");
    }
    
    public static void main(String[] args) {
        robo3 objRobo = new robo3();
        objRobo.printStatus();
        objRobo.move(60, 50);
        objRobo.printStatus();
        objRobo.move(65, 55);
        objRobo.printStatus();
    }
}
