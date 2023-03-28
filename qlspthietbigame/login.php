<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $connect = mysqli_connect("localhost", "root", "", "qlspthietbigame");
    mysqli_query($connect, "SET NAMES 'utf8'");

    try {
        if (isset($_POST['username'], $_POST['password'])) {
            $tenkh = $_POST['username'];
            $pass = $_POST['password'];
            $result = '';
            $query = "SELECT COUNT(*) AS user FROM `khachhang` WHERE tenkh = '$tenkh' AND pass = '$pass'";
            $data = mysqli_query($connect, $query);
            if (!$data) {
                $result = 0;
            } else {
                $row = $data->fetch_array(MYSQLI_ASSOC);
                if ($row['user'] == 1) {
                    $result = "thanhcong";
                } else {
                    $result = "thatbai";
                }
            }
            echo $result;
        }
    } catch (Exception $e) {
        echo $e;
    }
}
