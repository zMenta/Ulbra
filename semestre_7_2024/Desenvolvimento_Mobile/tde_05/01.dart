void main() {
    Map<String, dynamic> pseudoJson = {"values": ["Richard", 48]};

    Pessoa newPerson = Pessoa.fromJson(pseudoJson);

    print(newPerson.nome);
    print(newPerson.idade);
}

class Pessoa {
    final String nome;
    final int idade;

    const Pessoa(this.nome, this.idade);

    factory Pessoa.fromJson(Map<String, dynamic> json) {
        return Pessoa(json["values"][0], json["values"][1]);
    }
}
