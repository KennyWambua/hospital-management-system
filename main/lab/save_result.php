<?php
session_start();
include('connect.php');

$a = $_POST['report_type'];
$b = $_POST['prescription_id'];
$n = $_POST['insurance_id'];
$c = $_POST['patient_id'];
$y = $_POST['patient_name'];
$d = $_POST['description'];
$d1 = !empty($_POST['description1']) ? $_POST['description1'] : null;
$d2 = !empty($_POST['description2']) ? $_POST['description2'] : null;
$d3 = !empty($_POST['description3']) ? $_POST['description3'] : null;
$d4 = !empty($_POST['description4']) ? $_POST['description4'] : null;
$d5 = !empty($_POST['description5']) ? $_POST['description5'] : null;
$d6 = !empty($_POST['description6']) ? $_POST['description6'] : null;
$d7 = !empty($_POST['description7']) ? $_POST['description7'] : null;
$d8 = !empty($_POST['description8']) ? $_POST['description8'] : null;
$d9 = !empty($_POST['description9']) ? $_POST['description9'] : null;
$d10 = !empty($_POST['description10']) ? $_POST['description10'] : null;
$e = $_POST['laboratorist_id'];
$z = $_POST['date'];
$k = $_POST['department'];
$w = $_POST['department1'];

$h = date('Y-m-d');

$result = $db->prepare("SELECT * FROM services WHERE product_name= :userid");
$result->bindParam(':userid', $a);
$result->execute();
for ($i = 0; $row = $result->fetch(); $i++) {
    $asasa = $row['c_price'];
    $result_type = $row['product_name'];
}

$sql = "UPDATE quee 
        SET department=?
		WHERE patient_id=?";
$q = $db->prepare($sql);
$q->execute(array($k, $c));


// query
$sql = "INSERT INTO diagnosis_report (report_type,prescription_id,patient_id,patient_name,description,description1,description2,description3,description4,description5,description6,description7,description8,description9,description10,laboratorist_id,price,date,department1,insurance_id) VALUES (:a,:b,:c,:y,:d,:d1,:d2,:d3,:d4,:d5,:d6,:d7,:d8,:d9,:d10,:e,:f,:z,:w,:n)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':y'=>$y,':d'=>$d,':d1'=>$d1,':d2'=>$d2,':d3'=>$d3,':d4'=>$d4,':d5'=>$d5,':d6'=>$d6,':d7'=>$d7,':d8'=>$d8,':d9'=>$d9,':d10'=>$d10,':e'=>$e,':f'=>$asasa,':z'=>$z,':w'=>$w,':n'=>$in));
header("location: add_result.php?id=$w&patient_id=$c&patient_name=$y&cashier=$e&insurance_id=$in&prescription_id=$b&report_type=0");

