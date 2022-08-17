<?php

    if (!isset($_GET['controller'])) {
        require_once('Controllers/SiteController.php');
        $SiteController = new SiteController();
        $SiteController -> home();
    }else {
        
        switch ($_REQUEST['controller']) {
            case 'site':
                require_once('Controllers/SiteController.php');
                $SiteController = new SiteController();
                
                if (!isset($_GET['method'])) {
                    $SiteController -> home();
                }else {
                    $method = $_REQUEST['method'];
                    
                    switch ($method) {
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
            
            default:
                # code...
                break;
        }

    }


?>