<?php
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DB', 'gasturah');

$con = mysqli_connect('localhost', 'root', '', 'gasturah');
if(!$con){
    echo("Gagal Terhubung ke Database!". mysqli_connect_error());
    die("Gagal Terhubung ke Database!". mysqli_connect_error());
} 