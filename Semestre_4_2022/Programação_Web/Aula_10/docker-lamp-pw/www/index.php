<?php

    if (!isset($_GET['controller'])) {
        require_once('Controllers/SiteController.php');
        $SiteController = new SiteController();
        $SiteController -> home();
    }else {
        
        switch ($_REQUEST['controller']) {
            // SITE
            case 'site':
                require_once('Controllers/SiteController.php');
                $SiteController = new SiteController();
                
                if (!isset($_GET['method'])) {
                    $SiteController -> home();
                }else {
                    switch ($_REQUEST['method']) {
                        case 'home':
                            $SiteController -> home();
                            break;

                        case 'about':
                            $SiteController -> about();
                            break;
                            
                        case 'products':
                            $SiteController -> products();
                            break;
                        
                        case 'contact':
                            $SiteController -> contact();
                            break;
                    }
                }
                break;
            
                // CLIENT
                case 'client':
                    require_once('Controllers/ClientController.php');
                    $ClientController = new ClientController();

                    if (!isset($_GET['method'])){
                        // default action
                    }else{
                        switch ($_REQUEST['method']) {
                            case 'register':
                                $ClientController -> register();
                                break;                            
                                
                            case 'registerView':
                                $ClientController -> registerView();
                                break;
                                
                                case 'listClients':
                                    $ClientController -> listClients();
                                    break;
                                
                            }
                    }
                break;
        }

    }

?>