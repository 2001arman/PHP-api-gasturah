<?php

require "connect.php";

if($_SERVER['REQUEST_METHOD']=="POST"){
    $response   = array();
    $username   = $_POST['username'];
    $password   = $_POST['password'];
    $name       = $_POST['name'];

    $nama = $_FILES['profile_picture']['name'];
    $x = explode('.', $nama);
    $ekstensi = strtolower(end($x));
    $file_tmp = $_FILES['profile_picture']['tmp_name'];

    $image_name = $username . ".$ekstensi";

    move_uploaded_file($file_tmp, 'img/'.$image_name);

    $query_insert= "INSERT INTO `user` SET `username`='$username',`password`='$password', `name`='$name', profile_picture='img/$image_name'";
   $hasil      = mysqli_query($con, $query_insert);
   if(!$hasil){
       printf("error : %s\n", mysqli_error($con));
       exit();
   }
    if(isset($hasil)){
	     $response['value'] = '200';
	     $response['status'] = 'success';
	     $response['msg'] = 'Berhasil mendaftarkan akun';
	     $response['content'] = "kosong";
        echo json_encode($response);
    }else{
        $response['value'] = '0';
        echo json_encode($response);
    }
}
 
?>