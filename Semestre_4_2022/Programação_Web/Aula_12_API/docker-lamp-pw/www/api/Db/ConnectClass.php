<?php

class ConnectClass{
    
    var $connection;

    public function openConnection()
    {
        $servername = "db:3306";
        $username = "root";
        $password = "1q2w3e4r5t";
        $dbname = "pw_exemple";

        $this -> connection = new mysqli($servername, $username, $password, $dbname);
        if ($this  -> connection -> connect_error) {
            die("Connection failed " . $this -> connection -> connect_error);
        }
    }

    public function getConnection()
    {
        return $this -> connection; 
    }

}

?>