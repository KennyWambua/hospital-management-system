

<?php
// configuration
include('connect.php');

// new data
$id = $_POST['bed_allotment_id'];
$p = $_POST['patient_id'];
$i = date('Y-m-d');
$t1  = $_POST['test1'];
$t2  = $_POST['test2'];
$t3  = $_POST['test3'];
$t4  = $_POST['test4'];
$a = $_POST['diagnosis'];
$d1 = $_POST['diagnosis1'];
$d2 = $_POST['diagnosis2'];
$med1 = $_POST['medication1'];
$s1 = $_POST['desc1'];
$med2 = $_POST['medication2'];
$s2 = $_POST['desc2'];
$med3 = $_POST['medication3'];
$s3 = $_POST['desc3'];
$med4 = $_POST['medication4'];
$s4 = $_POST['desc4'];
$med5 = $_POST['medication5'];
$s5 = $_POST['desc5'];
$med6 = $_POST['medication6'];
$s6 = $_POST['desc6'];
$ndate = $_POST['nextdate'];
$b = $_POST['cashier'];
$h = $_POST['history'];
// query
$sql = "UPDATE bed_allotment
        SET history=?, dis_date=?, diagnosis=? ,diagnosis1=? ,diagnosis2=?,test1=?,test2=?,test3=?,test4=? ,medication1=?,desc1=?,medication2=?,desc2=?,medication3=?,desc3=?,medication4=?,desc4=?,medication5=?,desc5=?,medication6=?,desc6=?,nextdate=?, cashier=?
		WHERE bed_allotment_id=?";
$q = $db->prepare($sql);
$q->execute(array($h,$i,$a,$d1,$d2,$t1,$t2,$t3,$t4,$med1,$s1,$med2,$s2,$med3,$s3,$med4,$s4,$med5,$s5,$med6,$s6,$ndate,$b,$id));
header("location: discharge.php?patient_id=$p");

?>