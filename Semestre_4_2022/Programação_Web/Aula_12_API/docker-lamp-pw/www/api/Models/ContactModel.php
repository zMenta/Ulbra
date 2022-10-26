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
        return $this -> connection -> query(sql);
    }

}
?>
