<?php

require_once "connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $response   = array();
    $username_awal   = $_POST['username_awal'];
    $username_baru   = $_POST['username_baru'];
    $name   = $_POST['nama'];
    $password   = $_POST['password'];
    $foto = $_POST['profile_picture'];
    $hasilImage = base64_decode($foto);

    $getUser      = "SELECT * FROM `user` WHERE `username` ='$username_awal'";
    $hasilUser      = mysqli_query($con, $getUser);
    while ($fetchdata = mysqli_fetch_array($hasil)) {
        $passwordUser = $fetchdata['password'];
        $profileUser = $fetchdata['profile_picture'];
    }

    $password = "" ? $passwordUser : $password;
    $foto = "" ? $profileUser : $password;

    $image_name = $username_baru . ".png";

    $query      = "UPDATE user SET `username`='$username_baru', `password`='$password', `name`='$name', profile_picture='img/$image_name' WHERE  `username` = '$username_awal'";
    $hasil      = mysqli_query($con, $query);

    if(!$hasil){
        if(mysqli_error($con) == "Duplicate entry '$username_baru' for key 'username'"){
             $response['value'] = '200';
             $response['status'] = 'failed';
             $response['msg'] = "Username $username_baru sudah digunakan";
             $response['content'] = (object)[];
             echo json_encode($response);
             exit();
        } else{
            printf("error : %s\n", mysqli_error($con));
            exit();
        }
    }
     if(isset($hasil)){
        //  move_uploaded_file($file_tmp, 'img/'.$image_name);
        if($foto != ""){
            file_put_contents('img/'.$image_name, $hasilImage);
        }
         $query      = "SELECT * FROM `user` WHERE `username` ='$username_baru'";
         $hasil      = mysqli_query($con, $query);
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
     }else{
         $response['value'] = '0';
         echo json_encode($response);
     }

}
