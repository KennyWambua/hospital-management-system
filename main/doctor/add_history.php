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
<br />
<form action="save_history.php"  method="post">
<div id="ac" align="center">
<input type="hidden" name="date" value="<?php echo date("d/m/Y"); ?>" />
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="insurance_id" value="<?php echo $_GET['insurance_id']; ?>" />
<input type="hidden" name="doctor_id" value="<?php echo $_GET['cashier']; ?>" />
<input type="hidden" name="patient_name" value="<?php echo $_GET['patient_name']; ?>" />
<h2 align="center">Complain 1: <select name="complain1"   style="width: 320px;   height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM commoncomp
 order by name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['name']; ?>"><?php echo $row['name']; ?> </option>
	<?php
	}
	?>
</select> For <select name="period1"   style="width: 70px;   height:30px;">

	<option></option>
		<option>1 day</option>
        <option>2 days</option>
           <option>3 days</option>
              <option>4 days</option>
                 <option>5 days</option>
                    <option>6 days</option>
                       <option>7 days</option>
                          <option>8 days</option>
                             <option>9 days</option>
                                <option>10 days</option>
	
</select> </h2>
<h2 align="center">Complain 2: <select name="complain2"   style="width: 320px;   height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM commoncomp
 order by name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['name']; ?>"><?php echo $row['name']; ?> </option>
	<?php
	}
	?>
</select> For <select name="period2"   style="width: 70px;   height:30px;">

	<option></option>
		<option>1 day</option>
        <option>2 days</option>
           <option>3 days</option>
              <option>4 days</option>
                 <option>5 days</option>
                    <option>6 days</option>
                       <option>7 days</option>
                          <option>8 days</option>
                             <option>9 days</option>
                                <option>10 days</option>
	
</select> </h2>
<h2 align="center">Complain 3: <select name="complain3"   style="width: 320px;   height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM commoncomp
 order by name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['name']; ?>"><?php echo $row['name']; ?> </option>
	<?php
	}
	?>
</select> For <select name="period3"   style="width: 70px;   height:30px;">

	<option></option>
		<option>1 day</option>
        <option>2 days</option>
           <option>3 days</option>
              <option>4 days</option>
                 <option>5 days</option>
                    <option>6 days</option>
                       <option>7 days</option>
                          <option>8 days</option>
                             <option>9 days</option>
                                <option>10 days</option>
	
</select> </h2>
<h2 align="center">Complain 4: <select name="complain4"   style="width: 320px;   height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM commoncomp
 order by name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['name']; ?>"><?php echo $row['name']; ?> </option>
	<?php
	}
	?>
</select> For <select name="period4"   style="width: 70px;   height:30px;">

	<option></option>
		<option>1 day</option>
        <option>2 days</option>
           <option>3 days</option>
              <option>4 days</option>
                 <option>5 days</option>
                    <option>6 days</option>
                       <option>7 days</option>
                          <option>8 days</option>
                             <option>9 days</option>
                                <option>10 days</option>
	
</select> </h2>
<h2 align="center">Complain 5: <select name="complain5"   style="width: 320px;   height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM commoncomp
 order by name ASC");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['name']; ?>"><?php echo $row['name']; ?> </option>
	<?php
	}
	?>
</select> For <select name="period5"   style="width: 70px;   height:30px;">

	<option></option>
		<option>1 day</option>
        <option>2 days</option>
           <option>3 days</option>
              <option>4 days</option>
                 <option>5 days</option>
                    <option>6 days</option>
                       <option>7 days</option>
                          <option>8 days</option>
                             <option>9 days</option>
                                <option>10 days</option>
	
</select> </h2>
<h2>
<br><br>Complain 6
<textarea rows="70" cols="105" name="case_history"  autocomplete="on" class="round full-width-textarea" class="box-content padded"  class="box closable-chat-box" style=" height:105px; width: 320px;"></textarea><br/><br/><br/>
     
      <div class="suggestionsBox" id="suggestions" style="display: none;">
        <div class="suggestionList" id="suggestionsList"> &nbsp; </div>
      </div>
<input id="btn"   class="button round blue image-right ic-add text-upper" type="submit" value="save" style="width: 268px;" /></h2>
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