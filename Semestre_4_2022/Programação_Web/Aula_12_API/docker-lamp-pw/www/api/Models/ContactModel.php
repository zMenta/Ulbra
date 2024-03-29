<?php
class ContactModel{

    var $connection;

    public function __construct()
    {
        require_once('Db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass->openConnection();
        $this -> connection = $ConnectClass->getConnection();
    }


    public function listContacts(){
        $sql = "SELECT * FROM contacts";
        return $this -> connection -> query($sql);
    }


    public function consultContact($contactId){
        $sql = "SELECT * FROM contacts WHERE idContact = $contactId";
        return $this -> connection -> query($sql);
    }


    public function insertContact($contactArray){
        $sql = "
            INSERT INTO
                contacts (name, email, message)
            VALUES(
                '{$contactArray['name']}',
                '{$contactArray['email']}',
                '{$contactArray['message']}'
            )
        ";
         return $this -> connection -> query($sql);
    }


    public function deleteContact($contactId){
        $sql = "
            DELETE FROM contacts
                WHERE
                    idContact = $contactId";
        return $this -> connection -> query($sql);
    }

}
?>
