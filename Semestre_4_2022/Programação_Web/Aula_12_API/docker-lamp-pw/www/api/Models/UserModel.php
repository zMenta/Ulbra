<?php

class UserModel
{
    public function consultUser($userName)
    {
        require_once('Db/ConnectClass.php');
        $ConnectClass = new ConnectClass();
        $ConnectClass->openConnection();
        $connection = $ConnectClass->getConnection();

        $sql =
            "SELECT * FROM users
        WHERE user = '$userName' ";

        return $connection->query($sql);
    }
}
