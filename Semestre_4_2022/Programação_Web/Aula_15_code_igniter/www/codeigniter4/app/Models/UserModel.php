<?php

namespace App\Models;

use CodeIgniter\Model;


class UserModel extends Model{

    protected $table = 'users';

    public function getUser($userName){
        return $this -> where('user', $userName) -> first();
    }

}
