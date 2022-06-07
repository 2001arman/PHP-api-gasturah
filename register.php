<?php

require "connect.php";

if($_SERVER['REQUEST_METHOD']=="POST"){
    $response   = array();
    $username   = $_POST['username'];
    $password   = $_POST['password'];
    $name       = $_POST['name'];

    // $nama = $_FILES['profile_picture']['name'];
    // $x = explode('.', $nama);
    // $ekstensi = strtolower(end($x));
    // $file_tmp = $_FILES['profile_picture']['tmp_name'];

    // $image_name = $username . ".$ekstensi";
    
    $query_insert= "INSERT INTO `user` SET `username`='$username',`password`='$password', `name`='$name', profile_picture='img/empty-image.png'";
    $hasil      = mysqli_query($con, $query_insert);
    
   if(!$hasil){
       if(mysqli_error($con) == "Duplicate entry '$username' for key 'username'"){
            $response['value'] = '200';
            $response['status'] = 'failed';
            $response['msg'] = "Username $username sudah digunakan";
            $response['content'] = (object)[];
            echo json_encode($response);
            exit();
       } else{
           printf("error : %s\n", mysqli_error($con));
           exit();
       }
   }
    if(isset($hasil)){
        // move_uploaded_file($file_tmp, 'img/'.$image_name);
	     $response['value'] = '200';
	     $response['status'] = 'success';
	     $response['msg'] = 'Berhasil mendaftarkan akun';
	     $response['content'] = (object)[];
        echo json_encode($response);
    }else{
        $response['value'] = '0';
        echo json_encode($response);
    }
}
 
?>