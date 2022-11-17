<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;
use App\Models\UserModel;


class User extends BaseController{

    public function validateLogin(){
            $UserModel = new UserModel();

            $userName = $this -> request -> getVar('login');
            $userPassword = $this -> request -> getVar('password');

            if($user = $UserModel -> getUser($userName)){

                    if($user['password'] == $userPassword){
                        // correct login
                        $session = \Config\Services::session();
                        $session -> set('user', $user);
                        return redirect() -> to(base_url('/admin'));
                    }else{
                        // incorrect password
                    }

                }else{
                    // user don't exist

            }

        }
}
