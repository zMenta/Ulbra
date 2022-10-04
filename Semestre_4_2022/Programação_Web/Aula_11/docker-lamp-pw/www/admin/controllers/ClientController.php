<?php

class ClientController{

    public function listClients(){
        require_once('models/ClientModel.php');
        $ClientModel = new ClientModel();
        $result = $ClientModel -> listClients();

        $arrayClients = array();

        while($line = $result -> fetch_assoc()){
            array_push($arrayClients, $line);
        }

        require_once('views/templates/header.php');
        require_once('views/client/listClientsView.php');
        require_once('views/templates/footer.php');
    }

    public function clientDetails($clientId){
        require_once('models/ClientModel.php');
        $ClientModel = new ClientModel();
        $result = $ClientModel -> consultClient($clientId);

        if($clientArray = $result->fetch_assoc()){
        require_once('views/templates/header.php');
        require_once('views/client/clientDetails.php');
        require_once('views/templates/footer.php');
        }
    }

    public function insert(){
        require_once('views/templates/header.php');
        require_once('views/client/insert.php');
        require_once('views/templates/footer.php');
    }

    public function insertMethod(){
        $arrayClient = array(
            'name' => $_POST['name'],
            'email' => $_POST['email'],
            'phone' => $_POST['phone'],
            'address' => $_POST['address'],
        );

        require_once('models/ClientModel.php');
        $ClientModel = new ClientModel();
        $ClientModel -> insert($arrayClient);
    }

}
