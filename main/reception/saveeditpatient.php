<?php
// configuration
include('connect.php');

// new data
$id = $_POST['patient_id'];
$b = $_POST['name'];
$c = $_POST['address'];
$y = $_POST['phone'];
$d = $_POST['insurance_id'];
$k = $_POST['in_number'];
$z = $_POST['sex'];
$g = $_POST['height'];
$e = $_POST['weight'];
$f = $_POST['dob'];
$i = $_POST['fee'];
$w = date('Y-m-d');
$n = $_POST['copay'];
$o = $_POST['discount'];

$dob = new DateTime($f);
$today = new DateTime();
$ageInterval = $today->diff($dob);
$years = $ageInterval->y;
$months = $ageInterval->m;
$age = $years . ' years ' . $months . ' months';
// query
$sql = "UPDATE patient SET name=?, address=?, phone=?, insurance_id=?, in_number=?, sex=?, height=?, weight=?, dob=?, fee=?, date=? , copay=?, discount=?, age=?  WHERE  patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($b,$c,$y,$d,$k,$z,$g,$e,$f,$i,$w,$n,$o,$age,$id));
header("location:patientss.php");

?>
