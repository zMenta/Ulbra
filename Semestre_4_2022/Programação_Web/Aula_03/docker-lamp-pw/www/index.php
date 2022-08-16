<?php
    include('Templates/header.php');

    if(isset( $_GET['page'])){
        $page = $_GET['page'];
        if($page == 'home'){
            include('Page/home.php');
        }
        else if($page == 'about'){
            include('Page/about.php');
        }
    }else{
        include('Page/home.php');
    }

    include('Templates/footer.php');
?>