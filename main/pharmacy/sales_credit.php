<?php
	require_once('auth.php');
?>
<html>
<head>
<title>Phermacy management system</title>
<link href="css/layout.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="tcal.js"></script>
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
<div id = "header">

    <table border="0" cellspacing="0px" width="100%"  height="5%" bgcolor="#CC3300" cellpadding="0px">
    <tr>
 <th scope="col" align="left"><font color="#FFFFFF" size="10px">H</font><span style="font-size: 28px; color:#FFF">ospital Management System</span></th>
         </td>
        
    </tr>
    </table>
    </div>
</head>
<body>

<div id="maintable" align="center"><div style="margin-top: -19px; margin-bottom: 21px;">
<a id="addd" href="index.php" style="float: none;">Back</a>
</div>


<h3>Phrmacy</h3>
<form action="pharmacy2.php" method="post" >
<input type="hidden" name="pt" value="cash" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />



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
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td></td>
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
             
			<td><a rel="facebox" href="editprice.php?invoice=<?php echo $row['invoice']; ?>&qty=<?php echo $row['qty']; ?>pt=cash&invoice=<?php echo $_GET['invoice']?>"> Edit </a> |<a href="delete.php?id=<?php echo $row['transaction_id']; ?>&invoice=<?php echo $_GET['invoice']; ?>&dle=cash&qty=<?php echo $row['qty'];?>&code=<?php echo $row['product'];?>"> Delete </a></td>
			</tr>
			<?php
				}
			?>
			<tr>
				<td colspan="5"><strong style="font-size: 12px; color: #222222;">Total:</strong></td>
				<td colspan="2"><strong style="font-size: 12px; color: #222222;">
               
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

<a rel="facebox" id="cccc" href="checkout2.php?pt=cash&invoice=<?php echo $_GET['invoice']?>&total=<?php echo$fgfg ?>&cost=<?php echo $fgfg-$fgyg ?>&cashier=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Check Out</a>
<div class="clearfix"></div>
</div>
</body>
</html>