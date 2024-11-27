<?php
function createRandomPassword()
{
	$chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
	$pass = '';
	$i = 0;
	while ($i <= 5) {
		$num = random_int(0, strlen($chars) - 1);
		$tmp = substr($chars, $num, 1);
		$pass .= $tmp;
		$i++;
	}
	return $pass;
}
$finalCode = 'RS-' . createRandomPassword();
?>

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
</head>

<body>

	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>
	<?php require_once('auth.php'); ?>

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
			</ul>
		</div>
	</div>

	<!-- Main Content -->
	<div id="content">
		<div class="page-full-width cf">

			<!-- Side Menu -->
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
					<!-- posnic 120x90 vertical small -->
					<ins class="adsbygoogle"
						style="display:inline-block;width:120px;height:90px"
						data-ad-client="ca-pub-5212135413309920"
						data-ad-slot="3677012951"></ins>
					<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
				</div>
			</div>

			<!-- Side Content -->
			<div class="side-content fr">
				<div class="content-module">
					<div class="content-module-heading cf">
						<h3 class="fl">Reception Department</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					</div>

					<form action="patientbyid.php" method="get">
						<div id="ac">
							<br /><br />
							<input type="text" size="25" value="" name="patient_id" placeholder="Search By Patient Id" class="round full-width-textarea" style="width:268px; height:25px" /><br><br>
							<div class="suggestionsBox" id="suggestions" style="display: none;">
								<div class="suggestionList" id="suggestionsList"> &nbsp; </div>
							</div>
							<input id="btn" type="submit" class="button round blue image-right ic-add text-upper" value="Search" style="width:268px;" />
						</div>
					</form>

					<form action="patientbyname.php" method="get">
						<div id="ac" align="">
							<br /><br />
							<input type="text" size="25" value="" name="name" placeholder="Search By Patient Name" class="round full-width-textarea" style="width: 268px; height:25px" /><br><br>
							<div class="suggestionsBox" id="suggestions" style="display: none;">
								<div class="suggestionList" id="suggestionsList"> &nbsp; </div>
							</div>
							<input id="btn" type="submit" class="button round blue image-right ic-add text-upper" value="Search" style="width: 268px;" />
						</div>
					</form>

					<form action="patientbymn.php" method="get">
						<div id="ac" align="">
							<br /><br />
							<input type="text" size="25" value="" name="in_number" placeholder="Search By Member Number" class="round full-width-textarea" style="width: 268px; height:25px" /><br><br>
							<div class="suggestionsBox" id="suggestions" style="display: none;">
								<div class="suggestionList" id="suggestionsList"> &nbsp; </div>
							</div>
							<input id="btn" type="submit" class="button round blue image-right ic-add text-upper" value="Search" style="width: 268px;" />
						</div>
					</form>
				</div>
			</div>
</body>
</html>