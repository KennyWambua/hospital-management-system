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
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- jQuery & JS files -->
	<?php include_once("tpl/common_js.php"); ?>
	<script src="js/script.js"></script>

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



					<?php
					$p = $_GET['patient_id'];
					include('connect.php');


					$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p ");
					$result->bindParam(':p', $p);



					$result->execute();
					for ($i = 0; $row = $result->fetch(); $i++) {
					?>
						<h1 align="center" style="color:#F00">PRESCRIPTION FOR: <?php echo $row['name']; ?></h1>
					<?php
					}
					?>


					<div class="clearfix"></div>
				</div>
				<table id="resultTable" data-responsive="table" style="text-align: left;">
					<thead>
						<tr>
							<th width="10%">Patient Id</th>
							<th width="30%">Name</th>
							<th width="15%">Admission Date</th>


							<th width="15%">Discharge Date</th>
							<th width="15%">Diagnosis</th>
							<th width="15%">Doctor</th>
							<th width="35%">Action</th>

						</tr>
					</thead>
					<tbody>

						<?php

						$p = $_GET['patient_id'];
						include('connect.php');


						$result = $db->prepare("SELECT * FROM bed_allotment WHERE patient_id = :p order by bed_allotment_id desc ");
						$result->bindParam(':p', $p);


						$result->execute();
						$count = 1;
						for ($i = 0; $row = $result->fetch(); $i++) {
						?>
							<tr class="record">

								<td><?php echo $row['patient_id']; ?></td>
								<td><?php echo $row['name']; ?></td>
								<td><?php echo $row['date']; ?></td>
								<td><?php echo $row['dis_date']; ?></td>
								<td><?php echo $row['diagnosis']; ?></td>
								<td><?php echo $row['cashier']; ?></td>





								<td><a rel="facebox" href="dischargeinfo.php?patient_id=<?php echo $row['patient_id']; ?>&bed_allotment_id=<?php echo $row['bed_allotment_id']; ?>&cashier=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>"><input type="button" align="left" class="button round blue image-right ic-add text-upper" value="Discharge" /></a>
									<div class="clearfix"></div>
			</div>
			</td>
			</tr>
		<?php
						}
		?>

		</tbody>


		</tbody>
		</table><br>


</body>

</html>