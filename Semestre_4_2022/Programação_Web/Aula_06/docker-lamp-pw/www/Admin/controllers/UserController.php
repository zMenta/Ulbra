<?php

class UserController
{

    public function validateLogin()
    {
        $login = $_POST['login'];
        $password = $_POST['password'];
        require_once('models/UserModel.php');
        $UserModel = new UserModel();

        $result = $UserModel->consultUser($login);

        if ($line = $result->fetch_assoc()) {
            if ($password == $line['password']) {
                $_SESSION['user'] = $line;
                // header('Location: ?controller=main&method=home');
                header('Location: index.php');
            } else {
                echo ('invalid password');
            }
        } else {
            echo ('User do not exist');
        }
    }
}
