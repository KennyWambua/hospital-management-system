<?php
	require_once('auth.php');
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
	<?php include_once("tpl/common_js.php"); ?>
	<script src="js/script.js"></script>  
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
	<!-- end top-bar -->
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
<li><a href="line.php">Patient In Line</a><br/></li>
<li><a href="cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash Sale</a><br/></li>
<li><a href="select_customerc.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash Prescription</a><br/></li>
<li><a href="select_customer.php?id=credit&invoice=<?php echo $finalcode ?>">Insurance Prescription</a><br/></li>
<li><a href="inpatient_orders.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Inpatient Drugs</a><br/></li>
<li><a href="products2.php">Drugs</a><br/></li>
<li><a href="receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Drugs</a><br/></li>
<li><a href="consuptionreport.php">Drug Cons Report</a><br/></li>
<li><a href="selectreceipt.php">Receipt Preview</a><br/></li>
<li><a href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY&user=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Store Request</a><br/></li>
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
<li><a href="line.php">Patient In Line</a><br/></li>
<li><a href="cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash Sale</a><br/></li>
<li><a href="select_customerc.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash Prescription</a><br/></li>
<li><a href="select_customer.php?id=credit&invoice=<?php echo $finalcode ?>">Insurance Prescription</a><br/></li>
<li><a href="inpatient_orders.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Inpatient Drugs</a><br/></li>
<li><a href="products2.php">Drugs</a><br/></li>
<li><a href="receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Drugs</a><br/></li>
<li><a href="consuptionreport.php">Drug Cons Report</a><br/></li>
<li><a href="selectreceipt.php">Receipt Preview</a><br/></li>
<li><a href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY&user=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Store Request</a><br/></li>
                    
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
					
						<h3 class="fl">PHARMACY MODULE</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					
					</div> <!-- end content-module-heading -->
<body>

<div id="maintable" align="center"><div style="margin-top: -19px; margin-bottom: 21px;">
<a id="addd" href="../index.php" style="float: none;">Back</a>
</div>

<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p");
	$result->bindParam(':p', $p);

		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<h3>ENTER MEDICATION FOR: <?php echo $row['name']; ?> <br/>SCHEME :<?php echo $row['insurance_id']; ?><br/></h3>
	<?php
	}
	?>


<form action="pharmacyin.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />
<input type="hidden" name="id_no" value="<?php echo $_GET['id']; ?>" />
<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	$d=$_GET['id'];
	$result = $db->prepare("SELECT * FROM nurse_orders WHERE patient_id = :p AND prescription_id = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication1']; ?>"><?php echo $row['medication1']; ?>  <br/></option>
	
</select>
<input type="text" name="qty" value="<?php echo $row['desc1']; ?>" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<?php
	}
	?>
<input type="hidden" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacyin.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 

	$result = $db->prepare("SELECT * FROM nurse_orders WHERE patient_id = :p AND prescription_id = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication2']; ?>"><?php echo $row['medication2']; ?>  </option>
	
</select>
<input type="text" name="qty" value="<?php echo $row['desc2']; ?>" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<?php
	}
	?>
<input type="hidden" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacyin.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM nurse_orders WHERE patient_id = :p AND prescription_id = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication3']; ?>"><?php echo $row['medication3']; ?> </option>
	
</select>
<input type="text" name="qty" value=" <?php echo $row['desc3']; ?>" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<?php
	}
	?>
<input type="hidden" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacyin.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM nurse_orders WHERE patient_id = :p AND prescription_id = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication4']; ?>"><?php echo $row['medication4']; ?>  </option>
	
</select>
<input type="text" name="qty" value="<?php echo $row['desc4']; ?>" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<?php
	}
	?>
<input type="hidden" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacyin.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 

	$result = $db->prepare("SELECT * FROM nurse_orders WHERE patient_id = :p AND prescription_id = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication5']; ?>"><?php echo $row['medication5']; ?> </option>
	
</select>
<input type="text" name="qty" value="<?php echo $row['desc5']; ?>" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" /><?php
	}
	?>
<input type="hidden" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacyin.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM nurse_orders WHERE patient_id = :p AND prescription_id = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication6']; ?>"><?php echo $row['medication6']; ?>  </option>
	
</select>
<input type="text" name="qty" value="<?php echo $row['desc6']; ?>" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<?php
	}
	?>
<input type="hidden" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacyin.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM nurse_orders WHERE patient_id = :p AND prescription_id = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication7']; ?>"><?php echo $row['medication7']; ?>  </option>
	
</select>
<input type="text" name="qty" value="<?php echo $row['desc7']; ?>" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<?php
	}
	?>
<input type="hidden" name="discount" value="0" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacyin.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	$result = $db->prepare("SELECT * FROM nurse_orders WHERE patient_id = :p AND prescription_id = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication8']; ?>"><?php echo $row['medication8']; ?>  </option>
	
</select>
<input type="text" name="qty" value="<?php echo $row['desc8']; ?>" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<?php
	}
	?>
<input type="hidden" name="discount" value="0" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacyin.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM nurse_orders WHERE patient_id = :p AND prescription_id = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication9']; ?>"><?php echo $row['medication9']; ?> </option>
	
</select>
<input type="text" name="qty" value=" <?php echo $row['desc9']; ?>" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<?php
	}
	?>
<input type="hidden" name="discount" value="0" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacyin.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM nurse_orders WHERE patient_id = :p AND prescription_id = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication10']; ?>"><?php echo $row['medication10']; ?> </option>
	
</select>
<input type="text" name="qty" value=" <?php echo $row['desc10']; ?>" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<?php
	}
	?>
<input type="hidden" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacyin.php" method="post" >

<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	include('connect.php');
	$result = $db->prepare("SELECT * FROM products");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="qty" value="<?php echo $row['desc10']; ?>" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="hidden" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>


<table id="resultTable" data-responsive="table">
	<thead>
		<tr>
			<th> No</th>
			<th> Product Name </th>
			<th> Qty </th>
            
			<th> Price </th>
			<th> Discount </th>
			<th> Amount </th>
          
			<th> Action </th>
		</tr>
	</thead>
	<tbody>
		
			<?php
				$id=$_GET['invoice'];
				include('connect.php');
				$result = $db->prepare("SELECT * FROM credit_orders WHERE invoice= :userid");
				$result->bindParam(':userid', $id);
				$result->execute();
					$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td><?php echo $count++;?></td>
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
			$ddd=$row['discount'];
			echo formatMoney($ddd, true);
			?>
			</td>
			<td>
			<?php
			$dfdf=$row['amount'];
			echo formatMoney($dfdf, true);
			?>
			</td>
             
			<td><a rel="facebox" href="editprice.php?invoice=<?php echo $row['invoice']; ?>&qty=<?php echo $row['qty']; ?>&patient_id=<?php echo $_GET['patient_id']?>&invoice=<?php echo $_GET['invoice']?>">  </a> |<a href="deletedrugs.php?id=<?php echo $row['transaction_id']; ?>&invoice=<?php echo $_GET['invoice']; ?>&patient_id=<?php echo $_GET['patient_id']?>&qty=<?php echo $row['qty'];?>&code=<?php echo $row['product'];?>"> Delete </a></td>
			</tr>
			<?php
				}
			?>
			<tr>
				<td colspan="5"><strong style="font-size: 12px; color: #222222;">Total:</strong></td>
				<td colspan="5"><strong style="font-size: 12px; color: #222222;">
               
				<?php
				
				$sdsd=$_GET['invoice'];
				$resultas = $db->prepare("SELECT sum(amount) FROM credit_orders WHERE invoice= :a");
				$resultas->bindParam(':a', $sdsd);
				$resultas->execute();
				for($i=0; $rowas = $resultas->fetch(); $i++){
				$fgfg=$rowas['sum(amount)'];
				echo formatMoney($fgfg, true);
				}
				?>
				</strong></td>
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
				$sdsd=$_GET['invoice'];
				$resultas = $db->prepare("SELECT sum(cost) FROM credit_orders WHERE invoice= :a");
				$resultas->bindParam(':a', $sdsd);
				$resultas->execute();
				for($i=0; $rowas = $resultas->fetch(); $i++){
				$fgyg=$rowas['sum(cost)'];
				
				}
				?>
				</strong></td>
                <td colspan="2"><strong style="font-size: 12px; color: #222222;">
			</tr>
		
	</tbody>
</table><br>

<a rel="facebox" id="cccc" href="../index.php"><input type="button" class="button round blue image-right ic-add text-upper" align="middle"  value="Send"/></a>
<div class="clearfix"></div>
</div>
</body>
</html>