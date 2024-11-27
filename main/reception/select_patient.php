<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Hospital Management System</title>

	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/style.css">

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
		function clickHereToPrint() {
			var displaySetting = "toolbar=yes,location=no,directories=yes,menubar=yes,";
			displaySetting += "scrollbars=yes,width=900, height=400, left=100, top=25";
			var contentValue = document.getElementById("content").innerHTML;
			var documentPrint = window.open("", "", displaySetting);
			documentPrint.document.open();
			documentPrint.document.write(
				'</head><body onLoad="self.print()" style="width: 900px; font-size:11px; font-family:arial; font-weight:normal;">'
			);
			documentPrint.document.write(contentValue);
			documentPrint.document.close();
			documentPrint.focus();
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

					<div class="content-module-main cf">

						<div class="content-module-main cf">





							<form action="revist.php" method="get">
								<div id="ac" align="center">
									<br /><br />

									<input type="text" size="25" value="" name="patient_id" placeholder="Enter Patient Number" class="round full-width-textarea" style="width: 268px; height:25px" /><br><br>

									<div class="suggestionsBox" id="suggestions" style="display: none;">
										<div class="suggestionList" id="suggestionsList"> &nbsp; </div>
									</div>
									<input id="btn" class="button round blue image-right ic-add text-upper" type="submit" value="Search" style="width: 268px;" />
								</div>
							</form>
</body>

</html>