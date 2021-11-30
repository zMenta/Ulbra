import java.util.ArrayList;

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
            this.primeiro=caozinho;
            this.ultimo=caozinho;
            this.tam++;
            return true;
        }else{
            caozinho.proximo=primeiro;
            primeiro=caozinho;
            this.tam++;
            return true;
        }

    }
    public boolean addFim(Cao caozinho){
        if(this.primeiro==null){
          return add(caozinho);
        }else{
            Cao aux=primeiro;

            while (aux.proximo!=null){
                aux=aux.proximo;
            }
            aux.proximo=caozinho;
            this.ultimo=caozinho;
            tam++;
            return true;
        }

    }
    public boolean addFim2(Cao caozinho){
        if(this.primeiro==null){
            return add(caozinho);
        }else{
            Cao aux=ultimo;
            aux.proximo=caozinho;
            this.ultimo=caozinho;
            tam++;
            return true;
        }

    }
    public void exibir(){
       if(isEmpty()){
           System.out.println("Lista vazia");
       }else{
           Cao aux=primeiro;
           aux.exibir();
           while (aux.proximo!=null){
               aux=aux.proximo;
               aux.exibir();
           }
       }

    }
    public boolean remover(){
        if (!isEmpty()){
         Cao p =this.primeiro;
         this.primeiro=p.proximo;
         this.tam--;
         return true;
         //   this.primeiro=this.primeiro.proximo;
        }else{
            System.out.println("Lista vazia");
            return false;
        }
    }
    public boolean remover(int x){
        if (x == 0){
           return this.remover();
        }else if(x>=tam){
            return false;
        } else if (x==tam-1){
         return this.removerFim();
        }else{
            int cout=0;
            Cao elemento=this.primeiro;
            Cao anterior= this.primeiro;
            while (x>cout){
                cout++;
                anterior=elemento;
                elemento=elemento.proximo;
            }
            anterior.proximo=elemento.proximo;
            this.tam--;
            return true;
        }

    }
    public boolean removerFim(){
        if(this.primeiro==null){
            System.out.println("Lista vazia");
            return false;
        }else{
        Cao aux=primeiro;
        Cao penultimo=primeiro;
        while (aux.proximo!=null){
            penultimo=aux;
            aux=aux.proximo;
        }
        penultimo.proximo=null;
        this.ultimo=penultimo;
        this.tam--;
        return true;
    }
    }

    public boolean removerPorNome(String nome){
        int index = 0;
        Cao aux = primeiro;

        while (!aux.nome.equals(nome)){
            index++;
            aux=aux.proximo;
        }

        return this.remover(index);
    }
}
