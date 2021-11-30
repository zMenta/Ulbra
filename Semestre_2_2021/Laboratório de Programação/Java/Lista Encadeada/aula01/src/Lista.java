public class Lista {
    public Cao primeiro;
    public int tam;
    public Cao ultimo;

    public int size(){
        return tam;
    }

    @Override
    public String toString() {
        return "Lista{" +
                "primeiro=" + primeiro +
                ", tam=" + tam +
                '}';
    }

    public boolean isEmpty(){
        if(primeiro==null){
            return true;
        }else{
            return false;
        }
    }

    public boolean add(Cao caozinho){
        if(this.primeiro==null){
            this.primeiro = caozinho;
            this.ultimo = caozinho;
            this.tam++;
            return true;
        }else{
            this.ultimo.proximo = caozinho;
            this.ultimo = caozinho;
            this.tam++;
            return true;
        }

    }
}
