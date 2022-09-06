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
            require_once('controllers/User.php');
            $UserController = new UserController();

            switch ($_REQUEST['method']) {
                case 'validateLogin':
                    $UserController->validateLogin();
                    break;
            }

            break;
    }
}
