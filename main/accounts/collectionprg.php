
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
<H1 align="center"><B>TOTAL NUMBER OF COLLECTIONS FROM &nbsp;<?php echo $_GET['d1'] ?>&nbsp; TO &nbsp;<?php echo $_GET['d2'] ?></B></H1>
</div>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			<th width="17%"> Receipt No. </th>
			<th width="8%"> Date </th>
			<th width="20%"> Sales Person</th>
            <th width="20%"> Patient Number</th>
			<th width="15%"> Trans Code. </th>
            <th width="15%">Payment Mode </th>
			<th width="15%"> Amount </th>
			<th width="15%"> Tran Department </th>
            <th width="15%"> Action </th>
          
		</tr>
	</thead>
	<tbody>
		
			<?php
				include('connect.php');
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$result = $db->prepare("SELECT * FROM sales WHERE insurance_id='CASH'  AND date BETWEEN :a AND :b ORDER BY transaction_id asc" );
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				
				
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
          <td><?php echo $row['session']; ?></td>
              <td><?php echo $row['transdep']; ?></td>
			<td> <a href="deletesl.php?id=<?php echo $row['transaction_id']; ?>"> Delete </a>||<a href="../pharmacy/return.php?invoice=<?php echo $row['invoice_number']; ?>&id=cash&transdep=PHARMACY"> View </a></td>
			</tr>
			<?php
				}
			?>
		
	</tbody>
	<thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> LAB TOTAL :</th>
			<th colspan="2" style="border-top:1px solid #999999"> 
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
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
			
				$c='LAB';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c  AND insurance_id='CASH'  AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> PHARMACY TOTAL: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				
				$c='PHARMACY';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH' AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> CONSULTATION: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$c='CONSULTATION';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH' AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> MCH: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$c='MCH';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH' AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> OPD: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$c='OPD';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH' AND   date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> INPATIENT: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$c='INPATIENT';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH' AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> DENTAL: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$c='DENTAL';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH'  AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> AMBULANCE: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$c='AMBULANCE';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH' AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> X-RAY: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$c='X-RAY';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH' AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> THEATRE: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$c='THEATRE';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH' AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> OPTICALS: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$c='OPTICALS';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH' AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
     <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> PHYSIOTHERAPY: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$c='PHYSIOTHERAPY';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH' AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> OTHERS: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
				$c='OTHERS';
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep=:c AND insurance_id='CASH' AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
			
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
			</th>
		</tr>
	</thead>
     <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> TOTAL DAILY COLLECTION: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
			
				$results = $db->prepare("SELECT sum(amount) FROM sales WHERE transdep IS NOT NULL  AND insurance_id='CASH' AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
			
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
                
			</th>
		</tr>
	</thead>
    <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> TOTAL EXPENSES: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
			
				$results = $db->prepare("SELECT sum(amount) FROM expenses WHERE date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
			
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
				}
				?>
                
			</th>
		</tr>
	</thead>
     <thead>
		<tr>
			<th colspan="7" style="border-top:1px solid #999999"> DAILY PROFIT COLLECTION: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				
			
				$results = $db->prepare("SELECT sum(cost) FROM sales WHERE transdep IS NOT NULL  AND insurance_id='CASH' AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				
			
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd1=$rows['sum(cost)'];
				echo formatMoney($dsdsd1, true);
				}
				?>
                
			</th>
		</tr>
	</thead>
    
</table>
</div>
<div class="clearfix"></div>
</div>
</body>
</html>