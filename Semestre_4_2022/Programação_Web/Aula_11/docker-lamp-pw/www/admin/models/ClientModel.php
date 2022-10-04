<?php

class ClientModel
{

    public function listClients()
    {
        require_once('db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass->openConnection();
        $connection = $ConnectClass->getConnection();

        $sql = "SELECT * FROM clients";
        return $connection->query($sql);
    }

    
    public function consultClient($clientId){
        require_once('db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass->openConnection();
        $connection = $ConnectClass->getConnection();

        $sql = "SELECT * FROM clients WHERE idClient = $clientId";
        return $connection->query($sql);
    }

    public function insert($arrayClient){
        require_once('db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass->openConnection();
        $connection = $ConnectClass->getConnection();

        $sql = "
            INSERT INTO clients (name, email, phone, address)
                VALUES
                ('{arrayClient['name']}',
                '{arrayClient['email']}',
                '{arrayClient['phone']}',
                '{arrayClient['address']}'
                )
        ";

        return $connection->query($sql);
    }

    public function update($arrayClient){
        require_once('db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass->openConnection();
        $connection = $ConnectClass->getConnection();

        $sql = "
            UPDATE clients 
                SET
                    name = '{arrayClient['name']},
                    email = '{arrayClient['email']},
                    phone = '{arrayClient['phone']},
                    address = '{arrayClient['address']}
                WHERE
                    idClient = '{arrayClient['clientId']}
        ";

        return $connection->query($sql);
    }


    public function delete($clientId){
        require_once('db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass->openConnection();
        $connection = $ConnectClass->getConnection();

        $sql = "
            DELETE FROM clients
                WHERE
                    idClient = $clientId
        ";

        return $connection->query($sql);
    }

}
