<?php
include('includes/config.php');
	
$exp_name = $_POST['exp_name'];
$exp_type = $_POST['exp_type'];
$quantity = $_POST['quantity'];
$cost = $_POST ['cost'];
$date = $_POST['date'];
$newDate = date("Y-m-d", strtotime($date));
//for history log
$action = $_POST['action'];
$user = $_POST['user'];
$pc_date = $_POST['pc_date'];
$pc_time = $_POST['pc_time'];


	
mysql_query("INSERT INTO expenses (`exp_name`,
			`exp_type`, `quantity`, `cost`, 
			`date`) 
			VALUES('$exp_name', '$exp_type',
			'$quantity', '$cost', '$newDate')")
			or die(mysql_error());
			
echo "success";

//for history log
mysql_query("INSERT INTO history (`data`,`actions`,`date`,`user`)
			VALUES('$exp_name', 'added client', '$today', '$user')")or die(mysql_error());	

			?>
