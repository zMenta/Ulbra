<?php

class UserController
{

    public function validateLogin()
    {
        $userName = $_POST['userName'];
        $password = $_POST['password'];
        require_once('models/UserModel.php');
        $UserModel = new UserModel();

        $result = $UserModel->consultUser($userName);

        if ($line = $result->fetch_assoc()) {
            if ($password == $line['password']) {
                $_SESSION['user'] = $line;
                header('Location: index.php');
            } else {
                echo ('invalid password');
            }
        } else {
            echo ('User do not exist');
        }
    }
}
