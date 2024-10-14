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
	<?php include_once("tpl/common_js.php"); ?>
	<script src="js/script.js"></script>  
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
<li><a href="patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME']?>&status=ACTIVE">Patients In Line</a></li>
<li><a href="select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient File</a></li>
<li><a href="../nurse/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">In-Patient</a></li>
<li><a href="disease.php">Disease</a></li>                    
                    
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
<li><a href="patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME']?>&status=ACTIVE">Patients In Line</a></li>
<li><a href="select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient File</a></li>
<li><a href="../nurse/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">In-Patient</a></li>
<li><a href="disease.php">Disease</a></li>              
                    
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
					
						<h3 class="fl">Reception Department</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					
					</div> <!-- end content-module-heading -->
	<!-- end top-bar -->
<form name="form1" method="post" id="form1" action="saveeditmedication.php">

<input type="hidden" name="prescription_id" value="<?php echo $_GET['prescription_id']; ?>" />
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="status" value="INACTIVE" />
<h3 align="center">ENTER MEDICATION </h3>
<h2 align="center">Diagnosis 1: <select name="diagnosis"  style="width: 320px;  height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM diagnosis order by code ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['code']; ?>-<?php echo $row['name']; ?>"><?php echo $row['code']; ?>-<?php echo $row['name']; ?> </option>
	<?php
	}
	?>
</select></h2>
<h2 align="center">Diagnosis  2:<select name="diagnosis1"  style="width: 320px;  height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM diagnosis order by code ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['code']; ?>-<?php echo $row['name']; ?>"><?php echo $row['code']; ?>-<?php echo $row['name']; ?> </option>
	<?php
	}
	?>
</select></h2>
<h2 align="center">Diagnosis 3: <select name="diagnosis2"   style="width: 320px;   height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM diagnosis order by code ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['code']; ?>-<?php echo $row['name']; ?>"><?php echo $row['code']; ?>-<?php echo $row['name']; ?> </option>
	<?php
	}
	?>
</select></h2>
<br><form>
<h2 align="center">MEDICATION 1
<select name="medication1"  style="width: 320px;  height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM products order by product_name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="desc1" value="" placeholder="Desc" autocomplete="off" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /></h2>

<h2 align="center">MEDICATION 2
<select name="medication2" style="width: 320px; height:30px; margin-left:auto">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM products order by product_name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="desc2" value="" placeholder="Desc" autocomplete="off" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /></h2>

<h2 align="center">MEDICATION 3
<select name="medication3" style="width: 320px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM products order by product_name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="desc3" value="" placeholder="Desc" autocomplete="off" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /></h2>

<h2 align="center">MEDICATION 4
<select name="medication4" style="width: 320px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM products order by product_name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="desc4" value="" placeholder="Desc" autocomplete="off" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /></h2>

<h2 align="center">MEDICATION 5
<select name="medication5" style="width: 320px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM products order by product_name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="desc5" value="" placeholder="Desc" autocomplete="off" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /></h2>

<h2 align="center">MEDICATION 6
<select name="medication6" style="width: 320px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM products order by product_name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="desc6" value="" placeholder="Desc" autocomplete="off" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /></h2>

<h2 align="center">MEDICATION 7
<select name="medication7" style="width: 320px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM products order by product_name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="desc7" value="" placeholder="Desc" autocomplete="off" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /></h2>

<h2 align="center">MEDICATION 8
<select name="medication8" style="width: 320px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM products order by product_name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="desc8" value="" placeholder="Desc" autocomplete="off" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /></h2>

<h2 align="center">MEDICATION 9
<select name="medication9" style="width: 320px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM products order by product_name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="desc9" value="" placeholder="Desc" autocomplete="off" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /></h2>

<h2 align="center">MEDICATION 10
<select name="medication10" style="width: 320px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM products order by product_name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="desc10" value="" placeholder="Desc" autocomplete="off" style="width: 200px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /></h2>
    <br>
<input id="btn" type="submit"  class="button round blue image-right ic-add text-upper" value="save" style=" width: 268px; margin-left:450px" />
</div>
</form>
</body>
</html><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
</body>
</html>