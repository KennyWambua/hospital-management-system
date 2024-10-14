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
	<?php include_once("tpl/common_js.php"); ?>
	<script src="js/script.js"></script>  
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
</head>
<body>

	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>
	<!-- end top-bar -->
<?php
require_once('auth.php');
?>


    <div id="header-with-tabs">
		
		<div class="page-full-width cf">
	
			<ul id="tabs" class="fl">
				<li><a href="services.php?id=cash&invoice=<?php echo $finalcode ?>">Patient payment</a></li>
                    <li><a href="cash_pay.php?d1=0&d2=0&patient_id=0">Drugs payment</a></li>
                    <li><a href="collection.php?d1=0&d2=0&session=0">Collection Report</a></li>
                    <li><a href="invoiceing.php?d1=0&d2=0&patient_id=0&nhif=0">Create Invoice</a></li>
                    <li><a href="products1.php">Order List</a></li>
                    
                    
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
					<li><a href="services.php?id=cash&invoice=<?php echo $finalcode ?>">Patient payment</a></li>
                    <li><a href="cash_pay.php?d1=0&d2=0&patient_id=0">Drugs payment</a></li>
                    <li><a href="collection.php?d1=0&d2=0&session=0">Collection Report</a></li>
                    <li><a href="invoiceing.php?d1=0&d2=0&patient_id=0&nhif=0">Create Invoice</a></li>
                    <li><a href="products1.php">Order List</a></li>
                    
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
					
					</div> <!-- end content-module-heading -->
<form action="bill.php" method="get">



<?php
$d1=$_GET['d1'];
$d2=$_GET['d2'];
$e=$_GET['patient_id'];
include('connect.php');
$result = $db->prepare("SELECT * FROM patient WHERE patient_id= :e ");

$result->bindParam(':e', $e);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$name=$row['name'];
$number=$row['patient_id'];



}
?><br>
<br>

<div class="content" id="content">
<div style="margin: 0 auto; padding: 20px; width: 700px; font-weight: normal;">
	<div style="width: 100%; height: 350px;" >
	<div style="width: 459px; float: left;">
	<h3>SORI LAKESIDE HOSPITAL</h3>
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
	<table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;text-align:left;width : 65%;">
		<tr>
			<td width="25%">Bill Payable By: </td>
			<td width="25%"><?php echo $row['insurance_id']; ?></td>
		</tr>
        	
        <tr>
			<td width="25%">Patient No : </td>
			<td width="25%"><?php echo $row['patient_id']; ?></td>
		</tr>
        <tr>
			<td width="25%">Patient Name : </td>
			<td width="25%"><?php echo $row['name']; ?></td>
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
			<td width="25%"><?php echo $row['bed_allotment_id']; ?></td>
		</tr>
		<tr>
			<td width="25%">Admission date : </td>
           <td width="25%"><?php echo $row['date'];?></td>
           <tr>
           <td width="25%">Discharge date : </td>
           <td width="25%"><?php echo $row['dis_date'];?></td>
			
		</tr>
		 <?php
					}
				?>
	  <table>
                    <thead>
                        
                      <tr>
                       
				<th> No</th>
				<th> Product </th>
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

$result = $db->prepare("SELECT * FROM sales_order WHERE patient_id= :e AND date BETWEEN :a AND :b");
$result->bindParam(':a', $d1);
$result->bindParam(':b', $d2);
$result->bindParam(':e', $e);
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

$resultas = $db->prepare("SELECT sum(amount) FROM sales_order WHERE patient_id= :e AND date BETWEEN :a AND :b");
$resultas->bindParam(':a', $d1);
$resultas->bindParam(':b', $d2);
$resultas->bindParam(':e', $e);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
					$fgfc=$rowas['sum(amount)'];
				
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
					
			
					</strong></td>
				</tr>
                
					
			
		</tbody>
	
	</div>
  
					<td colspan="4"><strong style="font-size: 15px; color: #222222; border-color:#03F">TOTAL:</strong></td>
					<td colspan="4"><strong style="font-size: 15px; color: #222222;">
					Ksh <?php
					$total=$fgfc;
					echo formatMoney($total, true);
					
					?>
					</strong></td>
				</tr>	
			</tbody>
                    
                  </table>
                </div><!-- /.box-body -->
				</div>  
				</form>	
                </div><!-- /.box-body -->
                <a class = "btn btn-success btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Print</a>
                <a class = "btn btn-primary btn-print" href = "index.php"><i class ="glyphicon glyphicon-arrow-left"></i> Back to Homepage</a>
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
