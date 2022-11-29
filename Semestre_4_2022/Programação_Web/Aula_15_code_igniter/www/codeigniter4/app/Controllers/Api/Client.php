<?php

namespace App\Controllers\Api;

use App\Models\ClientModel;
use App\Controllers\BaseController;

class Client extends BaseController{

    public function listClients(){
        $ClientModel = new ClientModel();

        $data = [
            'arrayClients' => $ClientModel -> findAll()
        ];


        return json_encode($data);
    }
}
