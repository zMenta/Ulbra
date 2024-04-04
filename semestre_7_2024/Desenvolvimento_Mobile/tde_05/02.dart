void main() {
    Map<String, dynamic> pseudoJson = {"values": [524.84, 100]};

    Conta newAccount = Conta.fromJson(pseudoJson);

    print(newAccount.saldo);
    print(newAccount.num_conta);
    print(newAccount.getJson());
}

class Conta {
    final double saldo;
    final int num_conta;

    const Conta(this.saldo, this.num_conta);

    factory Conta.fromJson(Map<String, dynamic> json) {
        return Conta(json["values"][0], json["values"][1]);
    }

    Map<String, dynamic> getJson() {
        return {"values": [this.saldo, this.num_conta]};
    }
}
