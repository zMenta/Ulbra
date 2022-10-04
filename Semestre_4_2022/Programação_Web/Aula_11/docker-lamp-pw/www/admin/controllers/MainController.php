<?php

class MainController
{

    public function home()
    {

        if (isset($_SESSION['user'])) {
            require_once('views/templates/header.php');
            require_once('views/templates/home.php');
            require_once('views/templates/footer.php');
        } else {
            header('Location: ?controller=main&method=login');
        }
    }


    public function login()
    {
        require_once('views/user/login.php');
    }

    public function logout()
    {
        session_destroy();
        header('Location: ?controller=main&method=login');
    }
}
