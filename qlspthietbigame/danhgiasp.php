<?php
require 'dbconnect.php';
// $cd =  $_GET['machude'];

class DANHGIASP{
    function __construct($makh,$masp,$sdt,$ngaydanhgia){
        $this->makh = $makh;
        $this->masp = $masp;
        $this->sdt = $sdt;
        $this->ngaydanhgia = $ngaydanhgia;
    }
}
// if($cd == null){
$query = "select * from sanpham";
// }
// else
// {
//     $query = "select * from Sach where machude=$cd";
// }
$data = mysqli_query($connect,$query);
$arraylist = array();

while($row=mysqli_fetch_assoc($data))
{
    array_push($arraylist,new DANHGIASP($row["makh"],$row["masp"],$row["sdt"],$row["ngaydanhgia"]));
}
json_encode($arraylist);

header("Content-type:application/json");
echo json_encode($arraylist,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);

?>