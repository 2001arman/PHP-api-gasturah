<?php

require_once "connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $response   = array();
    $username   = $_POST['username'];
    $password   = $_POST['password'];
    $query      = "SELECT * FROM `user` WHERE `username` ='$username' and `password` = '$password'";
    $hasil      = mysqli_query($con, $query);

    if(mysqli_num_rows($hasil)===0){
        $response['value'] = '200';
	     $response['status'] = 'failed';
	     $response['msg'] = 'Username atau password anda salah';
	     $response['content'] = (object)[];

        echo json_encode($response);

    } else{
        while ($fetchdata = mysqli_fetch_array($hasil)) {
            $response['value'] = '200';
            $response['status'] = 'success';
            $response['msg'] = 'Berhasil login';
            $response['content'] = [
                'username' => $fetchdata['username'],
                'name' => $fetchdata['name'],
                'profile_picture' => $fetchdata['profile_picture'],
                'level' => $fetchdata['level'],
            ];
        }
        echo json_encode($response);
    }

}
