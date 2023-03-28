<?php
require 'dbconnect.php';

class KHACHHANG
{
    function __construct($makh, $tenkh, $pass, $ngaysinh, $email, $sodt)
    {
        $this->makh = $makh;
        $this->tenkh = $tenkh;
        $this->pass = $pass;
        $this->ngaysinh = $ngaysinh;
        $this->email = $email;
        $this->sodt = $sodt;
    }
}
$query = "select * from khachhang";
$data = mysqli_query($connect, $query);
$arraylist = array();

while ($row = mysqli_fetch_assoc($data)) {
    array_push($arraylist, new KHACHHANG($row["makh"], $row["tenkh"], $row["pass"], $row["ngaysinh"], $row["email"], $row["sodt"]));
}
json_encode($arraylist);

header("Content-type:application/json");
echo json_encode($arraylist, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
