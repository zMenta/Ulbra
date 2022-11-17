<?php

namespace App\Controllers;

use App\Models\ClientModel;


class Client extends BaseController{

    public function listClients(){
        $ClientModel = new ClientModel();

        $data = [
            'arrayClients' => $ClientModel -> findAll()
        ];

        echo view ('templates/header');
        echo view ('client/listClients', $data);
        echo view ('templates/footer');
    }

}
