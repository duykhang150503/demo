<?php
require 'dbconnect.php';
// $cd =  $_GET['machude'];

class DONHANG{
    function __construct($madh,$makh,$tongtien,$ngaymua){
        $this->madh = $madh;
        $this->makh = $makh;
        $this->tongiten = $tongtien;
        $this->ngaymua = $ngaymua;
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
    array_push($arraylist,new DONHANG($row["madh"],$row["makh"],$row["tongtien"],$row["ngaymua"]));
}
json_encode($arraylist);

header("Content-type:application/json");
echo json_encode($arraylist,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);

?>