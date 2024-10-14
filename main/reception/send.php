<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Hospital Management System</title>

	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">

	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
			background-color: #FF9900;
			font-size: 90%;
			padding: 3px 0 5px 3px;
			border: 1px solid #000000;
			color: #333333;
			margin: 0px;
			width: 159px;
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
			width: 160px;
		}

		#vertmenu ul li a:hover,
		#vertmenu ul li a:focus {
			color: #000000;
			background-color: #eeeeee;
		}

		.style1 {
			color: #000000
		}

		div.pagination {

			padding: 3px;

			margin: 3px;

		}



		div.pagination a {

			padding: 2px 5px 2px 5px;

			margin: 2px;

			border: 1px solid #AAAADD;



			text-decoration: none;
			/* no underline */

			color: #000099;

		}

		div.pagination a:hover,
		div.pagination a:active {

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
		function Clickheretoprint() {
			var disp_setting = "toolbar=yes,location=no,directories=yes,menubar=yes,";
			disp_setting += "scrollbars=yes,width=900, height=400, left=100, top=25";
			var content_vlue = document.getElementById("content").innerHTML;

			var docprint = window.open("", "", disp_setting);
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
				<li><a href="search_patient.php">Search Patient</a><br /></li>
				<li><a href="new_patient.php">Add New Patient</a><br /></li>
				<li><a href="select_patient.php">Add Revisit</a><br /></li>
				<li><a href="patientss.php">View All Patients</a><br /></li>
				<li><a href="patientsreport.php?d1=0&d2=0">New visit Report</a><br /></li>
				<li><a href="patientsreportr.php?d1=0&d2=0">Revisit Report</a><br /></li>
				<li><a href="diagnosisreport.php">Diagnosis Report</a></li>
			</ul> <!-- end tabs -->

		</div> <!-- end full-width -->

	</div> <!-- end header -->

	<!-- MAIN CONTENT -->
	<div id="content">

		<div class="page-full-width cf">
			<div class="side-menu fl">

				<h3>Patient Management</h3>
				<ul>
					<li><a href="search_patient.php">Search Patient</a><br /></li>
					<li><a href="new_patient.php">Add New Patient</a><br /></li>
					<li><a href="select_patient.php">Add Revisit</a><br /></li>
					<li><a href="patientss.php">View All Patients</a><br /></li>
					<li><a href="patientsreport.php?d1=0&d2=0">New visit Report</a><br /></li>
					<li><a href="patientsreportr.php?d1=0&d2=0">Revisit Report</a><br /></li>
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
					<!-- end top-bar -->
					<br><br>
					<form action="savesend.php" method="post">
						<div id="ac" align="center">
							<input type="hidden" name="date" value="<?php echo date("Y-m-d"); ?>" />
							<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
							<input type="hidden" name="name" value="<?php echo $_GET['name']; ?>" />
							<input type="hidden" name="insurance_id" value="<?php echo $_GET['insurance_id']; ?>" />
							<input type="hidden" name="status" value="ACTIVE" />

							<br><br>
							<span>Select Doctor : </span><br>
							<select name="doctor" style="height:35px; width:285px" class="round default-width-input">
								<option> </option>
								<?php
								include('connect.php');
								$result = $db->prepare("SELECT * FROM user where position='Doctor I/c'");
								$result->execute();
								while ($row = $result->fetch()) {
								?>
									<option value="<?php echo $row['name']; ?>"><?php echo $row['name']; ?></option>
								<?php
								}
								?>
							</select><br><br>

							<span>Select Department : </span><br>
							<select name="department" style="height:35px; width:285px" class="round default-width-input">
								<option> </option>
								<option>DOCTOR</option>
								<option>LAB</option>
								<option>ULTRA SOUND</option>
								<option>MCH</option>
								<option>OPD</option>
								<option>DENTAL</option>
								<option>OPTICAL</option>
								<option>PHYSIOTHERAPY</option>
								<option>ORTHOPEDIC</option>
							</select><br><br>


							Service 1
							<select name="test1" style="width: 200px; height:40px;">
								<option></option>
								<?php
								include('connect.php');
								$result = $db->prepare("SELECT * FROM services ");
								$result->execute();
								while ($row = $result->fetch()) {
								?>
									<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
								<?php
								}
								?>
							</select><br><br>

							Service 2
							<select name="test2" class="round full-width-textarea" style="width: 200px; height:40px">
								<option></option>
								<?php
								include('connect.php');
								$result = $db->prepare("SELECT * FROM services ");
								$result->execute();
								while ($row = $result->fetch()) {
								?>
									<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
								<?php
								}
								?>
							</select><br><br>

							Service 3
							<select name="test3" style="width: 200px; height:40px;">
								<option></option>
								<?php
								include('connect.php');
								$result = $db->prepare("SELECT * FROM services ");
								$result->execute();
								while ($row = $result->fetch()) {
								?>
									<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
								<?php
								}
								?>
							</select><br><br><br>

							<input id="btn" type="submit" value="save" class="button round blue image-right ic-add text-upper" style="width: 285px; margin-bottom: 30px;" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>