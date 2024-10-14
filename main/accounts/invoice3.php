<?php require_once('auth.php'); ?>

<?php
	include('connect.php');
	$results = $db->prepare("SELECT * FROM sales order by transaction_id desc limit 1");
	$results->execute();
	for($i=0; $rows = $results->fetch(); $i++) {
		$sdsdd=$rows['transaction_id'];
		if($sdsdd==''){

		}
		$dsdsd=$rows['transaction_id'];
	}
	$finalcode=$dsdsd+1;
?>
<?php
	function formatMoney($number, $fractional=false) {
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

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>POS</title>
	
	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css1/style.css">

	<style type="text/css">
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
			background-color: #FFFFFF;
		}
		*{
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
	<!-- Main content -->
	<div class="content-module-main cf">
		<div id="maintable">
			<div style="margin-top: -19px; margin-bottom: 21px;">
			</div>
			<div class="content" id="content">
				<div>
					<h1 align="center"> <img src="logo.png" width="150px" height="150px"></h1>
					<h1 align="center">DINO HEALTHCARE SERVICES</h1>
					<h4 align="center"> <i>Jolly Jolly Building, Irungu Road, Mtito Andei, Kibwezi East District<i></h4>
					<h4 align="center">Email:dinohealtcareservices@gmail.com / dinokyalo@gmail.com</h4>
					<h4 align="center"> TELL:0721322150 / 0700420462</h4>
				</div>

				<?php
					include('connect.php');
					$d1=$_GET['d1'];
					$d2=$_GET['d2'];
					$e=$_GET['patient_id'];

					$result = $db->prepare("SELECT * FROM invoice WHERE patient_id= :e AND date BETWEEN :a AND :b order by transaction_id desc limit 1 ");
					$result->bindParam(':a', $d1);
					$result->bindParam(':b', $d2);
					$result->bindParam(':e', $e);
					$result->execute();

					$count=1;
					$row = $result->fetch();
					$date= date('d,M Y');	
				?>

				<td align="center">
					<span style="font-size: 20px;color: black">
						<b>  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Invoice No. <?php echo $row['transaction_id']; ?> &nbsp;&nbsp;&nbsp;						
						<td align="center">
							<b>Date : <?php echo $_GET['d2']; ?></b>
						</td></b>
					</span>
				</td> <br>

				<?php
					include('connect.php');
					$d1=$_GET['d1'];
					$d2=$_GET['d2'];
					$e=$_GET['patient_id'];

					$result = $db->prepare("SELECT * FROM patient WHERE patient_id= :e ");
					$result->bindParam(':e', $e);
					$result->execute();

					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
						?>                         
                       	<td align="center">
							<span style="font-size: 15px;color: black">
								<b> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Scheme.</b> <?php echo $row['insurance_id']; ?>&nbsp;&nbsp;&nbsp;
							</span>
						</td>
                        <tr>
                       		<td align="center">
								<span style="font-size: 15px;color: black">
									<b> Patient Name.</b> <?php echo $row['name']; ?>
								</span>
							</td>
                        </tr> <br>
                        <tr>
                       		<td align="center">
								<span style="font-size: 15px;color: black">
									<b> &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Date Of Admission</b> <?php echo $_GET['d1']; ?> &nbsp;&nbsp;&nbsp;<b>Date Of Discharge</b><?php echo $_GET['d2']; ?> 
								</span>
							</td>
						</tr> <br>
					  	<?php
					}
				?>
			</div>

		</div>
		<div class="clearfix"></div>
	</div>
    
	<div style="width: 100%">
    	<table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
			<thead>
        		<B></B>
				<tr>
					<th> ## </th>
					<th> Date </th>
					<th> Particulars </th>
					<th> Qty </th>
					<th> Price </th>
					<th> Amount </th>
				</tr>
			</thead>
			<tbody>
				<!-- Consultation -->
				<?php
					include('connect.php');
					$date1 = new DateTime($_GET['d1']);
					$date2 = new DateTime($_GET['d2']);
					$difference = $date1->diff($date2);
					$x =  (int)$difference->days;
					$e=$_GET['patient_id'];
					$result = $db->prepare("SELECT * FROM patient WHERE patient_id= :e AND bill='UNBILLED'");
					$result->bindParam(':e', $e);
					$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
						<tr class="record">
							<td></td>
							<td><?php echo $row['date']; ?></td>
							<td>Consultation</td>
							<td><?php echo $x; ?></td>
							<td>
								<?php 
									$ppp=$row['fee'];
									echo formatMoney($ppp, true);
								?>
							</td>
							<td>
								<?php
									$dfdf=$row['fee']*$x;
									echo formatMoney($dfdf, true);
								?>
							</td>
						</tr>
						<?php
					}
				?>
				
				<?php
					$e=$_GET['patient_id'];
					$resultas = $db->prepare("SELECT sum(fee) FROM patient WHERE patient_id= :e AND bill='UNBILLED'");
					$resultas->bindParam(':e', $e);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
						$totalConsultationAmount=$rowas['sum(fee)']*$x;
					}
				?>
          
				<!-- Bed Allotment -->
				<?php
					include('connect.php');
					$d1=$_GET['d1'];
					$d2=$_GET['d2'];
					$e=$_GET['patient_id'];
					$bedAllotmentPrice=0;

					$result = $db->prepare("SELECT * FROM bed_allotment WHERE patient_id= :e AND date BETWEEN :a AND :b");
					$result->bindParam(':a', $d1);
					$result->bindParam(':b', $d2);
					$result->bindParam(':e', $e);
					$result->execute();

					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
						<tr class="record">
							<td></td>
							<td><?php echo $row['date']; ?></td>
							<td>Doctors Fee</td>
							<td><?php echo $x; ?></td>
							<td>
								<?php
									$ppp=$row['price'];
									echo formatMoney($ppp, true);
								?>
							</td>
							<td>
								<?php
									$bedAllotmentPrice=$row['price']*$x;
									echo formatMoney($bedAllotmentPrice, true);
								?>
							</td>
						</tr>
						<?php
					}
				?>
		
				<!-- Diagnosis Report -->
				<?php
					include('connect.php');
					$e=$_GET['patient_id'];
					$result = $db->prepare("SELECT * FROM diagnosis_report WHERE patient_id= :e AND bill='UNBILLED'");
					$result->bindParam(':e', $e);
					$result->execute();

					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
						<tr class="record">
							<td></td>
							<td><?php echo $row['date']; ?></td>
							<td><?php echo $row['report_type']; ?></td>
							<td>1</td>
							<td>
								<?php
									$ppp=$row['price'];
									echo formatMoney($ppp, true);
								?>
							</td>
							<td>
								<?php
									$dfdf=$row['price'];
									echo formatMoney($dfdf, true);
								?>
							</td>
						</tr>
						<?php
					}
				?>

				<?php
					$e=$_GET['patient_id'];
					$resultas = $db->prepare("SELECT sum(price) FROM diagnosis_report WHERE patient_id= :e AND bill='UNBILLED'");
					$resultas->bindParam(':e', $e);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
						$totalDiagnosisAmount=$rowas['sum(price)'];
					}
				?>
			
				<!-- Credit Orders -->
				<?php
					include('connect.php');
					$e=$_GET['patient_id'];
					$result = $db->prepare("SELECT * FROM credit_orders WHERE patient_id= :e AND bill='UNBILLED'");
					$result->bindParam(':e', $e);
					$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
						<tr class="record">
							<td></td>
							<td><?php echo $row['date']; ?></td>
							<td><?php echo $row['name']; ?></td>
							<td><?php echo $row['qty']; ?></td>
							<td>
								<?php
									$ppp=$row['price'];
									echo formatMoney($ppp, true);
								?>
							</td>
							<td>
								<?php
									$dfdf=$row['amount'];
									echo formatMoney($dfdf, true);
								?>
							</td>
						</tr>
						<?php
					}
				?>
               
                <?php
					$e=$_GET['patient_id'];
					$totalNursingAmount=0;
					$resultas = $db->prepare("SELECT sum(amount) FROM credit_orders WHERE patient_id= :e AND bill='UNBILLED'");
					$resultas->bindParam(':e', $e);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
						$totalCreditAmount=$rowas['sum(amount)'];
					}
				?>
                    
                <!-- Nursing -->
				<?php
					include('connect.php');
					$e=$_GET['patient_id'];
					$result = $db->prepare("SELECT * FROM nursing WHERE patient_id= :e ");
					$result->bindParam(':e', $e);
					$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
						<tr class="record">
							<td></td>
							<td><?php echo $row['date']; ?></td>
							<td><?php echo $row['nursing_type']; ?></td>
							<td><?php echo $row['qty']; ?></td>
							<td>
								<?php
									$ppp=$row['price'];
									echo formatMoney($ppp, true);
								?>
							</td>
							<td>
								<?php
									$totalNursingAmount=$row['price']*$row['qty'];
									echo formatMoney($totalNursingAmount, true);
								?>
							</td>
						</tr>
				<?php
					}
				?>
				 
				<?php
					include('connect.php');
					$nhif=$_GET['lessnhif'];
					$days=$_GET['days'];
					$count=1;
				?> 
                
    			<table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 	<tr>
						<td colspan="5">
							<strong style="font-size: 15px; color: #222222; border-color:#03F">
								&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;TOTAL::&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
							</strong>
						</td>
						<td colspan="2">
							<strong style="font-size: 15px; color: #222222;">
								Ksh <?php
										$total=$totalConsultationAmount+$totalDiagnosisAmount+$bedAllotmentPrice+$totalCreditAmount+$totalNursingAmount;
										echo formatMoney($total, true);
						
									?>
							</strong>
						</td>
					</tr>
				</table>	
			
        		<table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 	<tr>
						<td colspan="5">
							<strong style="font-size: 15px; color: #222222; border-color:#03F">
								&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;TOTAL AMOUNT CLAIMED:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
							</strong>
						</td>
						<td colspan="2">
							<strong style="font-size: 15px; color: #222222;">
								Ksh <?php
										// $total=(int)$days*$x;
										// echo formatMoney($total, true);
										$totalAmount = $total - (int)$nhif;
										echo formatMoney($totalAmount, true);
									?>
							</strong>
						</td>
					</tr>
				</table>	
			</tbody>
		</table>
	</div>
 	<a class = "btn btn-success btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Print</a>
	<a id="addd" href="../index.php" style="float: none;">Back</a>
	<div class="clearfix"></div>
</body>
</html>