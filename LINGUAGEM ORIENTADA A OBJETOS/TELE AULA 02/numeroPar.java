import java.util.*;

public class numeroPar {
    public static void main(String[] args) {
        Scanner valor = new Scanner(System.in);
        System.out.println("Informe um número inteiro: ");
        int numero = valor.nextInt();

        if (numero % 2 == 0){
            System.out.println("O número digitado é par");
        }
        else{
            System.out.println("O número digitado não é par");
        }
        System.exit(0);
    }
}
