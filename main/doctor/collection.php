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
	<title>Hospital Manegement System</title>
	
	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">
	
	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
	<!-- jQuery & JS files -->
	
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
    <!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Hospital Manegement System</title>
	
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


	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>
	<!-- end top-bar -->
<?php
require_once('auth.php');
?>


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
<!-- posnic 120x90 vertical small -->
<ins class="adsbygoogle"
     style="display:inline-block;width:120px;height:90px"
     data-ad-client="ca-pub-5212135413309920"
     data-ad-slot="3677012951"></ins>
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
					
</div>
<form action="collection.php" method="get">
From :&nbsp;&nbsp; <input type="text" name="d1"  value="<?php echo date('m/d/Y');?>" /> To: <input type="text" name="d2"  value="<?php echo date('m/d/Y');?>" />&nbsp;&nbsp; Shift :&nbsp;&nbsp;<select name="shift" style="width: 120px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM shift where status='Open'");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['shift_id']; ?>"><?php echo $row['shift_id']; ?> - <?php echo $row['shift_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="submit" value="Pre   View"> <br/>
</form>
<br/>
<br/>

<form action="collectionpr.php" method="get">
From :&nbsp;&nbsp; <input type="text" name="d1"  value="<?php echo date('m/d/Y');?>" /> To: <input type="text" name="d2"  value="<?php echo date('m/d/Y');?>" />&nbsp;&nbsp; Shift :&nbsp;&nbsp;<select name="shift" style="width: 120px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM shift where status='Open'");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['shift_id']; ?>"><?php echo $row['shift_id']; ?> - <?php echo $row['shift_name']; ?></option>
	<?php
	}
	?>
</select>
<input type="submit" value="Print View"> <br/>
</form>

</div>
<div class="content" id="content">
<div style="font-weight:bold; text-align:center;font-size:14px;margin-bottom: 15px;">
Collection Report from&nbsp;<?php echo $_GET['d1'] ?>&nbsp;to&nbsp;<?php echo $_GET['d2'] ?>
</div>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			<th width="17%"> Receipt No.</th>
			<th width="8%"> Date </th>
			<th width="20%"> Sales Person</th>
            <th width="20%"> Patient Number</th>
			<th width="15%"> Code No. </th>
            
			<th width="15%"> Amount </th>
			<th width="15%"> Tran Department </th>
            <th width="15%"> Action </th>
          
		</tr>
	</thead>
	<tbody>
		
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
				include('connect.php');
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['shift'];
				$result = $db->prepare("SELECT * FROM salesreport WHERE insurance_id='CASH' AND shift=:s AND date BETWEEN :a AND :b ORDER BY transaction_id asc" );
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				$result->bindParam(':s', $s);
				
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td><?php echo $row['transaction_id']; ?></td>
			<td><?php echo $row['date']; ?></td>
			<td><?php echo $row['cashier']; ?></td>
            <td><?php echo $row['number']; ?></td>
			<td><?php echo $row['invoice_number']; ?></td>
            
			<td><?php
			$dsdsd=$row['amount'];
			echo formatMoney($dsdsd, true);
			?></td>
         
              <td><?php echo $row['transdep']; ?></td>
			<td><a rel="facebox" href="receipt.php?invoice=<?php echo $row['invoice_number']; ?>">Pre-View</a></td>
			</tr>
			<?php
				}
			?>
		
	</tbody>
	
    
</table>
</div>
<div class="clearfix"></div>
</div>
</body>
</html>