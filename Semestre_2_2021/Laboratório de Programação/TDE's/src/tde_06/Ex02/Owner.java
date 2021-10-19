package tde_06.Ex02;

/*Elabore uma classe Conta Corrente, com os seguintes atributos: saldo, número da conta, senha e titular.
 Titular é um atributo composto de uma classe Cliente, os atributos de uma classe cliente é cpf, nome e idade.
 Crie métodos que possibilite efetuar um saque, efetuar um depósito e transferir valores de uma conta para outra.*/

import java.lang.reflect.Constructor;

public class Owner {
    public int cpf;
    public String name;
    public int age;

    //Constructor
    public  Owner(int cpf, String name, int age){
        this.age = age;
        this.cpf = cpf;
        this.name = name;
    }

}

class Account extends Owner{
    public float balance;
    public int account_number;
    public String password;
    public String owner;

    //Constructor
    public Account(int cpf, String name, int age, int account_number, String password, float balance) {
        super(cpf, name, age);
        this.owner = name;
        this.account_number = account_number;
        this.balance = balance;
        this.password = password;
    }


}