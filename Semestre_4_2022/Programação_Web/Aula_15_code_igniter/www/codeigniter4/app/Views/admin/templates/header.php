<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>


    <!-- Jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/script.js"></script>
    <link rel="stylesheet" href="<?=base_url('assets/css/style.css')?>">

</head>

<body>

    <header class="p-5 text-center">
        <h1> Admin Area</h1>
        <a href="<?=base_url('admin/logout')?>">Logout</a>
    </header>

    <div class="container-fluid">
        <div class="row">
            <nav class="p-3 col-md-3">
                <h2>Menu</h2>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a id="buttonHome" class="nav-link" href="<?=base_url('admin')?>">Home</a>
                    </li>
                </ul>
                <h2>Client</h2>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a id="buttonClientList" class="nav-link" href="<?=base_url('admin/listClients')?>">List</a>
                    </li>
                </ul>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a id="buttonClientInsert" class="nav-link" href="<?=base_url('admin/insertClient')?>">Insert</a>
                    </li>
                </ul>
            </nav>

            <section class="p-3 col-md-9">
