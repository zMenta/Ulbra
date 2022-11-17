<?php

namespace App\Controllers;

use App\Models\ClientModel;



class Client extends BaseController{

    public function listClients(){
        $ClientModel = new ClientModel();

        var_dump( $ClientModel -> findAll());
    
        // $data = [
        //     'arrayClients' => $ClientModel -> findAll()
        // ];
    
        // echo view ('templates/header');
        // echo view ('templates/listClients', $data);
        // echo view ('templates/footer');
    }

}
