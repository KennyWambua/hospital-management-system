<?php
	require_once('auth.php');
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
				<li><a href="labpatients.php?id=cash&transdep=PHYSIOTHERAPY&invoice=<?php echo $finalcode ?>">Patients In Line</a></li>
<li><a href="select_patient.php?id=cash&transdep=PHYSIOTHERAPY&invoice=<?php echo $finalcode ?>">Search Patient</a></li>
<li><a href="labreport.php?d1=0&d2=0&document_type=0">Specific Lab Report</a></li>
<li><a href="labreport2.php?d1=0&d2=0">General Lab Report</a></li>
                    
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
					<<li><a href="lab_file.php">Patient File</a></li>
                    <li><a href="labreport">Lab Report</a></li><li><a href="labpatients.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Patients In Line</a></li>
<li><a href="select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient</a></li>
<li><a href="labreport.php?d1=0&d2=0&document_type=0">Specific Lab Report</a></li>
<li><a href="labreport2.php?d1=0&d2=0">General Lab Report</a></li>
                    
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

<div id="maintable" align="center"><div style="margin-top: -19px; margin-bottom: 21px;">
<a id="addd" href="index.php" style="float: none;">Back</a>
</div>



<form action="results.php" method="get" >
<input type="hidden" name="date" value="<?php echo date("Y-m-d"); ?>" />
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="prescription_id" value="<?php echo $_GET['prescription_id']; ?>" />
<input type="hidden" name="insurance_id" value="<?php echo $_GET['insurance_id']; ?>" />
<input type="hidden" name="laboratorist_id" value="<?php echo $_GET['cashier']; ?>" />
<input type="hidden" name="department" value="Results-Ready" />

TEST<br/>
<?php
$asas=$_GET['insurance_id'];
if($asas=='CASH') {
?>
<select name="report_type" style="width: 270px; height:30px;">
<?php
	$prescription_id=$_GET['prescription_id'];
	include('connect.php');
	$result = $db->prepare("SELECT * FROM sales_order WHERE transdep='THEATRE' and prescription_id= :userid");
	
	$result->bindParam(':userid', $prescription_id);
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
        <option></option>
		<option value="<?php echo $row['name']; ?>"><?php echo $row['name']; ?></option>
        
	<?php
	}
	?>
</select><br>
<?php
}
else {
?>
<select name="report_type" style="width: 270px; height:30px;">
<?php
	$prescription_id=$_GET['prescription_id'];
	include('connect.php');
	$result = $db->prepare("SELECT * FROM prescription WHERE  prescription_id= :userid and department='THEATRE'");
	
	$result->bindParam(':userid', $prescription_id);
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
        <option></option>
		<option value="<?php echo $row['service1']; ?>"><?php echo $row['service1']; ?></option>
        <option value="<?php echo $row['service2']; ?>"><?php echo $row['service2']; ?></option>
        
        
	<?php
	}
	?>
    <?php
	}
	?>
</select><br>


<br/><br/>
<input type="submit" value="Next" style="width: 123px;" />
</form>

<br/>

<table id="resultTable" data-responsive="table">
	<thead>
		<tr>
			<th> No</th>
            <th>Patient Id </th>
			<th> Date </th>
			
            
			<th>Service </th>
			<th>Results</th>
			
          
			<th> Action </th>
		</tr>
	</thead>
	<tbody>
		
			<?php
				$prescription_id=$_GET['prescription_id'];
				include('connect.php');
				$result = $db->prepare("SELECT * FROM diagnosis_report WHERE prescription_id= :userid");
				$result->bindParam(':userid', $prescription_id);
				$result->execute();
					$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td><?php echo $count++;?></td>
			<td><?php echo $row['patient_id']; ?></td>
			<td><?php echo $row['date']; ?></td>
            <td><?php echo $row['report_type']; ?></td>
            <td><?php echo $row['description']; ?><br><?php echo $row['description1']; ?><br><?php echo $row['description2']; ?><br><?php echo $row['description3']; ?><br><?php echo $row['description4']; ?><br><?php echo $row['description5']; ?><br><?php echo $row['description6']; ?><br><?php echo $row['description7']; ?><br><?php echo $row['description8']; ?><br><?php echo $row['description9']; ?><br></td>
			
			
             <td>
			<a href="delete.php?id=<?php echo $row['diagnosis_report_id']; ?>&cashier=<?php echo $row['laboratorist_id']; ?>&patient_id=<?php echo $row['patient_id']; ?>&prescription_id=<?php echo $row['prescription_id']; ?>"> Delete </a></td>
			</tr>
			<?php
				}
			?>
			
                 <?php
				function formatMoney($number, $fractional=false) {
					if ($fractional) {
						$number = sprintf('%.2f', $number);
					}
					while (true) {
						$replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
						if ($replaced != $number) {
							$number = $replaced;
						} else {
							break;
						}
					}
					return $number;
				}
				
				?>
				</strong></td>
                <td colspan="2"><strong style="font-size: 12px; color: #222222;">
			</tr>
		
	</tbody>
</table><br>

</div>
</body>
</html>