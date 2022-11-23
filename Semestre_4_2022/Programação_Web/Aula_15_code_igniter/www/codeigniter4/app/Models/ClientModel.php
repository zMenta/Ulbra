<?php

namespace App\Models;

use CodeIgniter\Model;


class ClientModel extends Model{

    protected $table = 'clients';
    protected $primaryKey = 'idClient';
    protected $allowedFields = [
      'name', 'email', 'phone', 'address'
    ];

}
