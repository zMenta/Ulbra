<?php
class ContactController{

    var $ContactModel;

    public function __construct(){
        require_once('Models/ContactModel.php');
        $this -> ContactModel = new ContactModel();
    }


    public function listContacts(){
       $result = $this -> ContactModel -> listContacts();

       $contactsArray = array();

        while($contact = $result -> fetch_assoc()){
           array_push($contactsArray, $contact);
       }
        header('Contenty-Type: application/json');
        echo json_encode($contactsArray);
    }


    public function consultContact($contactId){
        $result = $this -> ContactModel -> consultContact($contactId);

        if($contactArray = $result -> fetch_assoc()){
            header('Contenty-Type: application/json');
            echo json_encode($contactArray);
        }else{
            header('Contenty-Type: application/json');
            echo('{ "error" : "Contact not found" }');
        }
    }


    public function insertContact(){
        $contact = json_decode(file_get_contents("php://input"));
        $contactArray = (array) $contact;
        $this -> ContactModel -> insertContact($contactArray);

        header('Contenty-Type: application/json');
        echo('{ "message" : "Contact Inserted" }');
    }


    public function deleteContact($contactId){
        $this -> ContactModel -> deleteContact($contactId);
        header('Contenty-Type: application/json');
        echo('{ "message" : "Contact Deleted" }');
    }

}
?>
