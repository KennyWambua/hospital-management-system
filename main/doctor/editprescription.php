<?php
	include('connect.php');
	$id=$_GET['prescription_id'];
	$result = $db->prepare("SELECT * FROM prescription WHERE prescription_id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Hospital Manegement System</title>
	
	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">
	
	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
	<!-- jQuery & JS files -->
	 
    <!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Hospital Manegement System</title>
	
	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">
	
	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<style type="text/css">
 
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #FFFFFF;
}

*{
padding: 0px;
margin: 0px;
}
#vertmenu {
font-family: Verdana, Arial, Helvetica, sans-serif;
font-size: 100%;
width: 160px;
padding: 0px;
margin: 0px;
}

#vertmenu h1 {
display: block;
background-color:#FF9900;
font-size: 90%;
padding: 3px 0 5px 3px;
border: 1px solid #000000;
color: #333333;
margin: 0px;
width:159px;
}

#vertmenu ul {
list-style: none;
margin: 0px;
padding: 0px;
border: none;
}
#vertmenu ul li {
margin: 0px;
padding: 0px;
}
#vertmenu ul li a {
font-size: 80%;
display: block;
border-bottom: 1px dashed #C39C4E;
padding: 5px 0px 2px 4px;
text-decoration: none;
color: #666666;
width:160px;
}

#vertmenu ul li a:hover, #vertmenu ul li a:focus {
color: #000000;
background-color: #eeeeee;
}
.style1 {color: #000000}
div.pagination {

	padding: 3px;

	margin: 3px;

}



div.pagination a {

	padding: 2px 5px 2px 5px;

	margin: 2px;

	border: 1px solid #AAAADD;

	

	text-decoration: none; /* no underline */

	color: #000099;

}

div.pagination a:hover, div.pagination a:active {

	border: 1px solid #000099;



	color: #000;

}

div.pagination span.current {

	padding: 2px 5px 2px 5px;

	margin: 2px;

		border: 1px solid #000099;

		

		font-weight: bold;

		background-color: #000099;

		color: #FFF;

	}

	div.pagination span.disabled {

		padding: 2px 5px 2px 5px;

		margin: 2px;

		border: 1px solid #EEE;

	

		color: #DDD;

	}

	
 
</style>
</head>
<body>

	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>
	<!-- end top-bar -->
<?php
require_once('auth.php');
?>

<?php
function createRandomPassword() {
	$chars = "003232303232023232023456789";
	srand((double)microtime()*1000000);
	$i = 0;
	$pass = '' ;
	while ($i <= 5) {

		$num = rand() % 33;

		$tmp = substr($chars, $num, 1);

		$pass = $pass . $tmp;

		$i++;

	}
	return $pass;
}
$finalcode='RS-'.createRandomPassword();
?>
    <div id="header-with-tabs">
		
		<div class="page-full-width cf">
	
			<ul id="tabs" class="fl">
				<li><a href="patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME']?>&status=ACTIVE&transdep=DENTAL">Patients In Line</a><br/></li>
<li><a href="select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient File</a><br/></li>
<li><a href="disease.php">Disease</a><br/></li>  
<li><a href="nurse/select_patient.php">Admit Patient</a><br/></li>
<li><a href="nurse/select_file.php">Inpatient File</a><br/></li>
<li><a href="common.php">Common complains</a><br/></li>  
<li><a href="nurse/select_patientdis.php">Discharge Patient</a><br/></li>
<li><a href="appointment.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Appointments</a><br/></li>
<li><a href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DOCTOR&user=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Store Request</a><br/></li>
                    
                    
			</ul> <!-- end tabs -->
			
			<!-- Change this image to your own company's logo -->
			<!-- The logo will automatically be resized to 30px height. -->
			
		</div> <!-- end full-width -->	

	</div> <!-- end header -->
	
	

	
	<!-- MAIN CONTENT -->
	<div id="content">
		
		<div class="page-full-width cf">

			<div class="side-menu fl">
				
				<h3>Patient Management</h3>
				<ul>
					<li><a href="patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME']?>&status=ACTIVE&transdep=DENTAL">Patients In Line</a><br/></li>
<li><a href="select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient File</a><br/></li>
<li><a href="disease.php">Disease</a><br/></li>  
<li><a href="nurse/select_patient.php">Admit Patient</a><br/></li>
<li><a href="nurse/select_file.php">Inpatient File</a><br/></li>
<li><a href="common.php">Common complains</a><br/></li>  
<li><a href="nurse/select_patientdis.php">Discharge Patient</a><br/></li>
<li><a href="appointment.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Appointments</a><br/></li>
<li><a href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DOCTOR&user=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Store Request</a><br/></li>
                   
                    
				</ul>
				        <div style="background: #ffffff">
                                              <script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- posnic 120x90 vertical small -->
<ins class="adsbygoogle"
     style="display:inline-block;width:120px;height:90px"
     data-ad-client="ca-pub-5212135413309920"
     data-ad-slot="3677012951"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
                               
                                </div>                              
			</div> <!-- end side-menu -->
			
			<div class="side-content fr">
			
				<div class="content-module">
				
					<div class="content-module-heading cf">
					
						<h3 class="fl">Doctor's Module</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					
					</div> <!-- end content-module-heading -->
	<!-- end top-bar -->
<form action="saveeditmedication1.php" method="post">
<input type="hidden" name="prescription_id" value="<?php echo $_GET['prescription_id']; ?>" />
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<div id="ac" align="center">

MEDICATION 1
<select  name="medication1"  style="height:32px; width:350px"  class="round default-width-input">
	<option><?php echo $row['medication1']; ?></option>
	<?php
	$results = $db->prepare("SELECT * FROM products  order by product_name ASC");
		$results->bindParam(':userid', $res);
		$results->execute();
		for($i=0; $rows = $results->fetch(); $i++){
	?>
		<option><?php echo $rows['product_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="desc1" value="<?php echo $row['desc1']; ?>" placeholder="desc1"  style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /><br/><br/>
MEDICATION 2
<select name="medication2" style="height:32px; width:350px"  class="round default-width-input">
	<option><?php echo $row['medication2']; ?></option>
	<?php
	$results = $db->prepare("SELECT * FROM products  order by product_name ASC");
		$results->bindParam(':userid', $res);
		$results->execute();
		for($i=0; $rows = $results->fetch(); $i++){
	?>
		<option><?php echo $rows['product_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="desc2" value="<?php echo $row['desc2']; ?>" placeholder="desc2"  style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /><br/><br/>
MEDICATION 3
<select name="medication3" style="height:32px; width:350px"  class="round default-width-input">
	<option><?php echo $row['medication3']; ?></option>
	<?php
	$results = $db->prepare("SELECT * FROM products  order by product_name ASC");
		$results->bindParam(':userid', $res);
		$results->execute();
		for($i=0; $rows = $results->fetch(); $i++){
	?>
		<option><?php echo $rows['product_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="desc3" value="<?php echo $row['desc3']; ?>" placeholder="desc3"  style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /><br/><br/>
MEDICATION 4
<select name="medication4" style="height:32px; width:350px"  class="round default-width-input">
	<option><?php echo $row['medication4']; ?></option>
	<?php
	$results = $db->prepare("SELECT * FROM products  order by product_name ASC");
		$results->bindParam(':userid', $res);
		$results->execute();
		for($i=0; $rows = $results->fetch(); $i++){
	?>
		<option><?php echo $rows['product_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="desc4" value="<?php echo $row['desc4']; ?>" placeholder="desc4"  style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /><br/><br/>
MEDICATION 5
<select name="medication5" style="height:32px; width:350px"  class="round default-width-input">
	<option><?php echo $row['medication5']; ?></option>
	<?php
	$results = $db->prepare("SELECT * FROM products  order by product_name ASC");
		$results->bindParam(':userid', $res);
		$results->execute();
		for($i=0; $rows = $results->fetch(); $i++){
	?>
		<option><?php echo $rows['product_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="desc5" value="<?php echo $row['desc5']; ?>" placeholder="desc5"  style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /><br/><br/>
MEDICATION 6
<select name="medication6" style="height:32px; width:350px"  class="round default-width-input">
	<option><?php echo $row['medication6']; ?></option>
	<?php
	$results = $db->prepare("SELECT * FROM products  order by product_name ASC");
		$results->bindParam(':userid', $res);
		$results->execute();
		for($i=0; $rows = $results->fetch(); $i++){
	?>
		<option><?php echo $rows['product_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="desc6" value="<?php echo $row['desc6']; ?>" placeholder="desc6"  style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /><br/><br/>
MEDICATION 7
<select name="medication7" style="height:32px; width:350px"  class="round default-width-input">
	<option><?php echo $row['medication7']; ?></option>
	<?php
	$results = $db->prepare("SELECT * FROM products  order by product_name ASC");
		$results->bindParam(':userid', $res);
		$results->execute();
		for($i=0; $rows = $results->fetch(); $i++){
	?>
		<option><?php echo $rows['product_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="desc7" value="<?php echo $row['desc7']; ?>" placeholder="desc7" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /><br/><br/>
MEDICATION 8
<select name="medication8" style="height:32px; width:350px"  class="round default-width-input">
	<option><?php echo $row['medication8']; ?></option>
	<?php
	$results = $db->prepare("SELECT * FROM products  order by product_name ASC");
		$results->bindParam(':userid', $res);
		$results->execute();
		for($i=0; $rows = $results->fetch(); $i++){
	?>
		<option><?php echo $rows['product_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="desc8" value="<?php echo $row['desc8']; ?>" placeholder="desc8"  style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /><br/><br/>
MEDICATION 9
<select name="medication9" style="height:32px; width:350px"  class="round default-width-input">
	<option><?php echo $row['medication9']; ?></option>
	<?php
	$results = $db->prepare("SELECT * FROM products  order by product_name ASC");
		$results->bindParam(':userid', $res);
		$results->execute();
		for($i=0; $rows = $results->fetch(); $i++){
	?>
		<option><?php echo $rows['product_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="desc9" value="<?php echo $row['desc9']; ?>" placeholder="desc9" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /><br/><br/>
MEDICATION 10
<select name="medication1" style="height:32px; width:350px"  class="round default-width-input">
	<option><?php echo $row['medication10']; ?></option>
	<?php
	$results = $db->prepare("SELECT * FROM products  order by product_name ASC");
		$results->bindParam(':userid', $res);
		$results->execute();
		for($i=0; $rows = $results->fetch(); $i++){
	?>
		<option><?php echo $rows['product_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="desc10" value="<?php echo $row['desc10']; ?>" placeholder="desc1" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /><br/><br/>
<input id="btn" type="submit"  class="button round blue image-right ic-add text-upper" value="save" style="width: 268px; margin-left:200px" />
</div>
</form>
<?php
}
?>