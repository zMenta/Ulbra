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


    public function insertClient(){
        $client = json_decode(file_get_contents("php://input"));
        $arrayClient = (array) $client;
        $this -> ClientModel -> insert($arrayClient);

        header('Contenty-Type: application/json');
        echo('{ "message" : "Client Inserted" }');
    }


    public function updateClient($clientId){
        $client = json_decode(file_get_contents("php://input"));
        $arrayClient = (array) $client;
        $this -> ClientModel -> update($clientId, $arrayClient);

        header('Contenty-Type: application/json');
        echo('{ "message" : "Client Updated" }');
    }


    public function deleteClient($clientId){
        $this -> ClientModel -> delete($clientId);
        header('Contenty-Type: application/json');
        echo('{ "message" : "Client Deleted" }');
    }

}
?>
