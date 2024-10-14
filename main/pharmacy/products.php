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

	<?php
	function createRandomPassword()
	{
		$chars = "003232303232023232023456789";
		srand((double) microtime() * 1000000);
		$i = 0;
		$pass = '';
		while ($i <= 5) {
			$num = random_int(0, 32);
			$tmp = substr($chars, $num, 1);
			$pass .= $tmp;
			$i++;
		}
		return $pass;
	}
	$finalcode = 'RS-' . createRandomPassword();
	?>
	<?php
	function formatMoney($number, $fractional = false)
	{
		if ($fractional) {
			$number = sprintf('%.2f', $number);
		}
		while (true) {
			$replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
			if ($replaced != $number) {
				$number = $replaced;
			} else {
				break;
			}
		}
		return $number;
	}
	?>
</head>

<body>

	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>
	<!-- end top-bar -->

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
				<li><a href="selectreceipt.php">Receipt Preview</a><br /></li>
				<li><a
						href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
						Request</a><br /></li>
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
					<li><a href="drugsconsuption.php?d1=0&d2=0">Departmnt Report</a><br /></li>
					<li><a href="consuptionreport.php">Drug Cons Report</a><br /></li>
					<li><a href="selectreceipt.php">Receipt Preview</a><br /></li>
					<li><a
							href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
							Request</a><br /></li>
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

						<h3 class="fl">PHARMACY MODULE</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>

					</div> <!-- end content-module-heading -->
					<div class="two-thirds1 column">
						<div class="thewraper">
							<div id="formdesign">
								</td>
								</tr>
							</div>
							<h2 align="right"><a rel="facebox" id="addd" href="addproduct2.php">Add Product</a></h2>
							<h3 align="left"><a id="addd" href="index.php" style="float: none;">Back</a></h3>
							<table id="resultTable" data-responsive="table">
								<thead>
									<tr>
										<th> Product Id </th>
										<th> Name </th>
										<th> Cost </th>
										<th> Disc Cost </th>
										<th> Cash Price </th>
										<th> Kenya Power Prices </th>
										<th> Reorder </th>
										<th> Supplier </th>
										<th> Qty </th>
										<th> Action </th>
									</tr>
								</thead>
								<tbody>

									<?php
									include('connect.php');
									$result = $db->prepare("SELECT * FROM products ORDER BY product_name asc");
									$result->execute();
									$date = date('Y-m-d');
									for ($i = 0; $row = $result->fetch(); $i++) {
										?>
										<tr class="record">
											<td><?php echo $row['product_id']; ?></td>
											<td><?php echo $row['product_name']; ?></td>
											<td><?php
											$pcost = $row['cost'];
											echo formatMoney($pcost, true);
											?></td>


											<td><?php
											$pprice = $row['price'];
											echo formatMoney($pprice, true);
											?></td>
											<td><?php
											$pprice = $row['c_price'];
											echo formatMoney($pprice, true);
											?></td>

											<td class="text-center">
												<?php if ($row['qty'] <= $row['level'])
													echo "<span class='badge bg-red'><i class='glyphicon glyphicon-refresh'></i>Reorder</span>"; ?>
											</td>

											<td><?php echo $row['qty']; ?></td>


											<td><a rel="facebox"
													href="editproduct.php?id=<?php echo $row['product_id']; ?>"> Edit </a>
												|<a href="#" id="<?php echo $row['product_id']; ?>" class="delbutton"
													title="Click to Delete the product"><button class="btn btn-danger"><i
															class="icon-trash"></i></button></a></td>
											</td>
										</tr>
										<?php
									}
									?>

								</tbody>
							</table>
							<div class="clearfix"></div>
						</div>
						<script src="js/jquery.js"></script>
						<script type="text/javascript">
							$(function () {


								$(".delbutton").click(function () {

									//Save the link in a variable called element
									var element = $(this);

									//Find the id of the link that was clicked
									var del_id = element.attr("id");

									//Built a url to send
									var info = 'id=' + del_id;
									if (confirm("Sure you want to delete this update? There is NO undo!")) {

										$.ajax({
											type: "GET",
											url: "deleteproduct.php",
											data: info,
											success: function () {

											}
										});
										$(this).parents(".record").animate({
											backgroundColor: "#fbc7c7"
										}, "fast")
											.animate({
												opacity: "hide"
											}, "slow");

									}

									return false;

								});

							});
						</script>
</body>

</html>