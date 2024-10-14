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

					<div class="content" id="content">
						<div style="font-weight:bold; text-align:center;font-size:14px;margin-bottom: 15px;">

						</div>
						<table id="resultTable" data-responsive="table" style="text-align: left;">
							<thead>
								<tr>
									<th width="10%"> Patient No </th>
									<th width="30%"> Patient Name </th>
									<th width="35%"> Insurance </th>
									<th width="35%"> Department </th>
									<th width="15%"> Date/Time </th>
									<th width="15%"> Action </th>
								</tr>
							</thead>
							<tbody>

								<?php
								include('connect.php');
								$a = 'ACTIVE';
								$b = 'LAB';
								$result = $db->prepare("SELECT * FROM quee WHERE  status=:a AND department=:b ORDER by time DESC");
								$result->bindParam(':a', $a);
								$result->bindParam(':b', $b);
								$result->execute();
								for ($i = 0; $row = $result->fetch(); $i++) {
									?>
									<tr class="record">
										<td><?php echo $row['patient_id']; ?></td>
										<td><?php echo $row['name']; ?></td>
										<td><?php echo $row['insurance_id']; ?></td>
										<td><?php echo $row['department']; ?></td>
										<td><?php echo $row['time']; ?></td>
										<td><a rel="facebox"
												href="lab_file.php?patient_id=<?php echo $row['patient_id']; ?>"><input
													type="button" class="button round blue image-right ic-add text-upper"
													align="left" value="Attend " /></a>
									</tr>
									<?php
								}
								?>


								</th>
								</tr>
								</thead>
						</table>
					</div>
					<div class="clearfix"></div>
				</div>
</body>

</html>