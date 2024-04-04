void main() {
    Estudante newPerson = Estudante(nome:"Bob", idade:25, cpf:5321584);

    print(newPerson.nome);
    print(newPerson.idade);
    print(newPerson.cpf);
    newPerson.caminhar();
    newPerson.falar();
}

class Estudante implements Pessoa{
    final String nome;
    final int idade;
    final int cpf;

    const Estudante({required this.nome, required  this.idade, required this.cpf});

    @override
    caminhar() {
        print("caminhando");
    }

    @override
    falar() {
        print("falando");
    }
}

abstract class Pessoa {
    caminhar();
    falar();
}
