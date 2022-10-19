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
        );

        # Spam Validation
        if (isset($_POST['spam'])) {
            $client_data_array['spam'] = 'on';
        } else {
            $client_data_array['spam'] = 'off';
        }

        # Term Validation
        if (isset($_POST['term'])) {
            $client_data_array['term'] = 'on';
        }else {
            $client_data_array['term'] = 'off';
        }

        # Notification validation
        if (isset($_POST['notification'])) {
            $client_data_array['notification'] = 'on';
        }else {
            $client_data_array['notification'] = 'off';
        }

        // var_dump($_POST);

        require_once('Views/Templates/header.php');
        require_once('Views/Client/registerView.php');
        require_once('Views/Templates/footer.php');
    }
    
    public function listClients(){
        require_once('Models/ClientModel.php');
        $ClientModel = new ClientModel();
        $result = $ClientModel -> listClients();

        $arrayClients = array();

        while($line = $result -> fetch_assoc()){
            array_push($arrayClients, $line);
        }

        require_once('Views/Templates/header.php');
        require_once('Views/Client/listClientsView.php');
        require_once('Views/Templates/footer.php');

    }

}
?>