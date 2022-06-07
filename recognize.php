<?php

require "connect.php";

if($_SERVER['REQUEST_METHOD']=="POST"){
    $response   = array();

    $nama_file = $_FILES['foto']['name'];
    $x = explode('.', $nama_file);
    $ekstensi = strtolower(end($x));
    $file_tmp = $_FILES['foto']['tmp_name'];

    
    $query      = "SELECT * FROM `tempat_bersejarah` WHERE `nama` ='lawang sewu'";
    $hasil      = mysqli_query($con, $query);
    
   if(!$hasil){
        printf("error : %s\n", mysqli_error($con));
        exit();
   }
    else if(isset($hasil)){
        while ($fetchdata = mysqli_fetch_array($hasil)) {
            $response['value'] = '200';
            $response['status'] = 'success';
            $response['msg'] = 'Berhasil mendapatkan data sejarah';
            $response['content'] = [
                'nama' => $fetchdata['nama'],
                'foto' => $fetchdata['foto'],
                'detail' => $fetchdata['detail'],
                'sumber' => $fetchdata['sumber'],
                'latitude' => $fetchdata['latitude'],
                'longitude' => $fetchdata['longitude'],
            ];
        }
        echo json_encode($response);
    }else{
        $response['value'] = '0';
        echo json_encode($response);
    }
}
 
?>