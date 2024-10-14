<?php
	require_once('auth.php');
?>
<?php

include('connect.php');
$results = $db->prepare("SELECT * FROM sales order by transaction_id desc limit 1");

$results->execute();
for($i=0; $rows = $results->fetch(); $i++){
$sdsdd=$rows['transaction_id'];
if($sdsdd==''){

}

$dsdsd=$rows['transaction_id'];
}

$finalcode=$dsdsd+1;
?>
<!DOCTYPE html>

<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<title>POS</title>
	
	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css1/style.css">
	
	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
	<!-- jQuery & JS files -->
	
	<script src="js/script.js"></script>  
    <!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<title>POS</title>
	
	<!-- Stylesheets -->
	
	
</head>
<body>
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


<div class="content" id="content">
<div>
<br>
<br>
<br>
<h1 align="center"></h1>
<h1 align="center"><b>DINO HEALTHCARE SERVICES</b></h1>
<h3 align="center"> Location:Behind Main Stage,Opposite Gachaki Hardware</h3>
<h2 align="center">Email:greenspan333@gmail.com</h2>
<h2 align="center"> TELL:0722169309</h2>
</div><?php
$invoice=$_GET['invoice'];
include('connect.php');
$result = $db->prepare("SELECT * FROM invoice WHERE invoice_number= :userid");
$result->bindParam(':userid', $invoice);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$cname=$row['name'];
$invoice=$row['invoice_number'];
$transaction_id=$row['transaction_id'];
$date=$row['date'];
$due_date=$row['due_date'];
$cashier=$row['cashier'];
$pt=$row['type'];
$am=$row['amount'];
$am1=$row['amount1'];
$am2=$row['amount2'];
$am3=$row['amount3'];
$am4=$row['amount4'];
$am5=$row['amount5'];
$am6=$row['amount6'];
$tax=$row['tax'];
if($pt=='cash'){
$cash=$row['due_date'];
$amount=$cash-$am;
}
}
?>                </tr>
                      <tr>
                       
         

                   <table class="table" align="center">
                    <thead>
                  
                      <?php
	$resulta = $db->prepare("SELECT * FROM invoice WHERE invoice_number= :userid");
	$resulta->bindParam(':userid', $invoice);
	$resulta->bindParam(':userid', $due_date);
	$resulta->bindParam(':userid', $transaction_id);
	$resulta->bindParam(':userid', $cashier);
	$resulta->bindParam(':userid', $am1);
	$resulta->bindParam(':userid', $am2);
	$resulta->bindParam(':userid', $am3);
	$resulta->bindParam(':userid', $am4);
	$resulta->bindParam(':userid', $am5);
	$resulta->bindParam(':userid', $am6);
	$resulta->bindParam(':userid', $tax);
	$resulta->execute();
	for($i=0; $rowa = $resulta->fetch(); $i++){
	$invoice_number=$row['invoice_number'];
	$due_date=$row['due_date'];
	
	}
	?>
           
                        
                       
                      

                        
                       
                         
                       <td align="left"><span style="font-size: 15px;color: black">  <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Invoice No.</b> <?php echo $am5 ?> &nbsp;&nbsp;&nbsp;<b> Scheme.</b> <?php echo $am1 ?></span></td>
                        <tr>
                       <td align="left"><span style="font-size: 15px;color: black"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Patient Name</b> <?php echo $cname ?></span></td>
                        </tr>
                       <td align="left"><span style="font-size: 15px;color: black"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date Of Admission</b> <?php echo $am3 ?> &nbsp;&nbsp;&nbsp;<b>Date Of Discharge</b><?php echo $am4 ?> </span></td>
                      
                     
                    </thead>
                    <thead>
                    <tr>

                      <tr>
                        
                        <td align="left"><b>Date : <?php echo $am4 ?></b></td>
                        
                      </tr>
                     
                    </thead>
                  </table>
</div>
	</div>
	
	<div class="clearfix"></div>
	</div>
    
	<div style="width: 100%">
    <table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%"
		<thead>
        <B></B>
			<tr><th>  </th>

				<th> No </th>
				<th> Particulars </th>
				<th> Qty </th>
				<th> Price </th>
			
				<th> Amount </th>
			</tr>
		</thead>
		<tbody>
			
            <?php
					include('connect.php');


				
				$s=$_GET['invoice'];
				
				
				$result = $db->prepare("SELECT * FROM sales_order WHERE invoice=:s  " );
				
				$result->bindParam(':s', $s);
				$count=1;
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">

<td></td>

			 <td><?php echo $count++ ?></td>
			<td><?php echo $row['name']; ?></td>
			<td><?php echo $row['qty']; ?></td>
           
            
			<td><?php
			$dsdsd=$row['price'];
			echo formatMoney($dsdsd, true);
			?></td>
         
              <td><?php
			$dsdsd=$row['amount'];
			echo formatMoney($dsdsd, true);
			?></td>
			
			</tr>
			<?php
				}
			?>
            
            
            
				 
					
                
					
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
					
					?>
					
			
		
			
				
                
     </div>
       
    <table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 <tr>
					<td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">TOTAL:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222; text-align:right">
					Ksh  <?php
					$sdsd=$_GET['invoice'];
					$resultas = $db->prepare("SELECT sum(amount) FROM sales_order WHERE invoice= :a");
					$resultas->bindParam(':a', $sdsd);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
					$fgfg5=$rowas['sum(amount)'];
					echo formatMoney($fgfg5, true);
					}
					?>
					</strong></td>
				</tr>	
				
                
			
		</tbody>
        <table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 <tr>
					<td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">Number of Days:&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222; text-align:left" >
					 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<?php echo $tax ?> 
					</strong></td>
				</tr>	
				
                
			
		</tbody>
        <table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 <tr>
					<td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">Current Nhif Rebete:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222; text-align:right">
					Ksh <?php echo formatMoney($am6, true); ?>
					</strong></td>
				</tr>	
				
                
			
		</tbody>
        <table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 <tr>
					<td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">TOTAL AMOUNT CLAIMED:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222; text-align:right">
					Ksh <?php echo formatMoney($am6, true); ?>
					</strong></td>
				</tr>	
				
                
			
		</tbody>
        
		</tbody>
	</table>
</div>
 <a class = "btn btn-success btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Print</a>
<a id="addd" href="../index.php" style="float: none;">Back</a>
<div class="clearfix"></div>
</div>
</body>
</html>