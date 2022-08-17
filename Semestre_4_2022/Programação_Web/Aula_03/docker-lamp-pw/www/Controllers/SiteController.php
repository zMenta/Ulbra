<?php

class SiteController{

    public function home()
    {
        include('Views/Templates/header.php');
        include('Views/Site/home.php');
        include('Views/Templates/footer.php');
    }


    public function about()
    {
        include('Views/Templates/header.php');
        include('Views/Site/about.php');
        include('Views/Templates/footer.php');        
    }
    
    public function products()
    {
        include('Views/Templates/header.php');
        include('Views/Site/products.php');
        include('Views/Templates/footer.php');        
    }
    
    public function contact()
    {
        include('Views/Templates/header.php');
        include('Views/Site/contact.php');
        include('Views/Templates/footer.php');        
    }

}

?>