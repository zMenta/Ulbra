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
    <link rel="stylesheet" href="assets/css/style.css">

</head>

<body>

    <header class="p-5 bg-primary text-white text-center">
        <h1>My Web Page</h1>
    </header>

    <div class="container-fluid">
        <div class="row">
            <nav class="p-3 col-md-3">
                <h2>Menu</h2>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a id="buttonHome" class="nav-link" href="?pages=home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a id="buttonAbout" class="nav-link" href="?pages=about">About</a>
                    </li>
                    <li class="nav-item">
                        <a id="buttonProducts" class="nav-link" href="?pages=products">Products</a>
                    </li>
                    <li class="nav-item">
                        <a id="buttonContact" class="nav-link" href="?pages=contact">Contact Us</a>
                    </li>
                </ul>
            </nav>

            <section class="p-3 col-md-9">