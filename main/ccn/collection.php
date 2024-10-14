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

<div id="maintable">
<div style="margin-top: -19px; margin-bottom: 21px;">

</div>
<form action="collection.php" method="get">
From :&nbsp;&nbsp; <input type="text" name="d1"  value="<?php echo date('m/d/Y');?>" /> To: <input type="text" name="d2"  value="<?php echo date('m/d/Y');?>" /><br/> Session :&nbsp;&nbsp;<select  name="session">
 <option>Day Session</option>
<option>Night Session</option>

</select><br/><br/><br/>
<input type="submit" value="Search"> <br/><a id="addd" href="javascript:Clickheretoprint()">Print</a>
</form>
<a id="addd" href="index.php" style="float: none;">Back</a>
<div class="content" id="content">
<div style="font-weight:bold; text-align:center;font-size:14px;margin-bottom: 15px;">
Collection Report from&nbsp;<?php echo $_GET['d1'] ?>&nbsp;to&nbsp;<?php echo $_GET['d2'] ?>
</div>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
			<th width="17%"> Transaction ID </th>
			<th width="8%"> Date </th>
			<th width="20%"> Sales Person</th>
            <th width="20%"> Patient Number</th>
			<th width="15%"> Invoice No. </th>
            <th width="15%"> Receipt No. </th>
			<th width="15%"> Amount </th>
			<th width="15%"> Tran Department </th>
          
		</tr>
	</thead>
	<tbody>
		
			<?php
				include('../connect.php');
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
				$result = $db->prepare("SELECT * FROM salesr WHERE transdep IS NOT NULL  AND session=:s AND date BETWEEN :a AND :b ORDER BY transdep DESC" );
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				$result->bindParam(':s', $s);
				$result->execute();
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td>STI-000<?php echo $row['transaction_id']; ?></td>
			<td><?php echo $row['date']; ?></td>
			<td><?php echo $row['cashier']; ?></td>
            <td><?php echo $row['number']; ?></td>
			<td><?php echo $row['invoice_number']; ?></td>
            <td><?php echo $row['anumber']; ?></td>
			<td><?php
			$dsdsd=$row['amount'];
			echo formatMoney($dsdsd, true);
			?></td>
         
              <td><?php echo $row['transdep']; ?></td>
			
			</tr>
			<?php
				}
			?>
		
	</tbody>
	<thead>
		<tr>
			<th colspan="6" style="border-top:1px solid #999999"> LAB TOTAL :</th>
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
				$s=$_GET['session'];
				$c='LAB';
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep=:c AND session=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				$results->bindParam(':s', $s);
				
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
			<th colspan="6" style="border-top:1px solid #999999"> PHARMACY TOTAL: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
				
				$c='PHARMACY';
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep=:c AND session=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				$results->bindParam(':s', $s);
				
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
			<th colspan="6" style="border-top:1px solid #999999"> CONSULTATION: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
				$c='CONSULTATION';
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep=:c AND session=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				$results->bindParam(':s', $s);
				
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
			<th colspan="6" style="border-top:1px solid #999999"> MCH: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
				$c='MCH';
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep=:c AND session=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				$results->bindParam(':s', $s);
				
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
			<th colspan="6" style="border-top:1px solid #999999"> OPD: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
				$c='OPD';
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep=:c AND session=:s AND  date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				$results->bindParam(':s', $s);
				
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
			<th colspan="6" style="border-top:1px solid #999999"> INPATIENT: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
				$c='INPATIENT';
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep=:c AND session=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				$results->bindParam(':s', $s);
				
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
			<th colspan="6" style="border-top:1px solid #999999"> DENTAL: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
				$c='DENTAL';
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep=:c AND session=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				$results->bindParam(':s', $s);
				
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
			<th colspan="6" style="border-top:1px solid #999999"> AMBULANCE: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
				$c='AMBULANCE';
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep=:c AND session=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				$results->bindParam(':s', $s);
				
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
			<th colspan="6" style="border-top:1px solid #999999"> X-RAY: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
				$c='X-RAY';
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep=:c AND session=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				$results->bindParam(':s', $s);
				
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
			<th colspan="6" style="border-top:1px solid #999999"> THEATRE: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
				$c='THEATRE';
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep=:c AND session=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				$results->bindParam(':s', $s);
				
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
			<th colspan="6" style="border-top:1px solid #999999"> OPTICALS: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
				$c='OPTICALS';
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep=:c AND session=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':c', $c);
				$results->bindParam(':s', $s);
				
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
			<th colspan="6" style="border-top:1px solid #999999"> TOTAL DAILY COLLECTION: </th>
			<th colspan="2" style="border-top:1px solid #999999"> 
			<?php
				
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$s=$_GET['session'];
			
				$results = $db->prepare("SELECT sum(amount) FROM salesr WHERE transdep IS NOT NULL AND session=:s AND date BETWEEN :a AND :b");
				$results->bindParam(':a', $d1);
				$results->bindParam(':b', $d2);
				$results->bindParam(':s', $s);
			
				
				$results->execute();
				for($i=0; $rows = $results->fetch(); $i++){
				$dsdsd=$rows['sum(amount)'];
				echo formatMoney($dsdsd, true);
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