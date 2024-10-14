
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Hospital Manegment System</title>
	
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
	<!-- jQuery & JS files -->
	<?php include_once("tpl/common_js.php"); ?>
	<script src="js/script.js"></script>  
		<script>
	/*$.validator.setDefaults({
		submitHandler: function() { alert("submitted!"); }
	});*/
	$(document).ready(function() {
	
		// validate signup form on keyup and submit
		$("#form1").validate({
			rules: {
				name: {
					required: true,
					minlength: 3,
					maxlength: 200
				},
				address: {
					minlength: 3,
					maxlength: 500
				},
				contact1: {
					minlength: 3,
					maxlength: 20
				},
				contact2: {
					minlength: 3,
					maxlength: 20
				}
			},
			messages: {
				name: {
					required: "Please enter a Customer Name",
					minlength: "Customer must consist of at least 3 characters"
				},
				address: {
					minlength: "Customer Address must be at least 3 characters long",
					maxlength: "Customer Address must be at least 3 characters long"
				}
			}
		});
	
	});

	</script>
    <script language="javascript">
function Clickheretoprint()
{ 
  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,"; 
      disp_setting+="scrollbars=yes,width=900, height=400, left=100, top=25"; 
  var content_vlue = document.getElementById("content").innerHTML; 
  
  var docprint=window.open("","",disp_setting); 
   docprint.document.open(); 
   docprint.document.write('</head><body onLoad="self.print()" style="width: 900px; font-size:11px; font-family:arial; font-weight:normal;">');          
   docprint.document.write(content_vlue); 
   docprint.document.close(); 
   docprint.focus(); 
}
</script>


						<div class="content-module-main cf">
				


<div id="maintable">
<div style="margin-top: -19px; margin-bottom: 21px;">

</div>

<a id="addd"  href="javascript:Clickheretoprint()">Print</a>||
<a id="addd" href="../index.php" style="float: none;">Back</a>
<div class="content" id="content">
<div>

</div>

<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p ");
	$result->bindParam(':p', $p);
	
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
	<h2 align="left" style="color:#F00">NAME: <?php echo $row['name']; ?> </h2>
    <h2 align="right" style="color:#F00">AGE: <?php echo $row['age']; ?></h2>
    <h2 align="left" style="color:#F00">PHONE NUMBER: <?php echo $row['phone']; ?></h2>
    <h2 align="right" style="color:#F00">LOCATION: <?php echo $row['address']; ?></h2>
    <h2 align="left" style="color:#F00">PATIENT ID: <?php echo $row['patient_id']; ?></h2>
	<?php
	}
	?>
     <?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM bed_allotment WHERE patient_id = :p ");
	$result->bindParam(':p', $p);
	
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
	
    <h2 align="right" style="color:#F00">IP NUMBER: <?php echo $row['bed_allotment_id']; ?></h2>
	<?php
	}
	?>
&nbsp;&nbsp;&nbsp;&nbsp; 

<h1 align="center" style="color:#F00">ADMISSION REPORTS</h1>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			<th width="10%">Patient Id</th>
            <th width="20%">Admission Date</th>
			<th width="20%">Discharge date </th>
            <th width="25%">Bed Type</th>
            
			
			<th width="15%">Diagnosis</th>
          
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM bed_allotment WHERE patient_id = :p  ");
	$result->bindParam(':p', $p);
	
		
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			
            <td><?php echo $row['patient_id']; ?></td>
			<td><?php echo $row['date']; ?></td>
            <td><?php echo $row['dis_date']; ?></td>
            <td><?php echo $row['bed_id']; ?></td>
			<td><?php echo $row['diagnosis']; ?></td>

             
			</tr>
			<?php
				}
			?>
            	</tbody>

		
	</tbody>
</table>

            <h1 align="center" style="color:#F00">WARD OBSERVATIONS</h1>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			
            <th width="20%">Date</th>
			<th width="35%">Observations </th>
            <th width="10%">Nurse </th>
          
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM observations  WHERE patient_id = :p  ");
	$result->bindParam(':p', $p);
	
		
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			
            
			<td><?php echo $row['date']; ?></td>
            <td><?php echo $row['observation']; ?></td>
          
             <td><?php echo $row['cashier']; ?></td>
			</tr>
			<?php
				}
			?>
		

		
	</tbody>

		
	</tbody>
</table>
<h1 align="center" style="color:#F00">PHARMACY RECORDS</h1>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			
            <th width="20%">Date</th>
			<th width="37%">Medication </th>
            <th width="10%">Nurse </th>
          
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM nurse_orders WHERE patient_id = :p  ");
	$result->bindParam(':p', $p);
	
		
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			
            
			<td><?php echo $row['date']; ?></td>
            <td><?php echo $row['medication1']; ?><br/><?php echo $row['medication2']; ?><br/><?php echo $row['medication3']; ?><br/><?php echo $row['medication4']; ?><?php echo $row['medication5']; ?><br/><?php echo $row['medication6']; ?><br/><?php echo $row['medication7']; ?><br/><?php echo $row['medication8']; ?><?php echo $row['medication9']; ?><br/><?php echo $row['medication10']; ?></td>
          
             <td><?php echo $row['nurse_id']; ?></td>
			</tr>
			<?php
				}
			?>
		
	</tbody>

		
	</tbody>
</table>

<h1 align="center" style="color:#F00">LAB REPORT</h1>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			
            <th width="20%">Date</th>
			<th width="35%">Test </th>
            <th width="10%">Lab Technologist </th>
          
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM diagnosis_report WHERE inpatient='INPATIENT' AND patient_id = :p  ");
	$result->bindParam(':p', $p);
	
		
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			
            
			<td><?php echo $row['date']; ?></td>
            <td><?php echo $row['report_type']; ?></td>
          
             <td><?php echo $row['laboratorist_id']; ?></td>
			</tr>
			<?php
				}
			?>
		
	</tbody>

		
	</tbody>
</table>
<h1 align="center" style="color:#F00">OTHER SERVICES REPORT</h1>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			
            <th width="20%">Date</th>
			<th width="35%">Service/Operation </th>
            <th width="10%">Doctor/Nurse </th>
          
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM nursing WHERE patient_id = :p  ");
	$result->bindParam(':p', $p);
	
		
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			
			<td><?php echo $row['date']; ?></td>
            <td><?php echo $row['nursing_type']; ?></td>
            <td><?php echo $row['cashier']; ?></td>
            
			</tr>
			<?php
				}
			?>
		
	</tbody>

		
	</tbody>
</table>
</body>
</html>