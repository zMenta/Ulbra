<?php
class ClientController{
    
    public function register()
    {
        include('Views/Templates/header.php');
        include('Views/Client/register.php');
        include('Views/Templates/footer.php');
    }
    
    public function registerView()
    {
        $client_data_array = array(
            'name' => $_POST['name'],
            'email' => $_POST['email'],
        );

        
        include('Views/Templates/header.php');
        include('Views/Client/registerView.php');
        include('Views/Templates/footer.php');
    }
}
?>