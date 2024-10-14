<?php
session_start();
include('connect.php');
$a   = $_POST['id'];
$b   = $_POST['patient_id'];
$c   = $_POST['insurance_id'];
$d   = $_POST['patient_name'];
$e   = $_POST['case_history'];
$f   = $_POST['complains'];
$g   = $_POST['comment'];
$h   = $_POST['department'];
$i   = $_POST['service1'];
$j   = $_POST['service2'];
$t1  = $_POST['test1'];
$t2  = $_POST['test2'];
$t3  = $_POST['test3'];
$t4  = $_POST['test4'];
$t5  = $_POST['test5'];
$d1  = $_POST['diagnosis'];
$d2  = $_POST['diagnosis1'];
$d3  = $_POST['diagnosis2'];
$m1  = $_POST['medication1'];
$ds1 = $_POST['desc1'];
$m2  = $_POST['medication2'];
$ds2 = $_POST['desc2'];
$m3  = $_POST['medication3'];
$ds3 = $_POST['desc3'];
$m4  = $_POST['medication4'];
$ds4 = $_POST['desc4'];
$m5  = $_POST['medication5'];
$ds5 = $_POST['desc5'];
$m6  = $_POST['medication6'];
$ds6 = $_POST['desc6'];
$m7  = $_POST['medication7'];
$ds7 = $_POST['desc7'];
$m8  = $_POST['medication8'];
$ds8 = $_POST['desc8'];
$m9  = $_POST['medication9'];
$ds9 = $_POST['desc9'];
$m10 = $_POST['medication10'];
$ds10= $_POST['desc10'];
$m   = $_POST['date'];
$z   = $_POST['department'];

	
	

	$result = $db->prepare("DELETE  FROM prescription WHERE patient_id= :b and date=:m");
	$result->bindParam(':b', $b);
	$result->bindParam(':m', $m);
	$result->execute();
	
	

$sql = "INSERT INTO prescription (doctor_id,patient_id,insurance_id,patient_name,case_history,complains,medication1,desc1,medication2,desc2,medication3,desc3,medication4,desc4,medication5,desc5,medication6,desc6,medication7,desc7,medication8,desc8,medication9,desc9,medication10,desc10,test1,test2,test3,test4,test5,diagnosis,diagnosis1,diagnosis2,date,department,service1,service2,comment) VALUES (:a,:b,:c,:d,:e,:f,:m1,:ds1,:m2,:ds2,:m3,:ds3,:m4,:ds4,:m5,:ds5,:m6,:ds6,:m7,:ds7,:m8,:ds8,:m9,:ds9,:m10,:ds10,:t1,:t2,:t3,:t4,:t5,:d1,:d2,:d3,:m,:z,:i,:j,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':m1'=>$m1,':ds1'=>$ds1,':m2'=>$m2,':ds2'=>$ds2,':m3'=>$m3,':ds3'=>$ds3,':m4'=>$m4,':ds4'=>$ds4,':m5'=>$m5,':ds5'=>$ds5,':m6'=>$m6,':ds6'=>$ds6,':m7'=>$m7,':ds7'=>$ds7,':m8'=>$m8,':ds8'=>$ds8,':m9'=>$m9,':ds9'=>$ds9,':m10'=>$m10,':ds10'=>$ds10,':t1'=>$t1,':t2'=>$t2,':t3'=>$t3,':t4'=>$t4,':t5'=>$t5,':d1'=>$d1,':d2'=>$d2,':d3'=>$d3,':m'=>$m,':z'=>$z,':i'=>$i,':j'=>$j,':g'=>$g));
header("location: patient_file.php?patient_id=$b&date=$m");
exit();

// query



?>