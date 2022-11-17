<?php

namespace App\Controllers;

class Site extends BaseController
{
    public function index()
    {
        echo view('templates/header.php');
        echo view('site/home.php');
        echo view('templates/footer.php');
    }
}
