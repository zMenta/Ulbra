<?php
    include('Templates/header.php');

    $page = $_GET['pages'];
    if(isset($page)){
        if($page == 'home'){
            include('Pages/home.php');
        }
        else if($page == 'about'){
            include('Pages/about.php');
        }
    }else{
        include('Pages/home.php');
    }

    include('Templates/footer.php');
?>