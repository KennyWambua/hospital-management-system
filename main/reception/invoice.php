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
	<title>GOLD RIVER HEALTH CLINC</title>
	
	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">
	
	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
<a class = "btn btn-success btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Print</a>

	<!-- TOP BAR -->
	
	<!-- end top-bar -->
                  <form method="post" action="">
<div class="content" id="content">
<div style="margin: 0 auto; padding: 20px; width: 700px; font-weight: normal;">
	<div style="width: 100%; height: 350px;" >
	<div style="width: 459px; float: left;">
	<img src="../initial.png" /><br>
	Address : P.O BOX 77-40401 Karungu<br>
	Contact No :0720815253/0723415705 <br>
	Email Add :rularede2002@yahoo.com<br>
	<div>
	<?php
include('connect.php');

$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];

$result = $db->prepare("SELECT * FROM patient WHERE patient_id= :e ");

$result->bindParam(':e', $e);
$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
	<table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;text-align:left;width : 100%;">
		<tr>
			<td width="25%">Bill Payable By: </td>
			<td width="75%"><?php echo $row['insurance_id']; ?></td>
		</tr>
        	
        <tr>
			<td width="25%">Patient No : </td>
			<td width="75%"><?php echo $row['patient_id']; ?></td>
		</tr>
        <tr>
			<td width="25%">Patient Name : </td>
			<td width="75%"><?php echo $row['name']; ?></td>
		</tr>
        <?php
					}
				?>
                <?php
include('connect.php');

$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];

$result = $db->prepare("SELECT * FROM bed_allotment WHERE patient_id= :e AND date BETWEEN :a AND :b");
$result->bindParam(':a', $d1);
$result->bindParam(':b', $d2);
$result->bindParam(':e', $e);
$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
         <tr>
			<td width="25%">Admission No : </td>
			<td width="75%"><?php echo $row['bed_allotment_id']; ?></td>
		</tr>
		<tr>
			<td width="25%">Admission date : </td>
           <td width="75%"><?php echo $row['date'];?></td>
           <tr>
           <td width="25%">Discharge date : </td>
           <td width="75%"><?php echo $row['dis_date'];?></td>
			
		</tr>
		 <?php
					}
				?>
	</table>
   
	</div>
	</div>
	<div style="width: 236px; float: right; height: 178px;">
	<table border="1" cellpadding="4" cellspacing="0" style="font-family: arial;  font-size: 15px;text-align:left;width : 100%;">
		<tr>
			<td colspan="2"><div style="text-align: center; font-weight: bold;">
			
			<?php
			
			echo 'PAYMENT INVOICE:';
			
			?>
			</div></td>
		</tr>
		<tr>
        <?php
	require_once('auth.php');
?>

<?php
include('connect.php');

$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];

$result = $db->prepare("SELECT * FROM prescription WHERE patient_id= :e AND date BETWEEN :a AND :b");
$result->bindParam(':a', $d1);
$result->bindParam(':b', $d2);
$result->bindParam(':e', $e);
$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				
$date= date('d,M Y');
?>
			<td>Invoice No.</td>
			<td><?php echo $row['prescription_id']; ?></td>
		</tr>
		<tr>
			<td>Date</td>
			<td><?php echo $date ?></td>
		</tr>
		<tr style="height: 59px; vertical-align: top;">
			<td>Remarks</td>
			<td></td>
		</tr>
         <?php
					}
				?>
	</table>
	
	</div>
	<div class="clearfix"></div>
	</div>
    
	<div style="width: 100%">
    <table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%"
		<thead>
        <B></B>
			<tr>
				<th> No</th>
				<th> Treatment/Product Name </th>
				<th> Qty </th>
				<th> Price </th>
			
				<th> Amount </th>
			</tr>
		</thead>
		<tbody>
			
				<?php
					include('connect.php');

$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];
$dfdfy=0;

$result = $db->prepare("SELECT * FROM patient WHERE patient_id= :e AND account_opening_timestamp BETWEEN :a AND :b");
$result->bindParam(':a', $d1);
$result->bindParam(':b', $d2);
$result->bindParam(':e', $e);
					$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
				<tr class="record">
				<td></td>
				<td><?php echo $row['consultation']; ?></td>
				<td>1</td>
				<td>
				<?php
				$ppp=$row['fee'];
				echo formatMoney($ppp, true);
				?>
				</td>
				
				<td>
				<?php
				$dfdfy=$row['fee'];
				echo formatMoney($dfdfy, true);
				?>
				</td>
				</tr>
				<?php
					}
				?>
				<?php
					include('connect.php');

$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];
$dfdfy1=0;

$result = $db->prepare("SELECT * FROM bed_allotment WHERE patient_id= :e AND date BETWEEN :a AND :b");
$result->bindParam(':a', $d1);
$result->bindParam(':b', $d2);
$result->bindParam(':e', $e);
					$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
				<tr class="record">
				<td></td>
				<td><?php echo $row['fee']; ?></td>
				<td>1</td>
				<td>
				<?php
				$ppp=$row['price'];
				echo formatMoney($ppp, true);
				?>
				</td>
			
				<td>
				<?php
				$dfdfy1=$row['price'];
				echo formatMoney($dfdfy1, true);
				?>
				</td>
				</tr>
				<?php
					}
				?>
		
				<?php
					include('connect.php');

$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];

$result = $db->prepare("SELECT * FROM diagnosis_report WHERE patient_id= :e AND date BETWEEN :a AND :b");
$result->bindParam(':a', $d1);
$result->bindParam(':b', $d2);
$result->bindParam(':e', $e);
					$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
				<tr class="record">
				<td></td>
				<td><?php echo $row['report_type']; ?></td>
				<td>1</td>
				<td>
				<?php
				$ppp=$row['price'];
				echo formatMoney($ppp, true);
				?>
				</td>
				
				<td>
				<?php
				$dfdf=$row['price'];
				echo formatMoney($dfdf, true);
				?>
				</td>
				</tr>
				<?php
					}
				?>
				 <?php
					$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];

$resultas = $db->prepare("SELECT sum(price) FROM diagnosis_report WHERE patient_id= :e AND date BETWEEN :a AND :b");
$resultas->bindParam(':a', $d1);
$resultas->bindParam(':b', $d2);
$resultas->bindParam(':e', $e);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
					$fgfh=$rowas['sum(price)'];
					
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
					
			
		
			
				<?php
					include('connect.php');

$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];

$result = $db->prepare("SELECT * FROM credit_orders WHERE patient_id= :e AND date BETWEEN :a AND :b");
$result->bindParam(':a', $d1);
$result->bindParam(':b', $d2);
$result->bindParam(':e', $e);
					$result->execute();
					$count=1;
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
				$dfdf=$row['amount'];
				echo formatMoney($dfdf, true);
				?>
				</td>
				</tr>
				<?php
					}
				?>
                
				 <?php
					$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];

$resultas = $db->prepare("SELECT sum(amount) FROM credit_orders WHERE patient_id= :e AND date BETWEEN :a AND :b");
$resultas->bindParam(':a', $d1);
$resultas->bindParam(':b', $d2);
$resultas->bindParam(':e', $e);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
					$fgfc=$rowas['sum(amount)'];
				
					}
					?>
					
			
				<?php
					include('connect.php');

$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];

$result = $db->prepare("SELECT * FROM consultation WHERE patient_id= :e AND date BETWEEN :a AND :b");
$result->bindParam(':a', $d1);
$result->bindParam(':b', $d2);
$result->bindParam(':e', $e);
					$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
				<tr class="record">
				<td></td>
				<td><?php echo $row['consultation_type']; ?></td>
				<td>1</td>
				<td>
				<?php
				$ppp=$row['price'];
				echo formatMoney($ppp, true);
				?>
				</td>
				
				<td>
				<?php
				$dfdz=$row['price'];
				
				?>
				</td>
				</tr>
				<?php
					}
				?>
                <?php
					include('connect.php');

$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];
$dfdz1=0;

$result = $db->prepare("SELECT * FROM nursing WHERE patient_id= :e AND date BETWEEN :a AND :b");
$result->bindParam(':a', $d1);
$result->bindParam(':b', $d2);
$result->bindParam(':e', $e);
					$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
				<tr class="record">
				<td></td>
				<td><?php echo $row['nursing_type']; ?></td>
				<td><?php echo 	$day=$d2-$d1; ?></td>
				<td>
				<?php
				$ppp=$row['price'];
				echo formatMoney($ppp, true);
				?>
				</td>
				
				<td>
				<?php
				$dfdz1=$row['price']*$day;
				echo formatMoney($dfdz1, true);
				?>
				</td>
				</tr>
				<?php
					}
				?>
                <?php
					include('connect.php');

$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];
$dfdz1=0;

$result = $db->prepare("SELECT * FROM bed_allotment WHERE patient_id= :e AND in_date BETWEEN :a AND :b");
$result->bindParam(':a', $d1);
$result->bindParam(':b', $d2);
$result->bindParam(':e', $e);
					$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
				<tr class="record">
				<td></td>
				<td><?php echo $row['bed_id']; ?></td>
				<td><?php echo 	$day=$d2-$d1; ?></td>
				<td>
				<?php
				$ppp=$row['price'];
				echo formatMoney($ppp, true);
				?>
				</td>
				
				<td>
				<?php
				$dfdz1=$row['price']*$day;
				echo formatMoney($dfdz1, true);
				?>
				</td>
				</tr>
				<?php
					}
				?>
				 <?php
					$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];

$resultas = $db->prepare("SELECT sum(price) FROM nursing WHERE patient_id= :e AND date BETWEEN :a AND :b");
$resultas->bindParam(':a', $d1);
$resultas->bindParam(':b', $d2);
$resultas->bindParam(':e', $e);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
					$fgfp=$rowas['sum(price)'];
					
					}
					?>
					
				<?php
					include('connect.php');


$nhif=$_GET['nhif'];


					
					$count=1;
					
				?>
				<tr class="record">
				<td></td>
				<td>LESS NHIF </td>
				<td><?php
				$day=$d2-$d1;
				echo $day;
				?></td>
				<td>
				<?php
				$nhif=$nhif;
				echo formatMoney($nhif, true);
				?>
				</td>
				
				<td>
				<?php
				$tota=$nhif*$day;
				
				?>
				 <?php
					$day=$d2-$d1;
				$tota=$nhif*$day;
				echo formatMoney($tota, true);
				?>
					</strong></td>
				</tr>
                
					
			
		</tbody>
	
	</div>
       
    <table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 <tr>
					<td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">SUB TOTAL:</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
					Ksh <?php
					$total=$dfdfy+$fgfc+$fgfh+$fgfp+$dfdfy1+$dfdz1;
					echo formatMoney($total, true);
					
					?>
					</strong></td>
				</tr>	
				
                
			
		</tbody>
        <table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 <tr>
					<td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">TOTAL AMOUNT PAYABLE:</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
					Ksh <?php
					$total=($dfdfy+$fgfc+$fgfh+$fgfp+$dfdfy1+$dfdz1)-$tota;
					echo formatMoney($total, true);
					
					?>
					</strong></td>
				</tr>	
				
                
			
		</tbody>
        <table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 <tr>
					<td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">Patient's Signature:</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
					________________
					</strong></td>
				</tr>	
				
                
			
		</tbody>
	</table>
    
	</div>
    <div class="clearfix"></div>
	</div>
    
	<div style="width: 100%">
	
	</table>
              </div><!-- /.box -->
            </div><!-- /.col (right) -->
           
          </div><!-- /.row -->
	  
             
          </section><!-- /.content -->
        </div><!-- /.container -->
      </div><!-- /.content-wrapper -->
     
    </div><!-- ./wrapper -->
	
	<script type="text/javascript" src="autosum.js"></script>
    <!-- jQuery 2.1.4 -->
    <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script src="../dist/js/jquery.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="../plugins/select2/select2.full.min.js"></script>
    <!-- SlimScroll -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="../plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../dist/js/demo.js"></script>
    <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
   
  </body>
</html>
