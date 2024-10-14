<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title> Hospital Management System </title>
	
	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">
	
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
	<script>
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
	
	<!-- MAIN CONTENT -->
	<div class="content-module-main cf">
		<div id="maintable">
			<div style="margin-top: -19px; margin-bottom: 21px;">
			</div>
			<a id="addd"  href="javascript:Clickheretoprint()">Print</a>||
			<a id="addd" href="../index.php" style="float: none;">Back</a>
			
			<div class="content" id="content">
				<?php
					$p=$_GET['patient_id'];
					$d=$_GET['date'];
					include('connect.php');

					$result = $db->prepare("SELECT * FROM patient WHERE  patient_id = :p ");
					$result->bindParam(':p', $p);
					$result->execute();
					
					for($i=0; $row = $result->fetch(); $i++){
						?>
    					<br> <br> <br>
						<h1 align="center"> <img src="logo.png" width="150px" height="150px"></h1>
						<h1 align="center">DINO HEALTHCARE SERVICES</h1>
						<h3 align="center"> <i>Jolly Jolly Building, Irungu Road, Mtito Andei, Kibwezi East District<i></h3>
						<h3 align="center">Email: dinohealtcareservices@gmail.com / dinokyalo@gmail.com</h3>
						<h3 align="center"> TELL: 0721322150 / 0700420462</h3>
						<h1 align="center" style="color:#000"><u></u></h1>
						<h2 align="center" style="color:#000">
							NAME: <?php echo $row['name']; ?>&nbsp;&nbsp;&nbsp;&nbsp;
							AGE: <?php echo $row['age']; ?>&nbsp;&nbsp;&nbsp;&nbsp;
							PHONE NUMBER: <?php echo $row['phone']; ?> 
						</h2>
						<h2 align="center" style="color:000">
							LOCATION: <?php echo $row['address']; ?>&nbsp;&nbsp;&nbsp;&nbsp;
							PATIENT ID: <?php echo $row['patient_id']; ?>&nbsp;&nbsp;&nbsp;&nbsp;
							DATE: <?php echo $_GET['date']; ?>
						</h2>
						<?php
					}
				?>

				<h1 align="center" style="color:#000">MEDICAL REPORT</h1>
				<table id="resultTable" data-responsive="table" style="text-align: left;">
					<thead>
						<tr>
        					<th width="5%">###</th>
							<th width="20%">Brief history and physical examination</th>
							<th width="20%">Investigations done</th>
							<th width="20%">Diagnosis </th>
							<th width="25%">Medication</th>
							<th width="15%">Comments</th>
						</tr>
					</thead>
					<tbody>

						<?php
							$p=$_GET['patient_id'];
							$d=$_GET['date'];
							include('connect.php');
							$result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id = :p  ");
							$result->bindParam(':p', $p);
							$result->bindParam(':d', $d);
							$result->execute();
							$count=1;
							for($i=0; $row = $result->fetch(); $i++){
								?>
		  						<tr class="record">
									<td></td>
									<td>
										<b><i>Complains</i></b><br/><?php echo $row['complains'];?><br/>
										<b><i>Case History</i></b><br/><?php echo $row['case_history']; ?><br/>
										<b><i>Comments</i></b><br/><?php echo $row['comment']; ?>
									</td>
									<td>
										<?php echo $row['test1']; ?><br/> <?php echo $row['test2']; ?><br/>
										<?php echo $row['test3']; ?><br/> <?php echo $row['test4']; ?><br/>
										<?php echo $row['test5']; ?><br/> <?php echo $row['test6']; ?><br/>
										<?php echo $row['test7']; ?><br/><?php echo $row['test8']; ?><br/>
										<?php echo $row['service1']; ?><br/><?php echo $row['service2']; ?>
									</td>
									<td>
										<?php echo $row['diagnosis']; ?><br>
										<?php echo $row['diagnosis1']; ?><br>
										<?php echo $row['diagnosis2']; ?>
									</td>
									<td>
										<?php echo $row['medication1']; ?>  &nbsp;&nbsp;<?php echo $row['desc1']; ?><br>
										<?php echo $row['medication2']; ?>&nbsp;&nbsp;<?php echo $row['desc2']; ?><br>
										<?php echo $row['medication3']; ?>&nbsp;&nbsp;<?php echo $row['desc3']; ?><br>
										<?php echo $row['medication4']; ?>&nbsp;&nbsp;<?php echo $row['desc4']; ?><br>
										<?php echo $row['medication5']; ?>&nbsp;&nbsp;<?php echo $row['desc5']; ?><br>
										<?php echo $row['medication6']; ?>&nbsp;&nbsp;<?php echo $row['desc6']; ?><br>
										<?php echo $row['medication7']; ?>&nbsp;&nbsp;<?php echo $row['desc7']; ?><br>
										<?php echo $row['medication8']; ?>&nbsp;&nbsp;<?php echo $row['desc8']; ?><br>
										<?php echo $row['medication9']; ?>&nbsp;&nbsp;<?php echo $row['desc9']; ?><br>
										<?php echo $row['medication10']; ?>&nbsp;&nbsp;<?php echo $row['desc10']; ?>
									</td>
									<td><?php echo $row['comment']; ?></td><br>
								</tr>
								<?php
							}
						?>
					</tbody>
				</table>
				<table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 	<tr style="height:40px">
						<td colspan="5" align="center">
							<strong style="font-size: 15px; text-align:right; color: #222222; border-color:#03F ">
								Doctors Name:		
							</strong>
						</td>
						<td colspan="2" align="center">
							<strong style="font-size: 15px; color: #222222;">
								<?php
									$p=$_GET['patient_id'];
									$d=$_GET['date'];
									include('connect.php');
									$result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id = :p  ");
									$result->bindParam(':p', $p);
									$result->bindParam(':d', $d);
									$result->execute();
									$count=1;
									for($i=0; $row = $result->fetch(); $i++){
										?>
										<i><?php echo $row['doctor_id']; ?></i>
										<?php
									}
								?>
							</strong>
						</td>
                    	<td colspan="5">
							<strong style="font-size: 15px; color: #222222; border-color:#03F">
								Reg No:
							</strong>
						</td>
						<td colspan="2" align="center">
							<strong style="font-size: 15px; color: #222222;">
								<i>A3433</i>&nbsp; &nbsp; &nbsp; &nbsp;
							</strong>
						</td>
                    	<td colspan="3">
							<strong style="font-size: 15px; color: #222222; border-color:#03F">Sign:</strong>
						</td>
						<td colspan="4">
							<strong style="font-size: 15px; color: #222222;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>
						</td>
					</tr>	
				</table>
			</div>
		</div>
	</div>
</body>
</html>