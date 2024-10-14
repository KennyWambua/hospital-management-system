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
</head>
<body>

	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>
    <?php
	require_once('auth.php');
?>

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
    <div id="header-with-tabs">
		
		<div class="page-full-width cf">
	
			<ul id="tabs" class="fl">
<li><a href="select_customerc.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY">Pharmacy payment</a><br/></li>
<li><a href="select_customerl.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=LAB">Lab payment</a><br/></li>
<li><a href="select_customer2.php?id=cash&invoice=<?php echo $finalcode ?>">Other dep payment</a><br/></li>
<li><a href="select_collection.php">Daily Insurance</a><br/></li>
<li><a href="periodreport.php">View/Print Report</a><br/></li>
<li><a href="expenses.php">Expenses</a><br/></li>
<li><a href="collection.php?d1=0&d2=0&shift=0">Collection Report</a><br/></li>
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

<li><a href="select_customerc.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY">Pharmacy payment</a><br/></li>
<li><a href="select_customerl.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=LAB">Lab payment</a><br/></li>
<li><a href="select_customer2.php?id=cash&invoice=<?php echo $finalcode ?>">Other dep payment</a><br/></li>
<li><a href="select_collection.php">Daily Insurance</a><br/></li>
<li><a href="periodreport.php">View/Print Report</a><br/></li>
<li><a href="collection.php?d1=0&d2=0&shift=0">Collection Report</a><br/></li>
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
					
						<h3 class="fl">Pharmacy module</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					
					</div> <!-- end content-module-heading -->
	<!-- end top-bar -->
    <br/><br/>
<form action="savesales4.php" method="post">
<div id="ac" align="center">
<input type="hidden" name="date" value="<?php echo date("Y-m-d"); ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="cost" value="<?php echo $_GET['cost']; ?>" />
<input type="hidden" name="number" value="<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p");
	$result->bindParam(':p', $p);

		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<?php echo $row['name']; ?> 
	<?php
	}
	?>" />
<input type="text" name="amount" value="<?php echo $_GET['total']; ?>" />
<input type="hidden" name="transdep" value="<?php echo $_GET['transdep']; ?>" />
<input type="hidden" name="insurance_id" value="CASH"/>

<input type="hidden" name="cashier" value="<?php echo $_GET['cashier']; ?>" /><br><br>
Select Your Shift 
<select name="shift" style="width: 120px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM shift where status='Open' order by shift_id desc");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['shift_id']; ?>"><?php echo $row['shift_id']; ?> - <?php echo $row['shift_name']; ?></option>
	<?php
	}
	?>
</select>



</select><br/><br/><br/>
Mode of Payment
<select  name="session">
<option>Cash</option>
<option>M-Pesa</option>


</select><br/><br/><br/>
     
      <div class="suggestionsBox" id="suggestions" style="display: none;">
        <div class="suggestionList" id="suggestionsList"> &nbsp; </div>
      </div>





<br>
<input id="btn" type="submit" value="save" class="button round blue image-right ic-add text-upper" style="width: 268px;" />
</div>
</form>
</body>
</html>