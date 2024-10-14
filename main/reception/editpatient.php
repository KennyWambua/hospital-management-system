<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title> Hospital Management System </title>

		<!-- Optimize for mobile devices -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

		<!-- Stylesheets -->
		<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
		<link rel="stylesheet" href="css/style.css">

		<style type="text/css">
			body {
				margin-left: 0px;
				margin-top: 0px;
				margin-right: 0px;
				margin-bottom: 0px;
				background-color: #FFFFFF;
			}
			* {
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
			.style1 {
				color: #000000;
			}
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
		<script language="javascript">
			function Clickheretoprint(){ 
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
				</ul> 
			</div>
		</div>

		<!-- MAIN CONTENT -->
		<div id="content">
			<div class="page-full-width cf">

				<!-- SIDE MENU -->
				<div class="side-menu fl">
					<h3> Patient Management </h3>
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
				</div>

				<!-- SIDE CONTENT -->
				<div class="side-content fr">
			
					<!-- CONTENT MODULE -->
					<div class="content-module">
			
						<!-- CONTENT MODULE HEADING -->
						<div class="content-module-heading cf">
							<h3 class="fl">Reception Department</h3>
							<span class="fr expand-collapse-text">Click to collapse</span>
							<span class="fr expand-collapse-text initial-expand">Click to expand</span>
						</div>
								
						<!-- CONTENT MODULE MAIN -->
						<div class="content-module-main cf">
							<form action="saveeditpatient.php" method="post">
								<p><strong> Add Patient Details </strong></p>
								<table class="form"  style="border:0;" cellspacing="0" cellpadding="0">
									<?php
										include('connect.php');
										$id=$_GET['patient_id'];
										$result = $db->prepare("SELECT * FROM patient WHERE patient_id= :userid");
										$result->bindParam(':userid', $id);
										$result->execute();
										for($i=0; $row = $result->fetch(); $i++) {
											?>
											<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
											<tr>
												<td><span class="man">*</span> Name:</td>
												<input type="hidden" name="memi" value="<?php echo $id; ?>" />
												<td><input type="text" name="name" value="<?php echo $row['name']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>
												<td>Address/Location</td>
												<td><input type="text" name="address" value="<?php echo $row['address']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td>Phone Number</td>
												<td><input type="text" name="phone" value="<?php echo $row['phone']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>
												<td>Insurance </td>
												<td><input type="text" name="insurance_id" value="<?php echo $row['insurance_id']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td> Member Number</td>
												<td><input type="text" name="in_number" value="<?php echo $row['in_number']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>
												<td> Sex </td>
												<td><input type="text" name="sex" value="<?php echo $row['sex']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td> Height</td>
												<td><input type="text" name="height" value="<?php echo $row['height']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>
												<td> Weight</td>
												<td><input type="text" name="weight" value="<?php echo $row['weight']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td> Age </td>
												<td><input type="text" name="age" value="<?php echo $row['age']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>
												<td>Reg Fee </td>
												<td><input type="text" name="fee" value="<?php echo $row['fee']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td>Co Pay</td>
												<td><input type="text" name="copay" value="<?php echo $row['copay']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>
												<td> Discount </td>
												<td><input type="text" name="discount" value="<?php echo $row['discount']; ?>" maxlength="150"  style="height:32px; width:250px"  class="round default-width-input" /></td>   
											</tr>
											<?php
										}
									?>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
                      					<td>
											<input  class="button round blue image-right ic-add text-upper" type="submit" name="Submit" value="Add">
											(Control + S)
										</td>
										<td>&nbsp;</td>  
										<td style="align: right;"><input class="button round red text-upper" type="reset" name="Reset" value="Reset"> </td>
									</tr>
								</table>
							</form>
						</div> 
					</div> 
				</div>
			</div>
		</div>
			
		<!-- FOOTER -->
		<div id="footer">
			<p>Any Queries email to 0701417887.</p>
		</div> 
	</body>
</html>
		
										
     
	
	
