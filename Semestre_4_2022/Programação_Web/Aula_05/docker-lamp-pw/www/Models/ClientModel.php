<?php

class ClientModel{

    public function listClients(){
        require_once('Db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass -> openConnection();
        $connection = $ConnectClass -> getConnection();

        $sql = "SELECT * FROM clients";
        return $result = $connection -> query($sql);
    
    }

}

?>