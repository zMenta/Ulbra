<?php

session_start();

if (!isset($_GET['controller'])) {
    require_once('controllers/MainController.php');
    $MainController = new MainController();
    $MainController->home();
} else {

    switch ($_REQUEST['controller']) {
        case 'main':

            require_once('controllers/MainController.php');
            $MainController = new MainController();

            if (!isset($_GET['method'])) {
                $MainController->home();
            } else {
                switch ($_REQUEST['method']) {
                    case 'home':
                        $MainController->home();
                        break;

                    case 'login':
                        $MainController->login();
                        break;

                    case 'logout':
                        $MainController->logout();
                        break;
                }
            }
            break;

        case 'user':
            require_once('controllers/UserController.php');
            $UserController = new UserController();

            switch ($_REQUEST['method']) {
                case 'validateLogin':
                    $UserController->validateLogin();
                    break;
            }

            break;
            

        case 'client':
            require_once('controllers/ClientController.php');
            $ClientController = new ClientController();
            if(!isset($_GET['method'])){

            }else{
                switch ($_REQUEST['method']) {
                    case 'list':
                        $ClientController->listClients();
                        break;

                    case 'clientDetails':
                        $ClientController -> clientDetails($_GET['id']);
                        break;

                    case 'insert':
                        $ClientController -> insert();
                        break;
                        
                    case 'insert':
                        $ClientController -> insertMethod();
                        break;
            }
            break;
        }
    }
}
?>