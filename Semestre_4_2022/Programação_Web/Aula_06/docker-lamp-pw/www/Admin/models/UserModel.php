<?php

class UserModel
{
    public function consultUser($userName)
    {
        require_once('db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass->openConnection();
        $connection = $ConnectClass->getConnection();

        $sql =
            "SELECT * FROM clients
        WHERE user = '$userName' ";

        return $result = $connection->query($sql);
    }
}
