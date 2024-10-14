<?php
// configuration
include('connect.php');

// new data
$id = $_POST['patient_id'];
$pre = $_POST['prescription_id'];
$dia = $_POST['diagnosis'];
$dia1 = $_POST['diagnosis1'];
$dia2 = $_POST['diagnosis2'];
$med1 = $_POST['medication1'];
$des1 = $_POST['desc1'];
$med2 = $_POST['medication2'];
$des2 = $_POST['desc2'];
$med3 = $_POST['medication3'];
$des3 = $_POST['desc3'];
$med4 = $_POST['medication4'];
$des4 = $_POST['desc4'];
$med5 = $_POST['medication5'];
$des5 = $_POST['desc5'];
$med6 = $_POST['medication6'];
$des6 = $_POST['desc6'];
$med7 = $_POST['medication7'];
$des7 = $_POST['desc7'];
$med8 = $_POST['medication8'];
$des8 = $_POST['desc8'];
$med9 = $_POST['medication9'];
$des9 = $_POST['desc9'];
$med10 = $_POST['medication10'];
$med10 = $_POST['desc10'];
$k =$_POST['status'];

// query
$sql = "UPDATE quee 
        SET status=?
		WHERE patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($k,$id));
$sql = "UPDATE prescription SET diagnosis=?,diagnosis1=?,diagnosis2=?, medication1=?, desc1=?, medication2=?, desc2=?, medication3=?, desc3=?, medication4=?, desc4=?, medication5=?, desc5=?, medication6=?, desc6=?, medication7=?, desc7=?, medication8=?, desc8=?, medication9=?, desc9=?, medication10=?, desc10=? WHERE prescription_id=? and patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($dia,$dia1,$dia2,$med1,$des1,$med2,$des2,$med3,$des3,$med4,$des4,$med5,$des5,$med6,$des6,$med7,$des7,$med8,$des8,$med9,$des9,$med10,$des10,$pre,$id));
header("location:patient_file.php?patient_id=$id");

?>