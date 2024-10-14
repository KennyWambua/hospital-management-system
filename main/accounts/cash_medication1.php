<?php
session_start();
include('connect.php');
	$j = 'INVOICE';
$hw = 'COMPLETE';
$hw = 'COMPLETE';
$h =$_GET['patient_id'];
// query
$sql = "INSERT INTO invoiceh (invo) VALUES (:j)";
$q = $db->prepare($sql);
$q->execute(array(':j'=>$j));
$results = $db->prepare("SELECT * FROM invoiceh order by id desc limit 1");

$results->execute();
for($i=0; $rows = $results->fetch(); $i++){
$sdsdd=$rows['id'];
if($sdsdd==''){

}

$dsdsd=$rows['id'];
}

$finalcode=$dsdsd+1;

header("location: cash_medication.php?invoice=$finalcode&id=credit&patient_id=$h");


// query



?>