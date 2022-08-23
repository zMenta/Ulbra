<?php

class SiteController{

    public function home()
    {
        require_once('Views/Templates/header.php');
        require_once('Views/Site/home.php');
        require_once('Views/Templates/footer.php');
    }


    public function about()
    {
        require_once('Views/Templates/header.php');
        require_once('Views/Site/about.php');
        require_once('Views/Templates/footer.php');        
    }
    
    public function products()
    {
        require_once('Views/Templates/header.php');
        require_once('Views/Site/products.php');
        require_once('Views/Templates/footer.php');        
    }
    
    public function contact()
    {
        require_once('Views/Templates/header.php');
        require_once('Views/Site/contact.php');
        require_once('Views/Templates/footer.php');        
    }

}

?>