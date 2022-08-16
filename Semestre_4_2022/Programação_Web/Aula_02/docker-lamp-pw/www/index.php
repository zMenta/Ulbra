<?php
    include('Templates/header.php');

    if(isset( $_GET['pages'])){
        $page = $_GET['pages'];
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