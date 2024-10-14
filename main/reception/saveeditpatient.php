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
$f = $_POST['age'];
$i = $_POST['fee'];
$w = date('Y-m-d');
$n = $_POST['copay'];
$o = $_POST['discount'];
// query
$sql = "UPDATE patient SET name=?, address=?, phone=?, insurance_id=?, in_number=?, sex=?, height=?, weight=?, age=?, fee=?, date=? , copay=?, discount=?  WHERE  patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($b,$c,$y,$d,$k,$z,$g,$e,$f,$i,$w,$n,$o,$id));
header("location:patientss.php");

?>
