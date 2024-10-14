<?php
session_start();
include('connect.php');
$m = $_POST['patient_id'];
$b = $_POST['name'];
$c = $_POST['bed'];
$y = $_POST['status'];
$d = $_POST['insurance_id'];

$z = $_POST['sex'];
$g = $_POST['date'];
$e = $_POST['dis_date'];

$i = $_POST['diagnosis'];
$result = $db->prepare("SELECT * FROM bed WHERE type= :userid");
$result->bindParam(':userid', $c);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$asasb=$row['price'];


$type=$row['type'];
}
 
// query
$sql = "INSERT INTO bed_allotment (patient_id,name,bed_id,status,insurance_id,price,sex,date,dis_date,diagnosis) VALUES (:m,:b,:c,:y,:d,:n,:z,:g,:e,:i)";
$q = $db->prepare($sql);


$q->execute(array(':m'=>$m,':b'=>$b,':c'=>$c,':y'=>$y,':d'=>$d,':n'=>$asasb,':z'=>$z,':g'=>$g,':e'=>$e,':i'=>$i));
header("location: select_patient.php");


?>