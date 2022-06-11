<?php

require "connect.php";

if($_SERVER['REQUEST_METHOD']=="POST"){
    $response   = array();
    $username   = $_POST['username'];

    date_default_timezone_set('Asia/Makassar');
    $date = date('Y-m-d', time());

    $foto = $_POST['foto'];
    $hasilImage = base64_decode($foto);

    // $nama = $_FILES['foto']['name'];
    // $x = explode('.', $nama);
    // $ekstensi = strtolower(end($x));
    // $file_tmp = $_FILES['foto']['tmp_name'];

    $image_name = $username ."-$date" . ".png";
    
    $query_insert= "INSERT INTO `postingan` SET `user`='$username', `foto`='posting/$image_name', `waktu`='$date'";
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
        // move_uploaded_file($hasilImage, 'posting/'.$image_name);
        file_put_contents('posting/'.$image_name, $hasilImage);
	     $response['value'] = '200';
	     $response['status'] = 'success';
	     $response['msg'] = 'Berhasil membagikan foto';
	     $response['content'] = (object)[];
        echo json_encode($response);
    }else{
        $response['value'] = '0';
        echo json_encode($response);
    }
}
 
?>