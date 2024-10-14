

<?php
// configuration
include('connect.php');

// new data
$id = $_POST['patient_id'];
$i = date('Y-m-d');
$a = $_POST['observation'];
$b = $_POST['name'];
$c = $_POST['cashier'];
// query
// query
$sql = "INSERT INTO observations (patient_id,date,observation,name,cashier) VALUES (:m,:i,:a,:b,:c)";
$q = $db->prepare($sql);


$q->execute(array(':m'=>$id,':i'=>$i,':a'=>$a,':b'=>$b,':c'=>$c));
header("location: patient_file.php?patient_id=$id");

?>