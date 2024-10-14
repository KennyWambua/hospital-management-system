
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
					
				},
				address: {
					
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
<li><a href="search_patient.php">Search Patient</a><br/></li>
<li><a href="new_patient.php">Add New Patient</a><br/></li>
<li><a href="select_patient.php">Add Revisit</a><br/></li>
<li><a href="patientss.php">View All Patients</a><br/></li>
<li><a href="patientsreport.php?d1=0&d2=0">New visit Report</a><br/></li>
<li><a href="patientsreportr.php?d1=0&d2=0">Revisit Report</a><br/></li>
<li><a href="diagnosisreport.php">Diagnosis Report</a></li>
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
<li><a href="search_patient.php">Search Patient</a><br/></li>
<li><a href="new_patient.php">Add New Patient</a><br/></li>
<li><a href="select_patient.php">Add Revisit</a><br/></li>
<li><a href="patientss.php">View All Patients</a><br/></li>
<li><a href="patientsreport.php?d1=0&d2=0">New visit Report</a><br/></li>
<li><a href="patientsreportr.php?d1=0&d2=0">Revisit Report</a><br/></li>
<li><a href="diagnosisreport.php">Diagnosis Report</a></li>                    
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
					
						<h3 class="fl">Reception Department</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					
					</div> <!-- end content-module-heading -->
					
						<div class="content-module-main cf">
				

<a id="addd" href="javascript:Clickheretoprint()">Print</a><br/>
<a id="addd" href="index.php" style="float: none;">Back</a>
<div class="content" id="content">
<div>
<H3 align="center"><B></B></H3>
</div>

<input type="hidden" name="patient_id" value="<?php echo $_GET['name']; ?>" />
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
            <th width="10%"> No </th>
			<th width="10%"> Patient No </th>
            <th width="30%"> Patient Name </th>
			<th width="8%">  Phone No</th>
            <th width="40%"> Scheme </th>
            <th width="10%"> Member No </th>
			<th width="35%"> Sex </th>
           
			<th width="15%"> Age </th>
			<th width="10%"> Date </th>
            <th width="10%"> Action </th>
            
		</tr>
	</thead>
	<tbody>
		
			<?php
				include('connect.php');
				
				
				$n=$_GET['name'];
				$result = $db->prepare("SELECT * FROM patient where name=:n  order by patient_id desc ");
				
				$result->bindParam(':n', $n);
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
            <td><?php echo $row['in_number']; ?></td>
            <td><?php echo $row['sex']; ?></td>
			
			<td><?php echo $row['age']; ?></td>
			<td><?php echo $row['date']; ?></td>
            <td><a rel="facebox" href="revist.php?patient_id=<?php echo $row['patient_id']; ?>"><input type="button" class="button round blue image-right ic-add text-upper" align="left" value="Revisit"/></a>
            </td>
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