<?php

class ClientModel
{

    var $connection;

    public function __construct()
    {
        require_once('Db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass->openConnection();
        $this -> connection = $ConnectClass->getConnection();
    }


    public function listClients()
    {
        $sql = "SELECT * FROM clients";
        return $this -> connection->query($sql);
    }


    public function consultClient($clientId){
        $sql = "SELECT * FROM clients WHERE idClient = $clientId";
        return $this -> connection->query($sql);
    }


    public function insert($arrayClient){
        $sql = "
            INSERT INTO
                clients (name, email, phone, address)
            VALUES(
                '{$arrayClient['name']}',
                '{$arrayClient['email']}',
                '{$arrayClient['phone']}',
                '{$arrayClient['address']}'
            )
        ";
         return $this -> connection -> query($sql);
    }


    public function update($arrayClient){
        $sql = "
            UPDATE clients 
                SET
                    name = '{$arrayClient['name']}',
                    email = '{$arrayClient['email']}',
                    phone = '{$arrayClient['phone']}',
                    address = '{$arrayClient['address']}'
                WHERE
                    idClient = '{$arrayClient['clientId']}'";
        return $this -> connection->query($sql);
    }


    public function delete($clientId){
        $sql = "
            DELETE FROM clients
                WHERE
                    idClient = $clientId";
        return $this -> connection->query($sql);
    }

}
