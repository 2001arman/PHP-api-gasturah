<?php

require "connect.php";

if($_SERVER['REQUEST_METHOD']=="POST"){
    $response   = array();
    $nama       = $_POST['nama'];
    $detail     = $_POST['detail'];
    $sumber     = $_POST['sumber'];
    $latitude   = $_POST['latitude'];
    $longitude  = $_POST['longitude'];

    $nama_file = $_FILES['foto']['name'];
    $x = explode('.', $nama_file);
    $ekstensi = strtolower(end($x));
    $file_tmp = $_FILES['foto']['tmp_name'];

    $image_name = $nama . ".$ekstensi";
    
    $query_insert= "INSERT INTO `tempat_bersejarah` SET `nama`='$nama',`detail`='$detail',  foto='img/$image_name', `sumber`='$sumber', `latitude`='$latitude',`longitude`='$longitude' ";
    $hasil      = mysqli_query($con, $query_insert);
    
   if(!$hasil){
        printf("error : %s\n", mysqli_error($con));
        exit();
   }
    else if(isset($hasil)){
        move_uploaded_file($file_tmp, 'tempat_bersejarah/'.$image_name);
            $response['value'] = '200';
            $response['status'] = 'success';
            $response['msg'] = 'Berhasil menambahkan data tempat bersejarah';
            $response['content'] = (object)[];
        echo json_encode($response);
    }else{
        $response['value'] = '0';
        echo json_encode($response);
    }
}
 
?>