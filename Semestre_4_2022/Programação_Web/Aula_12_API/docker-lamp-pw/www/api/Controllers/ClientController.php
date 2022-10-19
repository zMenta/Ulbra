<?php
class ClientController{

    var $ClientModel;

    public function __construct()
    {
        require_once('Models/ClientModel.php');
        $this -> ClientModel = new ClientModel();
    }
    

    public function listClients(){
        $result = $this -> ClientModel -> listClients();

        $arrayClients = array();

        while($line = $result -> fetch_assoc()){
            array_push($arrayClients, $line);
        }
        header('Contenty-Type: application/json');
        echo json_encode($arrayClients);

    }

    public function clientDetails($clientId){
        $result = $this -> ClientModel -> consultClient($clientId);

        if($clientArray = $result->fetch_assoc()){
            header('Contenty-Type: application/json');
            echo json_encode($clientArray);
        }else{
            header('Contenty-Type: application/json');
            echo('{ "error" : "Client not found" }');
        }
    }

}
?>
