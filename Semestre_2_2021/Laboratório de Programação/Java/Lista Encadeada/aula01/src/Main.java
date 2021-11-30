public class Main {

    public static void main(String[] args) {
        Lista canil= new Lista();
        Cao cao = new Cao();

        cao.ler();
        System.out.println(cao);
        canil.add(cao);
        Cao cao2 = new Cao();
        cao2.ler();
        canil.add(cao2);
        // Cao cao3 = new Cao();
        // cao3.ler();
        // canil.add(cao3);

        System.out.println(canil.toString());
        System.out.println("Número de elementos: "+canil.size());
        if(canil.isEmpty()){
            System.out.println("Vazia");
        }else{
            System.out.println("Cheia");
        }
    }
}
