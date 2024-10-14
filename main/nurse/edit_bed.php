<?php
	include('connect.php');
	$id=$_GET['bed_id'];
	$result = $db->prepare("SELECT * FROM bed WHERE bed_id= :userid");
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
				   <li><a href="select_file.php">Inpatient File</a></li>
					<li><a href="select_patient.php">Admit Patient</a></li>
                    <li><a href="select_patientdis.php">Discharge Patient</a></li>
                    <li><a href="patientsreport.php">Report</a></li>
                    <li><a href="manege_bed.php">Deds</a></li>
                    <li><a href="order.php">Order Drugs</a></li>
                    
                    
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
					<li><a href="select_file.php">Inpatient File</a></li>
					<li><a href="select_patient.php">Admit Patient</a></li>
                    <li><a href="select_patientdis.php">Discharge Patient</a></li>
                    <li><a href="patientsreport.php">Report</a></li>
                    <li><a href="manege_bed.php">Deds</a></li>
                    <li><a href="order.php">Order Drugs</a></li>
				</ul>
				        <div style="background: #ffffff">
                                              <script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
                               
                                </div>                              
			</div> <!-- end side-menu -->
			
			<div class="side-content fr">
			
				<div class="content-module">
				
					<div class="content-module-heading cf">
					
						<h3 class="fl">Inpatient</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					
					</div> <!-- end content-module-heading -->

    
</head>
<form name="form1" method="post" id="form1" action="saveeditbed.php">
                  
                  <p><strong>Add Patient Details </strong></p>
                  <table class="form"  border="0" cellspacing="0" cellpadding="0">
                    
                    <tr>
                      <td><span class="man">*</span>Bed Number:</td>
                      <td><input name="bed_number" placeholder="ENTER YOUR FULL NAME" type="text" id="name" maxlength="200"  style="height:25px" class="round default-width-input" value="<?php echo $row['bed_number']; ?>" /></td>
                     <td>Bed Name</td>
                      <td><input name="address" placeholder="ENTER LOCATION"type="text" id="buyingrate"  style="height:25px" maxlength="20"   class="round default-width-input" 
					  value="<?php echo $row['type']; ?>" /></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>Status</td>
                      <td><input name="status" placeholder="ENTER PHONE NUMBER"type="text" id="buyingrate" maxlength="20" style="height:25px"  class="round default-width-input" 
					  value="<?php echo $row['status']; ?>" /></td>
                   <td>Description </td>
                      <td><input name="description" placeholder="ENTER SCHEME"type="text" id="sellingrate" maxlength="20"  style="height:25px" class="round default-width-input" 
					  value="<?php echo $row['description']; ?>" /></td>
                    
                    </tr>


&nbsp;</td>
<tr>
                      <td>Price</td>
                      <td><input name="price" placeholder="ENTER PRICE"type="text" id="buyingrate" style="height:25px"  maxlength="20"   class="round default-width-input" 
					  value="<?php echo $row['price']; ?>" /></td>
                 
                    
                    </tr>
                    
                    </tr>
                    <tr>
                      <td>&nbsp;
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;
					 
					  </td>
                      <td>
                        <input  class="button round blue image-right ic-add text-upper" type="submit" name="Submit" value="Add">
						(Control + S)
					 <td>&nbsp;
					 
					  </td>  
					  <td align="right"><input class="button round red text-upper" type="reset" name="Reset" value="Reset"> </td>
                    </tr>
                  </table>
                </form>
<?php
}
?>