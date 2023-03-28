<?php
require 'dbconnect.php';

class CHITIETDONHANG{
    function __construct($madh,$makh,$masp,$tensp,$dongia,$soluong,$diachi,$sdt){
        $this->madh = $madh;
        $this->makh = $makh;
        $this->masp = $masp;
        $this->tensp = $tensp;
        $this->dongia = $dongia;
        $this->soluong = $soluong;
        $this->diachi =$diachi;
        $this->sdt =$sdt;
    }
}
$query = "select * from sanpham";
$data = mysqli_query($connect,$query);
$arraylist = array();

while($row=mysqli_fetch_assoc($data))
{
    array_push($arraylist,new CHITIETDONHANG($row["madh"],$row["makh"],$row["masp"],$row["tensp"],$row["dongia"],$row["soluong"],$row["diachi"],$row["sdt"]));
}
json_encode($arraylist);

header("Content-type:application/json");
echo json_encode($arraylist,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);

?>