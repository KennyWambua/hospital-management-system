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
	<div id="header-with-tabs">

		<div class="page-full-width cf">

			<ul id="tabs" class="fl">
				<li><a href="line.php">Patient In Line</a><br /></li>
				<li><a href="cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash
						Sale</a><br /></li>
				<li><a href="select_customerc.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash
						Prescription</a><br /></li>
				<li><a href="select_customer.php?id=credit&invoice=<?php echo $finalcode ?>">Insurance
						Prescription</a><br /></li>
				<li><a href="inpatient_orders.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Inpatient
						Drugs</a><br /></li>
				<li><a href="products2.php">Drugs</a><br /></li>
				<li><a href="receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Drugs</a><br /></li>
				<li><a href="consuptionreport.php">Drug Cons Report</a><br /></li>
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
					<li><a
							href="pharmacy/cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Pharmacy</a><br />
					</li>
					<li><a href="lab/lab_file.php?patient_id=0">Lab</a><br /></li>
					<li><a href="reception/collection.php?d1=0&d2=0&session=0">Reception</a><br /></li>
					<li><a
							href="pharmacy/cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Mch</a><br />
					</li>
					<li><a href="nurse/select_patient.php?patient_id=0">Inpatient</a><br /></li>
					<li><a rel="facebox"
							href="accounts/services.php?id=cash&invoice=<?php echo $finalcode ?>">Accounts</a><br />
					</li>
					<li><a rel="facebox"
							href="accounts/services.php?id=cash&invoice=<?php echo $finalcode ?>">Theatre</a><br /></li>
					<li><a rel="facebox"
							href="accounts/services.php?id=cash&invoice=<?php echo $finalcode ?>">CCN</a><br /></li>
					<li><a rel="facebox" href="users.php">Manage Users</a><br /></li>

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

						<h3 class="fl">Pharmacy Management</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>

					</div> <!-- end content-module-heading -->
					<form action="saveproduct2.php" method="post">
						<div id="ac" align="center" style="padding-top: 15px;">
							<b><span>Service Code </span></b><br>
							<input type="text" style="height:25px" class="round default-width-input"
								name="productCode" /><br><br>

							<b><span>Service Name</span></b><br>
							<input type="text" style="height:25px" class="round default-width-input"
								name="serviceName" /><br><br>

							<b><span>Department</span></b><br>
							<input type="text" style="height:25px" class="round default-width-input"
								name="department" /><br><br>

							<b><span>Cash Price</span></b><br>
							<input type="text" style="height:25px" class="round default-width-input"
								name="price" /><br><br>

							<b><span>Credit Price</span></b><br>
							<input type="text" style="height:25px" class="round default-width-input"
								name="creditPrice" /><br><br>

							<input id="btn" type="submit" style="height:35px; width:285px"
								class="button round blue image-right ic-add text-upper" value="Save" />
						</div>
					</form>
</body>

</html>