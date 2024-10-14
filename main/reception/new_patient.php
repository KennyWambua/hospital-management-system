<?php
	function createRandomPassword() {
		$chars = "003232303232023232023456789";
		srand((double)microtime()*1000000);
		$i = 0;
		$pass = '' ;
		while ($i <= 5) {
			$num = rand() % 33;
			$tmp = substr($chars, $num, 1);
			$pass = $pass . $tmp;
			$i++;
		}
		return $pass;
	}
	$finalcode='RS-'.createRandomPassword();
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title> Hospital Management System</title>
	
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
	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>

	<!-- HEADER -->
	<div id="header-with-tabs">
		<div class="page-full-width cf">
			<ul id="tabs" class="fl">
				<li><a href="search_patient.php">Search Patient</a><br/></li>
				<li><a href="new_patient.php">Add New Patient</a><br/></li>
				<li><a href="select_patient.php">Add Revisit</a><br/></li>
				<li><a href="patientss.php">View All Patients</a><br/></li>
				<li><a href="patientsreport.php?d1=0&d2=0">New visit Report</a><br/></li>
				<li><a href="patientsreportr.php?d1=0&d2=0">Revisit Report</a><br/></li>
				<li><a href="diagnosisreport.php">Diagnosis Report</a></li>
			</ul> 
		</div>
	</div>	
	
	<!-- MAIN CONTENT -->
	<div id="content">		
		<div class="page-full-width cf">

			<!-- SIDE MENU -->
			<div class="side-menu fl">				
				<h3> Patient Management </h3>
				<ul>
					<li><a href="search_patient.php">Search Patient</a><br/></li>
					<li><a href="new_patient.php">Add New Patient</a><br/></li>
					<li><a href="select_patient.php">Add Revisit</a><br/></li>
					<li><a href="patientss.php">View All Patients</a><br/></li>
					<li><a href="patientsreport.php?d1=0&d2=0">New visit Report</a><br/></li>
					<li><a href="patientsreportr.php?d1=0&d2=0">Revisit Report</a><br/></li>
					<li><a href="diagnosisreport.php">Diagnosis Report</a></li>
				</ul>
				<div style="background: #ffffff">
					<script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
					<script>
						(adsbygoogle = window.adsbygoogle || []).push({});
					</script>
                </div>                              
			</div>

			<!-- SIDE CONTENT -->
			<div class="side-content fr">
				
				<!-- CONTENT MODULE -->
				<div class="content-module">
					
					<!-- CONTENT MODULE HEADING -->
					<div class="content-module-heading cf">					
						<h3 class="fl"> Reception Department</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					</div>

					<!-- CONTENT MODULE MAIN -->					
					<div class="content-module-main cf">				
						<form name="form1" method="post" id="form1" action="savenewpatient.php">
								<p><strong>Add Patient Details </strong></p>
                  				<table class="form"  style="border:0" cellspacing="0" cellpadding="0">
									<tr>
										<td><span class="man">*</span>Name:</td>
										<td>
											<input name="name" placeholder="ENTER YOUR FULL NAME" type="text" 
											id="name" maxlength="200"  style="height:25px" class="round default-width-input" value="" />
										</td>
										<td>Address/Location</td>
										<td>
											<input name="address" placeholder="ENTER LOCATION"type="text" id="buyingrate"
											style="height:25px" maxlength="20"   class="round default-width-input" value="" />
										</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>Phone Number</td>
										<td>
											<input name="phone" placeholder="ENTER PHONE NUMBER"type="text" id="buyingrate" maxlength="20" 
											style="height:25px"  class="round default-width-input" value="" />
										</td>
										<td>Insurance </td>
										<td>
											<select name="insurance_id"  maxlength="150"  style="height:32px; width:250px"  class="round default-width-input">
												<option>CASH</option>
												<option>ENDU AFYA</option>
												<option>LINDA MAMA</option>
												<option>KENYA PIPELINE COMPANY</option>
												<option>NHIF NATIONAL SCHEME(UNIVERSAL)</option>
												<option>FFS</option>
												<option>NPS</option>
												<option>AON</option>
												<option>CIC</option>
												<option>KWS</option>
												<option>BRITAM-KINGA YA WAKULIMA</option>
												<option>BRITAM-AFYA TELE</option>
											</select>
										</td>                    
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>Member Number</td>
										<td>
											<input name="in_number" placeholder="ENTER MEMBER NUMBER"type="text" id="buyingrate"  style="height:25px" maxlength="20"
											class="round default-width-input" value="" />
										</td>
										<td>Sex </td>
										<td>
											<select name="sex"  maxlength="150"  style="height:32px; width:250px"  class="round default-width-input">
												<option>Male</option>
												<option>Female</option>
											</select>
										</td>                    
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>                   
									<tr>
										<td>Copay</td>
										<td>
											<input name="copay" placeholder="ENTER CO PAY"type="text" id="buyingrate" maxlength="20"  style="height:25px"  
											class="round default-width-input" value="" />
										</td>
										<td> Discount </td>
										<td>
											<input name="discount" placeholder="ENTER DISCOUNT"type="text" id="buyingrate" maxlength="20"  style="height:25px"  
											class="round default-width-input" value="" />
										</td>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>Age</td>
										<td>
											<input name="age" placeholder="ENTER AGE"type="text" id="buyingrate" maxlength="20"  style="height:25px"  
											class="round default-width-input" value="" />
										</td>
										<td> Consultation fee</td>
										<td>
											<input name="fee" placeholder="ENTER FEE"type="text" id="buyingrate" maxlength="20"  style="height:25px"  
											class="round default-width-input" value="" />
										</td>
									</tr> 
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>            
									<tr>
										<td>&nbsp;</td>
										<td>
											<input  class="button round blue image-right ic-add text-upper" type="submit" name="Submit" value="Add">
											(Control + S)
										</td>
										<td>&nbsp; </td>  
										<td style="align:right;">
											<input class="button round red text-upper" type="reset" name="Reset" value="Reset"> 
										</td>
									</tr>
                				</table>
                		</form>
					</div>
				</div> 
			</div>
		</div>	
	</div>

	<!-- FOOTER -->
	<div id="footer">

	</div> 
</body>
</html>