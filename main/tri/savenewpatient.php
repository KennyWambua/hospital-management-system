<?php
// configuration
include('connect.php');

// new data
$id = $_POST['patient_id'];

$a = !empty($_POST['height']) ? floatval($_POST['height']) : 0; 
$b = !empty($_POST['weight']) ? floatval($_POST['weight']) : 0; 
$c = $_POST['bp'];
$d = $_POST['rbs']; 
$e = !empty($_POST['temp']) ? floatval($_POST['temp']) : 0;

// BMI calculation
if ($a > 0) {
    $f = $b / ($a * $a);
} else {
    $f = 0; 
}
$z = $_POST['ox2'];
// query
$sql = "UPDATE patient 
        SET height=?, weight=?, bp=?, rbs=?, temp=?, bmi=?,ox2=?  where patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$e,$f,$z,$id));
header("location:../index.php");

?>