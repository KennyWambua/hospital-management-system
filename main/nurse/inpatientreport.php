

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

</head>
<body>

	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>
	<!-- end top-bar -->
	
	
	
	<!-- HEADER -->
	<div id="header-with-tabs">
		
		<div class="page-full-width cf">
	
			<ul id="tabs" class="fl">
				<li><a href="select_file.php">Inpatient File</a><br/></li>
<li><a href="select_department.php">Inpatient Request</a><br/></li>
<li><a href="select_request.php">Request Results</a><br/></li>
<li><a href="select_number.php">Patient Observations</a><br/></li>
<li><a href="select_summary.php">Discharge Summary</a><br/></li>
<li><a href="patientsreport.php">Report</a><br/></li>
<li><a href="manege_bed.php">Deds</a><br/></li>
<li><a href="order.php">Order Drugs</a><br/></li>
<li><a href="operationlist.php">Operations List</a><br/></li>
<li><a href="select_ope.php?invoice=<?php echo $finalcode ?>&cashier=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Operation</a><br/></li>
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
					<li><a href="select_file.php">Inpatient File</a><br/></li>
<li><a href="select_department.php">Inpatient Request</a><br/></li>
<li><a href="select_request.php">Request Results</a><br/></li>
<li><a href="select_number.php">Patient Observations</a><br/></li>
<li><a href="select_summary.php">Discharge Summary</a><br/></li>
<li><a href="patientsreport.php">Report</a><br/></li>
<li><a href="manege_bed.php">Deds</a><br/></li>
<li><a href="order.php">Order Drugs</a><br/></li>
<li><a href="operationlist.php">Operations List</a><br/></li>
<li><a href="select_ope.php?invoice=<?php echo $finalcode ?>&cashier=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Operation</a><br/></li>
                    
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
					
						<h3 class="fl">INPATIENT DEPARTMENT</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					
					</div> <!-- end content-module-heading -->
					
						<div class="content-module-main cf">
				
<div id="maintable">
<div style="margin-top: -19px; margin-bottom: 21px;">

</div>
<form action="inpatientreport.php" method="get">
From :&nbsp;&nbsp; <input type="text" name="d1"  value="<?php echo date('Y-m-d');?>" /> To: <input type="text" name="d2"  value="<?php echo date('Y-m-d');?>" />&nbsp;&nbsp;&nbsp;&nbsp;Status:<select  name="status">
 <option>ADMIT</option>
<option>DISCHARGE</option>&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Search"> &nbsp;&nbsp;&nbsp;&nbsp;
</form>
<a id="addd" href="javascript:Clickheretoprint()">Print</a><br/>
<a id="addd" href="index.php" style="float: none;">Back</a>
<div class="content" id="content">
<div>
<H3 align="center"><B> MALE <?php echo $_GET['status'] ?> FOR AGE LESS THAN 15 YEARS &nbsp;<?php echo $_GET['d1'] ?>&nbsp;to&nbsp;<?php echo $_GET['d2'] ?></B></H3>
</div>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
            <th width="10%"> No </th>
			<th width="10%"> Patient No </th>
            <th width="20%"> Patient Name </th>
			<th width="8%">  Bed</th>
           
             <th width="20%"> Diagnosis </th>
           
           
			<th width="15%"> Age </th>
			<th width="10%"> Date </th>
		</tr>
	</thead>
	<tbody>
		
			<?php
				include('connect.php');
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$c='male';
				$d=$_GET['status'];

				
				$result = $db->prepare("SELECT * FROM bed_allotment WHERE sex=:c and status=:d and age <=15 and date BETWEEN :a AND :b ");
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				$result->bindParam(':c', $c);
				$result->bindParam(':d', $d);
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
            <td><?php echo $count++;?></td>
			<td><?php echo $row['patient_id']; ?></td>
            <td><?php echo $row['name']; ?></td>
			<td><?php echo $row['phone']; ?></td>
            <td><?php echo $row['insurance_id']; ?></td>
            <td><?php echo $row['diagnosis']; ?></td>
            <td><?php echo $row['in_number']; ?></td>
            <td><?php echo $row['sex']; ?></td>
			
			<td><?php echo $row['age']; ?></td>
			<td><?php echo $row['account_opening_timestamp']; ?></td>
			</tr>
			<?php
				}
			?>
		
	</tbody>
	
</table>



<H3 align="center"><B>FEMALE <?php echo $_GET['status'] ?> FOR AGE LESS THAN 15 YEARS &nbsp;<?php echo $_GET['d1'] ?>&nbsp;to&nbsp;<?php echo $_GET['d2'] ?></B></H3>

<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
            <th width="10%"> No </th>
			<th width="10%"> Patient No </th>
            <th width="20%"> Patient Name </th>
			<th width="8%">  Bed</th>
           
             <th width="20%"> Diagnosis </th>
           
           
			<th width="15%"> Age </th>
			<th width="10%"> Date </th>
		</tr>
	</thead>
	<tbody>
		
			<?php
				include('connect.php');
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$c='female';
				$d=$_GET['status'];
				$result = $db->prepare("SELECT * FROM bed_allotment WHERE sex=:c and status=:d and age <=15 and date BETWEEN :a AND :b ");
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				$result->bindParam(':c', $c);
				$result->bindParam(':d', $d);
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
            <td><?php echo $count++;?></td>
			<td><?php echo $row['patient_id']; ?></td>
            <td><?php echo $row['name']; ?></td>
			 <td><?php echo $row['bed_id']; ?></td>
            <td><?php echo $row['diagnosis']; ?></td>
            <td><?php echo $row['age']; ?></td>
			<td><?php echo $row['date']; ?></td>
			</tr>
			<?php
				}
			?>
		
	</tbody>
	
</table>

<H3 align="center"><B>MALE <?php echo $_GET['status'] ?>  FOR AGE MORE THAN 15 YEARS &nbsp;<?php echo $_GET['d1'] ?>&nbsp;to&nbsp;<?php echo $_GET['d2'] ?></B></H3>

<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
            <th width="10%"> No </th>
			<th width="10%"> Patient No </th>
            <th width="20%"> Patient Name </th>
			<th width="8%">  Bed</th>
           
             <th width="20%"> Diagnosis </th>
           
           
			<th width="15%"> Age </th>
			<th width="10%"> Date </th>
		</tr>
	</thead>
	<tbody>
		
			<?php
				include('connect.php');
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$c='male';
				$d=$_GET['status'];
				$result = $db->prepare("SELECT * FROM bed_allotment WHERE sex=:c and status=:d and age >15 and date BETWEEN :a AND :b ");
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				$result->bindParam(':c', $c);
				$result->bindParam(':d', $d);
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
             <td><?php echo $count++;?></td>
			<td><?php echo $row['patient_id']; ?></td>
            <td><?php echo $row['name']; ?></td>
			 <td><?php echo $row['bed_id']; ?></td>
            <td><?php echo $row['diagnosis']; ?></td>
            <td><?php echo $row['age']; ?></td>
			<td><?php echo $row['date']; ?></td>
			</tr>
			<?php
				}
			?>
		
	</tbody>
	
</table>

<H3 align="center"><B>FEMALE <?php echo $_GET['status'] ?> FOR AGE MORE THAN 15 YEARS &nbsp;<?php echo $_GET['d1'] ?>&nbsp;to&nbsp;<?php echo $_GET['d2'] ?></B></H3>

<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
           <th width="10%"> No </th>
			<th width="10%"> Patient No </th>
            <th width="20%"> Patient Name </th>
			<th width="8%">  Bed</th>
           
             <th width="20%"> Diagnosis </th>
           
           
			<th width="15%"> Age </th>
			<th width="10%"> Date </th>
		</tr>
	</thead>
	<tbody>
		
			<?php
				include('connect.php');
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$c='female';
				$d=$_GET['status'];
				$result = $db->prepare("SELECT * FROM bed_allotment WHERE sex=:c and status=:d and age >15 and date BETWEEN :a AND :b ");
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				$result->bindParam(':c', $c);
				$result->bindParam(':d', $d);
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
             <td><?php echo $count++;?></td>
			<td><?php echo $row['patient_id']; ?></td>
            <td><?php echo $row['name']; ?></td>
			 <td><?php echo $row['bed_id']; ?></td>
            <td><?php echo $row['diagnosis']; ?></td>
            <td><?php echo $row['age']; ?></td>
			<td><?php echo $row['date']; ?></td>
			</tr>
			<?php
				}
			?>
		
	</tbody>
	
</table>
</div>
<div class="clearfix"></div>
</div>
</body>
</html>