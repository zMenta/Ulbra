<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;


class Admin extends BaseController{

    public function index(){
        $session = \Config\Services::session();

        if($session -> has('user')){
           echo 'show home';
        }else{
           return redirect() -> to(base_url('admin/login'));
        }
    }

}
