void main() {
    Pessoa newPerson = Pessoa(nome:"Bob", idade:25, cpf:5321584);

    print(newPerson.nome);
    print(newPerson.idade);
    print(newPerson.cpf);
}

class Pessoa {
    final String nome;
    final int idade;
    final int cpf;

    const Pessoa({required this.nome, required  this.idade, required this.cpf});
}
