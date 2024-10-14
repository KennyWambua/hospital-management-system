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
	<title>Hospital Manegment System</title>
	
	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">
	
	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
.style1 {color: #000000}
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
function Clickheretoprint()
{ 
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
	<!-- end top-bar -->
	
	
	
	<!-- HEADER -->
	<div id="header-with-tabs">
		
		<div class="page-full-width cf">
	
			<ul id="tabs" class="fl">
				<li><a href="services.php?id=cash&invoice=<?php echo $finalcode ?>">Patient payment</a><br/></li>
<li><a href="select_customerc.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY">Pharmacy payment</a><br/></li>
<li><a href="select_customerl.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=LAB">Lab payment</a><br/></li>
<li><a href="select_customer2.php?id=cash&invoice=<?php echo $finalcode ?>">Other dep payment</a><br/></li>
<li><a href="select_collection.php">Daily Insurance</a><br/></li>
<li><a href="periodreport.php">View/Print Report</a><br/></li>
<li><a href="collection.php?d1=0&d2=0&session=0">Collection Report</a><br/></li>
<li><a href="invoiceing.php?d1=0&d2=0&patient_id=0&nhif=0">Create Invoice</a><br/></li>
<li><a href="viewinvoices.php?d1=0&d2=0">View Invoices</a><br/></li>
<li><a href="products1.php">Order List</a><br/></li>
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
					<li><a href="services.php?id=cash&invoice=<?php echo $finalcode ?>">Patient payment</a><br/></li>
<li><a href="select_customerc.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY">Pharmacy payment</a><br/></li>
<li><a href="select_customerl.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=LAB">Lab payment</a><br/></li>
<li><a href="select_customer2.php?id=cash&invoice=<?php echo $finalcode ?>">Other dep payment</a><br/></li>
<li><a href="select_collection.php">Daily Insurance</a><br/></li>
<li><a href="periodreport.php">View/Print Report</a><br/></li>
<li><a href="collection.php?d1=0&d2=0&session=0">Collection Report</a><br/></li>
<li><a href="invoiceing.php?d1=0&d2=0&patient_id=0&nhif=0">Create Invoice</a><br/></li>
<li><a href="viewinvoices.php?d1=0&d2=0">View Invoices</a><br/></li>
<li><a href="products1.php">Order List</a><br/></li>
                    
                    
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
					
						<h3 class="fl">Reception Department</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					
					</div> <!-- end content-module-heading -->
					
						<div class="content-module-main cf">
				
						<div class="content-module-main cf">
				
							
	
				
				<form name="form1" method="post" id="form1" action="savecollection.php">
                  <input type="hidden" name="scheme" value="<?php echo $_GET['insurance_id']; ?>" />
                  <p><strong>Add Daily Scheme Bill</strong></p>
                  <table class="form"  border="0" cellspacing="0" cellpadding="0">
                    <tr>
                    <tr>
                      <td>RECORDS:</td>
                      <td><input name="records"  type="text" id="records" maxlength="200"  style="height:25px" class="round default-width-input" value="<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['insurance_id'];
				include('connect.php');
				
				$results = $db->prepare("SELECT sum(fee) FROM patient WHERE insurance_id=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
				$results->bindParam(':s', $s);
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd1=$rows['sum(fee)'];
				echo $dsdsd1;
				}
				?>" /></td>
                  </tr>
                  <br/>
                    <tr>
                    <tr>
                      <td>LAB</td>
                      <td><input name="lab" type="text"  style="height:25px"  class="round default-width-input" 
					  value="<?php
                      $d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['insurance_id'];
				include('connect.php');
				
				$results = $db->prepare("SELECT sum(price) FROM diagnosis_report
 WHERE insurance_id=:s  AND department1='LAB' AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
				$results->bindParam(':s', $s);
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd2=$rows['sum(price)'];
				echo $dsdsd2;
				}
				?>" /></td>
                      </tr>
                     <tr>
                     <tr>
                      <td>PHARMACY:</td>
                      <td><input name="pharmacy"  type="text"  style="height:25px " class="round default-width-input" value="<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['insurance_id'];
				include('connect.php');
				
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE scheme=:s  AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
				$results->bindParam(':s', $s);
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd3=$rows['sum(amount)'];
				echo $dsdsd3;
				}
				?>" /></td>
                  </tr>
                     <tr>
                     <tr>
                      <td><span class="man"></span>X-RAY:</td>
                      <td><input name="x_ray"  type="text" id="x_ray" maxlength="200"  style="height:25px" class="round default-width-input" value="<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['insurance_id'];
				include('connect.php');
				
				$results = $db->prepare("SELECT sum(price) FROM diagnosis_report WHERE insurance_id=:s AND department1='X-RAY' AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
				$results->bindParam(':s', $s);
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd4=$rows['sum(price)'];
				echo $dsdsd4;
				}
				?>" /></td>
                  </tr>
                  <tr>
                     <tr>
                      <td><span class="man"></span>PHYSIOTHERAPY:</td>
                      <td><input name="physio"  type="text" id="physio" maxlength="200"  style="height:25px" class="round default-width-input" value="<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['insurance_id'];
				include('connect.php');
				
				$results = $db->prepare("SELECT sum(price) FROM diagnosis_report WHERE insurance_id=:s AND department1='PHYSIOTHERAPY' AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
				$results->bindParam(':s', $s);
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd4=$rows['sum(price)'];
				echo $dsdsd4;
				}
				?>" /></td>
                  </tr>
                     <tr><tr>
                      <td><span class="man"></span>ORTHOPEDIC:</td>
                      <td><input name="orthopedic"  type="text" id="orthopedic" maxlength="200"  style="height:25px" class="round default-width-input" value="<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['insurance_id'];
				include('connect.php');
				
				$results = $db->prepare("SELECT sum(price) FROM diagnosis_report WHERE insurance_id=:s AND department1='ORTHOPEDIC' AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
				$results->bindParam(':s', $s);
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd5=$rows['sum(price)'];
				echo $dsdsd5;
				}
				?>" /></td>
                  </tr>
                     <tr>
                     <tr>
                      <td><span class="man"></span>THEATRE</td>
                      <td><input name="theatre"  type="text" id="theatre" maxlength="200"  style="height:25px" class="round default-width-input" value="<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['insurance_id'];
				include('connect.php');
				
				$results = $db->prepare("SELECT sum(price) FROM diagnosis_report WHERE insurance_id=:s AND department1='THEATRE' AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
				$results->bindParam(':s', $s);
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd6=$rows['sum(price)'];
				echo $dsdsd6;
				}
				?>" /></td>
                  </tr>
                     <tr>
                     <tr>
                      <td><span class="man"></span>INPATIENT:</td>
                      <td><input name="inpatient"  type="text" id="inpatient" maxlength="200"  style="height:25px" class="round default-width-input" value="<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['insurance_id'];
				include('connect.php');
				
				$results = $db->prepare("SELECT sum(price) FROM bed_allotment WHERE insurance_id=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
				$results->bindParam(':s', $s);
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd7=$rows['sum(price)'];
				echo $dsdsd7;
				}
				?>" /></td>
                  </tr>
                   
                    <tr>
                       <tr>
                      <td><span class="man"></span>DENTAL:</td>
                      <td><input name="dental" type="text" id="dental" maxlength="200"  style="height:25px" class="round default-width-input" value="<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['insurance_id'];
				include('connect.php');
				
				$results = $db->prepare("SELECT sum(price) FROM diagnosis_report WHERE insurance_id=:s AND department1='DENTAL' AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
				$results->bindParam(':s', $s);
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd8=$rows['sum(price)'];
				echo $dsdsd8;
				}
				?>" /></td>
                  </tr>
                  <input name="total" type="hidden" id="total" maxlength="200"  style="height:25px" class="round default-width-input" value="<?php
				
			
				$total=$dsdsd1+$dsdsd2+$dsdsd3+$dsdsd4+$dsdsd5+$dsdsd6+$dsdsd7+$dsdsd8;
				echo $total;
				
				?>" /></td>
                    
                      <td>&nbsp;
					 
					  </td>
                     
                      <td>
                        <input  class="button round blue image-right ic-add text-upper" type="submit" name="Submit" value="SAVE">
						(Control + S)
					 <td>&nbsp;
					 
					  </td>  
					  
                    </tr></tr>
                  </table>
                </form>
						
				
					</div> <!-- end content-module-main -->
							
				
				</div> <!-- end content-module -->
				
				
		
		</div> <!-- end full-width -->
			
	</div> <!-- end content -->
	
	
	
	<!-- FOOTER -->
	<div id="footer">
		
	
	</div> <!-- end footer -->

</body>
</html>