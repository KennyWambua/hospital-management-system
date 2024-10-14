<?php
session_start();
include('connect.php');
$m = $_POST['patient_id'];
$h = $_POST['admission_dep'];
$b = $_POST['name'];
$c = $_POST['bed'];
$y = $_POST['status'];
$d = $_POST['insurance_id'];
$k = $_POST['age'];
$z = $_POST['sex'];
$g = $_POST['date'];
$e = $_POST['dis_date'];

$w = $_POST['diagnosis'];
$f = $_POST['diagnosis1'];
$fa = $_POST['marital_status'];
$fz = $_POST['contact'];
$fb = $_POST['id_no'];
$fc = $_POST['sub_county'];
$fd = $_POST['ward'];
$fe = $_POST['chifname'];
$ff = $_POST['subchifname'];
$fg = $_POST['occupation'];
$fh = $_POST['emloyername'];
$fj = $_POST['nextofkin'];
$fk = $_POST['relationship'];
$fl = $_POST['ncontact'];
$fm = $_POST['idno'];
$fn = $_POST['nhifno'];
$fx = $_POST['notification'];

$result = $db->prepare("SELECT * FROM bed WHERE type= :userid");
$result->bindParam(':userid', $c);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$asasb=$row['price'];


$type=$row['type'];
}
 
// query
$sql = "INSERT INTO bed_allotment (patient_id,name,bed_id,admission_dep,status,insurance_id,price,sex,age,date,dis_date,diagnosis,diagnosis1,marital_status,contact,id_no,sub_county,ward,chifname,subchifname,occupation,emloyername,nextofkin,relationship,ncontact,idno,nhifno,notification) VALUES (:m,:b,:c,:h,:y,:d,:n,:z,:k,:g,:e,:w,:f,:fa,:fz,:fb,:fc,:fd,:fe,:ff,:fg,:fh,:fj,:fk,:fl,:fm,:fn,:fx)";
$q = $db->prepare($sql);


$q->execute(array(':m'=>$m,':b'=>$b,':c'=>$c,':h'=>$h,':y'=>$y,':d'=>$d,':n'=>$asasb,':z'=>$z,':k'=>$k,':g'=>$g,':e'=>$e,':w'=>$w,':f'=>$f,':fa'=>$fa,':fz'=>$fz,':fb'=>$fb,':fc'=>$fc,':fd'=>$fd,':fe'=>$fe,':ff'=>$ff,':fg'=>$fg,':fh'=>$fh,':fj'=>$fj,':fk'=>$fk,':fl'=>$fl,':fm'=>$fm,':fn'=>$fn,':fx'=>$fx));
header("location: ../index.php");


?>