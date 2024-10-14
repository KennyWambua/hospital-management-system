<?php
require_once('auth.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>DINO HEALTHCARE SERVICES</title>

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
</head>

<body>

	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>
	<!-- end top-bar -->
	<?php
	function createRandomPassword()
	{
		$chars = "003232303232023232023456789";
		srand((float)microtime() * 1000000);
		$i = 0;
		$pass = '';
		while ($i <= 5) {
			$num = rand() % 33;
			$tmp = substr($chars, $num, 1);
			$pass = $pass . $tmp;
			$i++;
		}
		return $pass;
	}
	$finalcode = 'RS-' . createRandomPassword();
	?>

	<!-- HEADER -->
	<div id="header-with-tabs">

		<div class="page-full-width cf">

			<ul id="tabs" class="fl">
				<li><a href="../patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE&transdep=DENTAL">Patients In Line</a><br /></li>
				<li><a href="../select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient File</a><br /></li>
				<li><a href="../disease.php">Disease</a><br /></li>
				<li><a href="select_patient.php">Admit Patient</a><br /></li>
				<li><a href="select_file.php">Inpatient File</a><br /></li>
				<li><a href="../common.php">Common complains</a><br /></li>
				<li><a href="select_patientdis.php">Discharge Patient</a><br /></li>
				<li><a href="../appointment.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Appointments</a><br /></li>
				<li><a href="../storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DOCTOR&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store Request</a><br /></li>

			</ul> <!-- end tabs -->
		</div> <!-- end full-width -->

	</div> <!-- end header -->

	<!-- MAIN CONTENT -->
	<div id="content">
		<div class="page-full-width cf">

			<div class="side-menu fl">
				<h3>Patient Management</h3>
				<ul>
					<li><a href="../patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE&transdep=DENTAL">Patients In Line</a><br /></li>
					<li><a href="../select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient File</a><br /></li>
					<li><a href="../disease.php">Disease</a><br /></li>
					<li><a href="select_patient.php">Admit Patient</a><br /></li>
					<li><a href="select_file.php">Inpatient File</a><br /></li>
					<li><a href="../common.php">Common complains</a><br /></li>
					<li><a href="select_patientdis.php">Discharge Patient</a><br /></li>
					<li><a href="../appointment.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Appointments</a><br /></li>
					<li><a href="../storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DOCTOR&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store Request</a><br /></li>


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
						<h3 class="fl">doctor's module</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					</div> <!-- end content-module-heading -->

					<div class="content-module-main cf">
						<form name="form1" method="post" id="form1" action="saveadmit.php">
							<p><strong>Admit Patient </strong></p>
							<table class="form" border="0" cellspacing="0" cellpadding="0">
								<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
								<input type="hidden" name="date" value="<?php echo date('Y-m-d'); ?>" />
								<tr>
									<td><span class="man">*</span>Name:</td>
									<td>
										<select name="name" maxlength="150" style="height:32px; width:250px" class="round default-width-input">
											<?php
											$p = $_GET['patient_id'];
											include('connect.php');
											$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p  ");
											$result->bindParam(':p', $p);
											$result->execute();
											while ($row = $result->fetch()) {
											?>
												<option value="<?php echo $row['name']; ?>"><?php echo $row['name']; ?> </option>
											<?php
											}
											?>
									</td>
									<td>Bed</td>
									<td>
										<select name="bed" maxlength="150" style="height:32px; width:250px" class="round default-width-input">
											<?php
											include('connect.php');
											$result = $db->prepare("SELECT * FROM bed");
											$result->execute();
											while ($row = $result->fetch()) {
											?>
												<option><?php echo $row['type']; ?></option>
											<?php
											}
											?>
										</select>
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>Status</td>
									<td><select name="status" maxlength="150" style="height:32px; width:250px" class="round default-width-input">


											<option>ADMIT</option>
											<option>DISCHARGE</option>
									</td>
									<td>Insurace </td>
									<td><select name="insurance_id" maxlength="150" style="height:32px; width:250px" class="round default-width-input">

											<?php
											$p = $_GET['patient_id'];
											include('connect.php');


											$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p  ");
											$result->bindParam(':p', $p);


											$result->execute();
											for ($i = 0; $row = $result->fetch(); $i++) {
											?>
												<option value="<?php echo $row['insurance_id']; ?>"><?php echo $row['insurance_id']; ?> </option>
											<?php
											}
											?></td>

								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>Sex </td>
									<td><select name="sex" maxlength="150" style="height:32px; width:250px" class="round default-width-input">

											<?php
											$p = $_GET['patient_id'];
											include('connect.php');


											$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p  ");
											$result->bindParam(':p', $p);


											$result->execute();
											for ($i = 0; $row = $result->fetch(); $i++) {
											?>
												<option value="<?php echo $row['sex']; ?>"><?php echo $row['sex']; ?> </option>
											<?php
											}
											?></td>


									<td>Admission Department</td>
									<td><select name="admission_dep" maxlength="150" style="height:32px; width:250px" class="round default-width-input">


											<option>GENERAL WARD</option>
											<option>MARTANITY</option>
									</td>


									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;

									</td>
									<td>
								<tr>
									<td>Age </td>
									<td><select name="age" maxlength="150" style="height:32px; width:250px" class="round default-width-input">

											<?php
											$p = $_GET['patient_id'];
											include('connect.php');


											$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p  ");
											$result->bindParam(':p', $p);


											$result->execute();
											for ($i = 0; $row = $result->fetch(); $i++) {
											?>
												<option value="<?php echo $row['age']; ?>"><?php echo $row['age']; ?> </option>
											<?php
											}
											?></td></select><br>
									td>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;

									</td>
									<td>
										<input class="button round blue image-right ic-add text-upper" type="submit" name="Submit" value="Add">
										(Control + S)
									<td>&nbsp;

									</td>
									<td align="right"><input class="button round red text-upper" type="reset" name="Reset" value="Reset"> </td>
								</tr>
							</table>

						</form>


					</div> <!-- end content-module-main -->


				</div> <!-- end content-module -->



			</div> <!-- end full-width -->

		</div> <!-- end content -->



		<!-- FOOTER -->
		<div id="footer">
			<p>Any Queries email to 0701417887.</p>

		</div> <!-- end footer -->

</body>

</html>