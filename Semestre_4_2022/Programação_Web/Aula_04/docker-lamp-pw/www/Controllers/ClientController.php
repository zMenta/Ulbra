<?php
class ClientController{
    
    public function register()
    {
        require_once('Views/Templates/header.php');
        require_once('Views/Client/register.php');
        require_once('Views/Templates/footer.php');
    }
    
    public function registerView()
    {
        $client_data_array = array(
            'name' => $_POST['name'],
            'email' => $_POST['email'],
            'gender' => $_POST['gender'],
            'term' => $_POST['term'],
            'spam' => $_POST['spam'],
            'notification' => $_POST['notification'],
        );

        // var_dump($_POST);

        require_once('Views/Templates/header.php');
        require_once('Views/Client/registerView.php');
        require_once('Views/Templates/footer.php');
    }
}
?>