<?php

require_once "connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $response   = array();
    $query      = "SELECT * FROM `tempat_bersejarah`";
    $hasil      = mysqli_query($con, $query);

    if(mysqli_num_rows($hasil)===0){
        $response['value'] = '200';
	     $response['status'] = 'failed';
	     $response['msg'] = 'Data tempat bersejarah masih kosong';
	     $response['content'] = (object)[];

        echo json_encode($response);

    } else{
        $response['value'] = '200';
        $response['status'] = 'success';
        $response['msg'] = 'Berhasil mengambil data tempat bersejarah';
        while ($fetchdata = mysqli_fetch_array($hasil)) {
            $response['content'][] = [
                'nama' => $fetchdata['nama'],
                'foto' => $fetchdata['foto'],
                'detail' => $fetchdata['detail'],
                'sumber' => $fetchdata['sumber'],
                'latitude' => $fetchdata['latitude'],
                'longitude' => $fetchdata['longitude'],
            ];
        }
        echo json_encode($response);
    }

}
