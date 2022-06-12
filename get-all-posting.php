<?php

require_once "connect.php";

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $response   = array();
    $query      = "SELECT * FROM `postingan` INNER JOIN user ON postingan.user = user.username";
    $hasil      = mysqli_query($con, $query);

    if(mysqli_num_rows($hasil)===0){
        $response['value'] = '200';
	     $response['status'] = 'failed';
	     $response['msg'] = 'Data postingan masih kosong';
	     $response['content'] = (object)[];

        echo json_encode($response);

    } else{
        $response['value'] = '200';
        $response['status'] = 'success';
        $response['msg'] = 'Berhasil mengambil data postingan';
        while ($fetchdata = mysqli_fetch_array($hasil)) {
            $response['content'][] = [
                'user' => $fetchdata['name'],
                'foto' => $fetchdata['foto'],
                'profile_picture' => $fetchdata['profile_picture'],
                'waktu' => $fetchdata['waktu'],
            ];
        }
        echo json_encode($response);
    }

}
