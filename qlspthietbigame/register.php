<?php
try {
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $connect = mysqli_connect("localhost", "root", "", "qlspthietbigame");
        mysqli_query($connect, "SET NAMES 'utf8'");
        if (isset($_POST["tenKH"], $_POST["passKH"], $_POST["ngaysinhKH"], $_POST["emailKH"], $_POST["soDT"]))
        $tenkh = $_POST["tenKH"];
        $pass = $_POST["passKH"];
        $ngaysinh = $_POST["ngaysinhKH"];
        $email = $_POST["emailKH"];
        $sodt = $_POST["soDT"];

        $query = "insert into khachhang values(null,'$tenkh','$pass','$ngaysinh','$email','$sodt')";
        $data = mysqli_query($connect, $query);
        if ($data == 1) {
            echo "thanhcong";
        } else {
            echo "thatbai";
        }
    }
} catch (Exception $e) {
    header("Content-type:application/json");
    echo json_encode($e, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
}
