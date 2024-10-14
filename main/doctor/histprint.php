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


	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>
	<!-- end top-bar -->



<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p ");
	$result->bindParam(':p', $p);
	
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
	<h2 align="center" style="color:#F00">FILE RECORDS FOR: <?php echo $row['name']; ?>&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;SCHEME: <?php echo $row['insurance_id']; ?>&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;AGE: <?php echo $row['age']; ?>&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;BLOOD PRESSURE: <?php echo $row['bp']; ?></h2>
	<?php
	}
	?>
    
<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p ");
	$result->bindParam(':p', $p);
	
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?> 
   <a id="addd" href="select_patient.php?id=0" style="float: none;"></a>
<a rel="facebox" id="cccc"  href="add_history.php?patient_id=<?php echo $_GET['patient_id']?>&patient_name=<?php echo $row['name']; ?>&insurance_id=<?php echo $row['insurance_id']; ?>&cashier=<?php echo $_SESSION['SESS_FIRST_NAME']?>"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
<div class="clearfix"></div>

</div>

                  

						
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			<th width="5%">Patient Id</th>
            <th width="10%">Date</th>
			<th width="30%">Case History </th>
            <th width="15%">Test </th>
             <th width="30%">Results </th>
			<th width="45%">Medication </th>
			<th width="15%">Diagnosis</th>
            <th width="10%">Doctor</th>
             
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p order by prescription_id desc ");
	$result->bindParam(':p', $p);
	
		
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			
            <td><?php echo $row['patient_id']; ?></td>
			<td><?php echo $row['date']; ?></td>
            <td><b><i>Complains</i></b><br/><?php echo $row['complains']; ?><br/><b><i>Case History</i></b><br/><?php echo $row['case_history']; ?><br/><b><i>Comments</i></b><br/><?php echo $row['comment']; ?></td>
            
			
			<td><?php echo $row['test1']; ?><br/><?php echo $row['test2']; ?><br/><?php echo $row['test3']; ?><br/><?php echo $row['test4']; ?><br/><?php echo $row['test5']; ?><br/><?php echo $row['test6']; ?><br/><?php echo $row['test7']; ?><br/><?php echo $row['test8']; ?><br/><?php echo $row['service1']; ?><br/><?php echo $row['service2']; ?></td>
            <td><?php echo $row['complain2']; ?></td>
			 <td><?php echo $row['medication1']; ?>  &nbsp;&nbsp;<?php echo $row['desc1']; ?><br><?php echo $row['medication2']; ?>&nbsp;&nbsp;<?php echo $row['desc2']; ?><br><?php echo $row['medication3']; ?>&nbsp;&nbsp;<?php echo $row['desc3']; ?><br><?php echo $row['medication4']; ?>&nbsp;&nbsp;<?php echo $row['desc4']; ?><br><?php echo $row['medication5']; ?>&nbsp;&nbsp;<?php echo $row['desc5']; ?><br><?php echo $row['medication6']; ?>&nbsp;&nbsp;<?php echo $row['desc6']; ?><br><?php echo $row['medication7']; ?>&nbsp;&nbsp;<?php echo $row['desc7']; ?><br><?php echo $row['medication8']; ?>&nbsp;&nbsp;<?php echo $row['desc8']; ?><br><?php echo $row['medication9']; ?>&nbsp;&nbsp;<?php echo $row['desc9']; ?><br><?php echo $row['medication10']; ?>&nbsp;&nbsp;<?php echo $row['desc10']; ?></td>
             <td><?php echo $row['diagnosis']; ?><br><?php echo $row['diagnosis1']; ?><br><?php echo $row['diagnosis2']; ?></td>
             <td><?php echo $row['doctor_id']; ?></td>
             
			</tr>
			<?php
				}
			?>
		
	</tbody>

		
	</tbody>
    
</table>

                            </tbody>
                        </table><br>


</body>
</html><?php
}
?>