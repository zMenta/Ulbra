import javax.swing.SortingFocusTraversalPolicy;

public class Arvore {

    private Elemento root; // Raiz da arvore

    public Arvore() {
        root = null;
    }

    public void inserir(long v) {
        Elemento novo = new Elemento(); // cria um novo Nó
        novo.item = v; // atribui o valor recebido ao item de dados do Nó
        novo.dir = null;
        novo.esq = null;

        if (root == null)
            root = novo;
        else { // se nao for a raiz
            Elemento atual = root;
            Elemento anterior;
            while (true) {
                anterior = atual;
                if (v <= atual.item) { // ir para esquerda
                    atual = atual.esq;
                    if (atual == null) {
                        anterior.esq = novo;
                        return;
                    }
                } // fim da condição ir a esquerda
                else { // ir para direita
                    atual = atual.dir;
                    if (atual == null) {
                        anterior.dir = novo;
                        return;
                    }
                } // fim da condição ir a direita
            } // fim do laço while
        } // fim do else não raiz
    }

    public Elemento buscar(long chave) {
        if (root == null)
            return null; // se arvore vazia
        Elemento atual = root; // começa a procurar desde raiz
        while (atual.item != chave) { // enquanto nao encontrou
            if (chave < atual.item)
                atual = atual.esq; // caminha para esquerda
            else
                atual = atual.dir; // caminha para direita
            if (atual == null)
                return null; // encontrou uma folha -> sai
        } // fim laço while
        return atual; // terminou o laço while e chegou aqui é pq encontrou item
    }

    public boolean remover(long v) {
        if (root == null)
            return false; // se arvore vazia

        Elemento atual = root;
        Elemento pai = root;
        boolean filho_esq = true;

        // ****** Buscando o valor **********
        while (atual.item != v) { // enquanto nao encontrou
            pai = atual;
            if (v < atual.item) { // caminha para esquerda
                atual = atual.esq;
                filho_esq = true; // é filho a esquerda? sim
            } else { // caminha para direita
                atual = atual.dir;
                filho_esq = false; // é filho a esquerda? NAO
            }
            if (atual == null)
                return false; // encontrou uma folha -> sai
        } // fim laço while de busca do valor

        // **************************************************************
        // se chegou aqui quer dizer que encontrou o valor (v)
        // "atual": contem a referencia ao No a ser eliminado
        // "pai": contem a referência para o pai do No a ser eliminado
        // "filho_esq": é verdadeiro se atual é filho à esquerda do pai
        // **************************************************************

        // Se nao possui nenhum filho (é uma folha), elimine-o
        if (atual.esq == null && atual.dir == null) {
            if (atual == root)
                root = null; // se raiz
            else if (filho_esq)
                pai.esq = null; // se for filho a esquerda do pai
            else
                pai.dir = null; // se for filho a direita do pai
        }

        // Se é pai e nao possui um filho a direita, substitui pela subarvore a direita
        else if (atual.dir == null) {
            if (atual == root)
                root = atual.esq; // se raiz
            else if (filho_esq)
                pai.esq = atual.esq; // se for filho a esquerda do pai
            else
                pai.dir = atual.esq; // se for filho a direita do pai
        }

        // Se é pai e nao possui um filho a esquerda, substitui pela subarvore a
        // esquerda
        else if (atual.esq == null) {
            if (atual == root)
                root = atual.dir; // se raiz
            else if (filho_esq)
                pai.esq = atual.dir; // se for filho a esquerda do pai
            else
                pai.dir = atual.dir; // se for filho a direita do pai
        }

        // Se possui mais de um filho, se for um avô ou outro grau maior de parentesco
        else {
            Elemento sucessor = elemento_sucessor(atual);
            // Usando sucessor que seria o Nó mais a esquerda da subarvore a direita do No
            // que deseja-se remover
            if (atual == root)
                root = sucessor; // se raiz
            else if (filho_esq)
                pai.esq = sucessor; // se for filho a esquerda do pai
            else
                pai.dir = sucessor; // se for filho a direita do pai
            sucessor.esq = atual.esq; // acertando o ponteiro a esquerda do sucessor agora que ele assumiu
            // a posição correta na arvore
        }

        return true;
    }

    // O sucessor é o Nó mais a esquerda da subarvore a direita do No que foi
    // passado como parametro do metodo
    public Elemento elemento_sucessor(Elemento apaga) { // O parametro é a referencia para o No que deseja-se apagar
        Elemento paidosucessor = apaga;
        Elemento sucessor = apaga;
        Elemento atual = apaga.dir; // vai para a subarvore a direita

        while (atual != null) { // enquanto nao chegar no Nó mais a esquerda
            paidosucessor = sucessor;
            sucessor = atual;
            atual = atual.esq; // caminha para a esquerda
        }
        // *********************************************************************************
        // quando sair do while "sucessor" será o Nó mais a esquerda da subarvore a
        // direita
        // "paidosucessor" será o o pai de sucessor e "apaga" o Nó que deverá ser
        // eliminado
        // *********************************************************************************
        if (sucessor != apaga.dir) { // se sucessor nao é o filho a direita do Nó que deverá ser eliminado
            paidosucessor.esq = sucessor.dir; // pai herda os filhos do sucessor que sempre serão a direita
            // lembrando que o sucessor nunca poderá ter filhos a esquerda, pois, ele sempre
            // será o
            // Nó mais a esquerda da subarvore a direita do Nó apaga.
            // lembrando também que sucessor sempre será o filho a esquerda do pai

            sucessor.dir = apaga.dir; // guardando a referencia a direita do sucessor para
            // quando ele assumir a posição correta na arvore
        }
        return sucessor;
    }

    public void exibirArvore() {
        System.out.print("\n Exibindo em ordem: ");
        inOrder(root);
        System.out.print("\n Exibindo em pos-ordem: ");
        posOrder(root);
        System.out.print("\n Exibindo em pre-ordem: ");
        preOrder(root);
        System.out.print("\n Altura da arvore: " + altura(root));
        System.out.print("\n Quantidade de folhas: " + folhas(root));
        System.out.print("\n Quantidade de Nós: " + contarNos(root));
        if (root != null) { // se arvore nao esta vazia
            System.out.print("\n Valor minimo: " + min().item);
            System.out.println("\n Valor maximo: " + max().item);
        }
    }

    public void inOrder(Elemento atual) {
        // ESQ-RAIZ-DIR
        if (atual != null) {
            inOrder(atual.esq);
            System.out.print(atual.item + " ");
            inOrder(atual.dir);
        }
    }

    public void preOrder(Elemento atual) {
        // RAIZ - ESQ - DIR
        if (atual != null) {
            System.out.print(atual.item + " ");
            inOrder(atual.esq);
            inOrder(atual.dir);
        }
    }

    public void posOrder(Elemento atual) {
        // ESQ - DIR- RAIZ
        if (atual != null) {
            inOrder(atual.esq);
            inOrder(atual.dir);
            System.out.print(atual.item + " ");
        }
    }

    public int altura(Elemento atual) {
        if (atual != null) {
            int altura_esquerda = altura(atual.esq);
            int altura_direita = altura(atual.dir);
            return Math.max(altura_direita, altura_esquerda) + 1;
        }

        return 0;
    }

    public int folhas(Elemento atual) {
        if (atual != null) {
            int leaves = 0;
            if (atual.dir == null && atual.esq == null) {
                leaves = 1;
            }
            return folhas(atual.esq) + folhas(atual.dir) + leaves;
        }
        return 0;
    }

    public int contarNos(Elemento atual) {
        if (atual != null) {
            return contarNos(atual.esq) + contarNos(atual.dir) + 1;
        }
        return 0;
    }

    public Elemento min() {
        Elemento atual = root;
        Elemento anterior = null;
        while (atual != null) {
            anterior = atual;
            atual = atual.esq;
        }
        return anterior;
    }

    public Elemento max() {
        Elemento atual = root;
        Elemento anterior = null;
        while (atual != null) {
            anterior = atual;
            atual = atual.dir;
        }
        return anterior;
    }

    ////////////////////////////////////////////////
}
