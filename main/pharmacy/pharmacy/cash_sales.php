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
</head>
<body>

	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>
	<!-- end top-bar -->
<body>

<div id="maintable" align="center"><div style="margin-top: -19px; margin-bottom: 21px;">
<a id="addd" href="index.php" style="float: none;">Back</a>
</div>




<form action="pharmacy4.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('../connect.php');
	 
	$d=date('d/m/Y');
	$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p AND date = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication1']; ?>"><?php echo $row['medication1']; ?> - <?php echo $row['desc1']; ?><br/></option>
	<?php
	}
	?>
</select>
<input type="text" name="qty" value="" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="text" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacy4.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('../connect.php');
	 
	$d=date('d/m/Y');
	$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p AND date = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication2']; ?>"><?php echo $row['medication2']; ?> - <?php echo $row['desc2']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="qty" value="" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="text" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacy4.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('../connect.php');
	 
	$d=date('d/m/Y');
	$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p AND date = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication3']; ?>"><?php echo $row['medication3']; ?> - <?php echo $row['desc3']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="qty" value="" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="text" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacy4.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('../connect.php');
	 
	$d=date('d/m/Y');
	$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p AND date = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication4']; ?>"><?php echo $row['medication4']; ?> - <?php echo $row['desc4']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="qty" value="" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="text" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacy4.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('../connect.php');
	 
	$d=date('d/m/Y');
	$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p AND date = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication5']; ?>"><?php echo $row['medication5']; ?> - <?php echo $row['desc5']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="qty" value="" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="text" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacy4.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('../connect.php');
	 
	$d=date('d/m/Y');
	$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p AND date = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication6']; ?>"><?php echo $row['medication6']; ?> - <?php echo $row['desc6']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="qty" value="" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="text" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacy4.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('../connect.php');
	 
	$d=date('d/m/Y');
	$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p AND date = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication7']; ?>"><?php echo $row['medication7']; ?> - <?php echo $row['desc7']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="qty" value="" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="text" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacy4.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('../connect.php');
	 
	$d=date('d/m/Y');
	$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p AND date = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication8']; ?>"><?php echo $row['medication8']; ?> - <?php echo $row['desc8']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="qty" value="" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="text" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacy4.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('../connect.php');
	 
	$d=date('d/m/Y');
	$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p AND date = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication9']; ?>"><?php echo $row['medication9']; ?> - <?php echo $row['desc9']; ?></option>
	<?php
	}
	?>
</select>
<input type="text" name="qty" value="" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="text" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacy4.php" method="post" >
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	$p=$_GET['patient_id'];
	include('../connect.php');
	 
	$d=date('d/m/Y');
	$result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p AND date = :d ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['medication10']; ?>"><?php echo $row['medication10']; ?>- <?php echo $row['desc10']; ?> </option>
	<?php
	}
	?>
</select>
<input type="text" name="qty" value="" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="text" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="submit" value="save" style="width: 123px;" />
</form>
<form action="pharmacy4.php" method="post" >

<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />
<input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />

<select name="product" style="width: 420px; height:30px;">

	<?php
	include('../connect.php');
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
<input type="text" name="qty" value="" placeholder="Qty" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
<input type="text" name="discount" value="0" autocomplete="off" style="width: 68px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
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
				include('../connect.php');
				$result = $db->prepare("SELECT * FROM sales_order WHERE invoice= :userid");
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
             
			<td><a rel="facebox" href="editprice.php?invoice=<?php echo $row['invoice']; ?>&qty=<?php echo $row['qty']; ?>pt=<?php echo $_GET['id']?>&patient_id=<?php echo $_GET['patient_id']?>&invoice=<?php echo $_GET['invoice']?>">  </a> |<a href="delete.php?id=<?php echo $row['transaction_id']; ?>&invoice=<?php echo $_GET['invoice']; ?>&dle=<?php echo $_GET['id']; ?>&patient_id=<?php echo $_GET['patient_id']?>&qty=<?php echo $row['qty'];?>&code=<?php echo $row['product'];?>"> Delete </a></td>
			</tr>
			<?php
				}
			?>
			<tr>
				<td colspan="5"><strong style="font-size: 12px; color: #222222;">Total:</strong></td>
				<td colspan="5"><strong style="font-size: 12px; color: #222222;">
               
				<?php
				
				$sdsd=$_GET['invoice'];
				$resultas = $db->prepare("SELECT sum(amount) FROM sales_order WHERE invoice= :a");
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
				$resultas = $db->prepare("SELECT sum(cost) FROM sales_order WHERE invoice= :a");
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

<a rel="facebox" id="cccc" href="checkout3.php?patient_id=<?php echo $_GET['patient_id']?>&invoice=<?php echo $_GET['invoice']?>&total=<?php echo$fgfg ?>&cost=<?php echo $fgfg-$fgyg ?>&cashier=<?php echo $_SESSION['SESS_FIRST_NAME']?>"><input type="button" class="button round blue image-right ic-add text-upper" align="middle"  value="Check Out"/></a>
<div class="clearfix"></div>
</div>
</body>
</html>