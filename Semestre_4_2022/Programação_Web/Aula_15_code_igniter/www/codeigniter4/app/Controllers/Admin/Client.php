<?php

namespace App\Controllers\Admin;

use App\Models\ClientModel;
use App\Controllers\BaseController;

class Client extends BaseController{

    public function listClients(){
        $ClientModel = new ClientModel();

        $data = [
            'arrayClients' => $ClientModel -> findAll()
        ];

        echo view ('admin/templates/header');
        echo view ('admin/client/listClients', $data);
        echo view ('admin/templates/footer');
    }

}
