
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


						<div class="content-module-main cf">
				


<div id="maintable">
<div style="margin-top: -19px; margin-bottom: 21px;">

</div>

<a id="addd" href="javascript:Clickheretoprint()">Print</a>
<a id="addd" href="../index.php" style="float: none;">Back</a>
<div class="content" id="content">
<div>
<table class="table table-bordered" id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
            <th width="8%"> Transaction ID </th>
			<th width="15%"> Invoice </th>
			<th width="15%"> Date </th>
			
			
		    <th width="15%"> Product Name </th>
            <th width="10%"> Qty </th>
             
            <th width="12%"> Total Amount </th>
			<th width="12%"> Total Profit </th>
		

			
			

			<th > Action </th>
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
				$p=$_GET['name'];
				$result = $db->prepare("SELECT * FROM sales_order WHERE name=:p and date BETWEEN :a AND :b   ORDER BY date DESC");
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				$result->bindParam(':p', $p);
				
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
            <td><?php echo $row['transaction_id']; ?></td>
			<td><?php echo $row['invoice']; ?></td>
			<td><?php echo $row['date']; ?></td>
		
			<td><?php echo $row['name']; ?></td>
        <td><?php echo $row['qty']; ?></td>
			<td><?php
			$oprice=$row['amount'];
			echo formatMoney($oprice, true);
			?></td>
				<td><?php
			$pprice=$row['profit'];
			echo formatMoney($pprice, true);
			?></td>
            
			<td> <?php echo $row['transdep']; ?>				
			</td>
			</tr>
			<?php
				}
			?>
		
				
		
			<tr>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				
				
			<th>Qty</th>
				<th>Total Amount</th>
				<th>Total Profit</th>
                
				<th></th>
			<tr>
				
			<tr>
				<th colspan="4"><strong style="font-size: 20px; color: #222222;">Totals:</strong></th>
				<th colspan="1"><strong style="font-size: 13px; color: #222222;">
				<?php
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$p=$_GET['name'];
				$result= $db->prepare("SELECT sum(qty) from sales_order WHERE name=:p and date BETWEEN :a AND :b");
				
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				$result->bindParam(':p', $p);
				$result->execute();
				for($i=0; $rowas = $result->fetch(); $i++){
				$fgfg1=$rowas['sum(qty)'];
				echo $fgfg1;
				}
				?>
				</strong></th>
				<th colspan="1"><strong style="font-size: 13px; color: #222222;">
				<?php
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$p=$_GET['name'];
				$result = $db->prepare("SELECT sum(amount) from sales_order WHERE name=:p and date BETWEEN :a AND :b");
				
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				$result->bindParam(':p', $p);
				$result->execute();
				for($i=0; $rowas = $result->fetch(); $i++){
				$fgfg=$rowas['sum(amount)'];
				echo formatMoney($fgfg, true);
				}
				?>
				
					</th>
					<th colspan="1"><strong style="font-size: 13px; color: #222222;">
				<?php
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$p=$_GET['name'];
				$result = $db->prepare("SELECT sum(profit) from sales_order WHERE name=:p and date BETWEEN :a AND :b");
				
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				$result->bindParam(':p', $p);
				$result->execute();
				for($i=0; $rowas = $result->fetch(); $i++){
				$fgfg2=$rowas['sum(profit)'];
				echo formatMoney($fgfg2, true);
				}
				?>
				
					</th>
					<th></th>
			</tr>
		
		
		
		
		
	</tbody>
</table>


		
	</tbody>
	
</table>
</div>
<div class="clearfix"></div>
</div>
</body>
</html>