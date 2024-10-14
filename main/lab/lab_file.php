<?php
require_once('auth.php');
?>
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
	require_once('auth.php');
	?>

	<?php
	function createRandomPassword()
	{
		$chars = "003232303232023232023456789";
		srand((double) microtime() * 1000000);
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
				<li><a href="labpatients.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Patients In
						Line</a><br /></li>
				<li><a href="select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search
						Patient</a><br /></li>
				<li><a href="inpatientrequest.php">Inpatient Requests</a><br /></li>
				<li><a href="totalreport.php?d1=0&d2=0">Total Lab Vist</a><br /></li>
				<li><a href="labreport.php?d1=0&d2=0&document_type=0">Specific Lab Report</a><br /></li>
				<li><a href="labreport2.php?d1=0&d2=0">General Lab Report</a><br /></li>

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
					<li><a href="labpatients.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Patients In
							Line</a><br /></li>
					<li><a href="select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search
							Patient</a><br /></li>
					<li><a href="inpatientrequest.php">Inpatient Requests</a><br /></li>
					<li><a href="totalreport.php?d1=0&d2=0">Total Lab Vist</a><br /></li>
					<li><a href="labreport.php?d1=0&d2=0&document_type=0">Specific Lab Report</a><br /></li>
					<li><a href="labreport2.php?d1=0&d2=0">General Lab Report</a><br /></li>

				</ul>
				<div style="background: #ffffff">
					<script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<!-- posnic 120x90 vertical small -->
					<ins class="adsbygoogle" style="display:inline-block;width:120px;height:90px"
						data-ad-client="ca-pub-5212135413309920" data-ad-slot="3677012951"></ins>
					<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
					</script>

				</div>
			</div> <!-- end side-menu -->

			<div class="side-content fr">

				<div class="content-module">

					<div class="content-module-heading cf">

						<h3 class="fl">LAB MANAGEMENT</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>

					</div> <!-- end content-module-heading -->

					<form action="saveedittest.php" method="post">
						<div id="ac" align="center">

							<a id="addd" href="select_patient.php?id=0" style="float: none;"><input type="button"
									class="button round blue image-right ic-add text-upper" align="middle"
									value="New Patient" /></a>
							<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />

							<?php
							$p = $_GET['patient_id'];
							include('connect.php');


							$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p ");
							$result->bindParam(':p', $p);



							$result->execute();
							for ($i = 0; $row = $result->fetch(); $i++) {
								?>
								<h2>LAB TEST REQUIREMENTS FOR: <?php echo $row['name']; ?></h2><br />
								AGE: <?php echo $row['age']; ?></h2><br />
								SCHEME: <?php echo $row['insurance_id']; ?><br />
								<?php
							}
							?>
							<table id="resultTable" data-responsive="table" style="text-align: left;">
								<thead>
									<tr>
										<th width="10%">Patient Id</th>
										<th width="10%">Date</th>
										<th width="10%">Test 1 </th>
										<th width="10%">Test 2 </th>
										<th width="10%">Test 3 </th>
										<th width="10%">Test 4 </th>
										<th width="10%">Test 5 </th>
										<th width="10%">Test 6 </th>
										<th width="10%">Test 7 </th>
										<th width="10%">Test 8 </th>
										<th width="15%">Doctor</th>
										<th width="10%">Action</th>


									</tr>
								</thead>
								<tbody>

									<?php

									$p = $_GET['patient_id'];
									include('connect.php');


									$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p order by prescription_id desc ");
									$result->bindParam(':p', $p);


									$result->execute();
									$count = 1;
									for ($i = 0; $row = $result->fetch(); $i++) {
										?>
										<tr class="record">

											<td><?php echo $row['patient_id']; ?></td>
											<td><?php echo $row['date']; ?></td>
											<td><?php echo $row['test1']; ?></td>
											<td><?php echo $row['test2']; ?></td>
											<td><?php echo $row['test3']; ?></td>
											<td><?php echo $row['test4']; ?></td>
											<td><?php echo $row['test5']; ?></td>
											<td><?php echo $row['test6']; ?></td>
											<td><?php echo $row['test7']; ?></td>
											<td><?php echo $row['test8']; ?></td>
											<td><?php echo $row['doctor_id']; ?></td>


											<td><a rel="facebox"
													href="add_result.php?prescription_id=<?php echo $row['prescription_id']; ?>&insurance_id=<?php echo $row['insurance_id']; ?>&patient_id=<?php echo $row['patient_id']; ?>&patient_name=<?php echo $row['patient_name']; ?>&cashier=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>"><input
														type="button"
														class="button round blue image-right ic-add text-upper" align="left"
														value="Enter Results" /></a>
												<div class="clearfix">
											</td>
										</tr>
										<?php
									}
									?>

								</tbody>


								</tbody>

							</table>





						</div>
					</form>

</body>

</html>
<!DOCTYPE html
	PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Untitled Document</title>
</head>

<body>
</body>

</html>