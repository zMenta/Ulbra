<?php

class ClientController{

    var $ClientModel;

    public function __construct()
    {
        require_once('models/ClientModel.php');
        $this -> ClientModel = new ClientModel();
    }

    public function listClients(){
        $result = $this -> ClientModel -> listClients();
        $arrayClients = array();
        while($line = $result -> fetch_assoc()){
            array_push($arrayClients, $line);
        }

        require_once('views/templates/header.php');
        require_once('views/client/listClientsView.php');
        require_once('views/templates/footer.php');
    }

    public function clientDetails($clientId){
        $result = $this -> ClientModel -> consultClient($clientId);

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
        $this -> ClientModel -> insert($arrayClient);

        header('Location:?controller=client&method=list');
    }


    public function update($clientId){
        $result = $this -> ClientModel -> consultClient($clientId);
        if($clientArray = $result->fetch_assoc()){
            require_once('views/templates/header.php');
            require_once('views/client/alter.php');
            require_once('views/templates/footer.php');
        }
    }

    public function updateMethod($clientId){
        $arrayClient = array(
            'cliendId' => $clientId,
            'name' => $_POST['name'],
            'email' => $_POST['email'],
            'phone' => $_POST['phone'],
            'address' => $_POST['address'],
        );
        $this -> ClientModel -> update($arrayClient);
    }

    public function delete($clientId){
        $this -> ClientModel -> delete($clientId);
    }
}
