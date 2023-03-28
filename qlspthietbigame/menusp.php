<?php
require 'dbconnect.php';
// $cd =  $_GET['machude'];

class MENUSP{
    function __construct($maloai,$tenloai,$hinhloai,$mota){
        $this->maloai = $maloai;
        $this->tenloai = $tenloai;
        $this->hinhloai = $hinhloai;
        $this->mota = $mota;
    }
}
// if($cd == null){
$query = "select * from menusp";
// }
// else
// {
//     $query = "select * from Sach where machude=$cd";
// }
$data = mysqli_query($connect,$query);
$arraylist = array();

while($row=mysqli_fetch_assoc($data))
{
    array_push($arraylist,new MENUSP($row["maloai"],$row["tenloai"],$row["hinhloai"],$row["mota"]));
}
json_encode($arraylist);

header("Content-type:application/json");
echo json_encode($arraylist,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);

?>