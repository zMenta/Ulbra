$(document).ready(function () {

    $('section').load('Pages/home.html');

    $('#buttonAbout').click(function () {
        $('section').load('Pages/about.html');
    });

    $('#buttonHome').click(function () {
        $('section').load('Pages/home.html');
    });
});