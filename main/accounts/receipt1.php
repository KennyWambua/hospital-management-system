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
<h3 align="center"><a class = "btn btn-success btn-print" href = "" onclick = "window.print()">Printout</a></h3>
	<!-- TOP BAR -->
	
	<!-- end top-bar -->
                  <form method="post" action="">
<?php
$invoice=$_GET['invoice'];
include('connect.php');
$result = $db->prepare("SELECT * FROM sales WHERE invoice_number= :userid");
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
$number=$row['number'];
$patient_id=$row['patient_id'];

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
	$resulta = $db->prepare("SELECT * FROM sales WHERE invoice_number= :userid");
	$resulta->bindParam(':userid', $invoice);
	$resulta->bindParam(':userid', $due_date);
	$resulta->bindParam(':userid', $transaction_id);
	$resulta->bindParam(':userid', $cashier);
	$resulta->bindParam(':userid', $patient_id);
	$resulta->execute();
	for($i=0; $rowa = $resulta->fetch(); $i++){
	$invoice_number=$row['invoice_number'];
	$due_date=$row['due_date'];
	
	}
	?>
               <tr>
                        
                         <td align="center"><h1><b><span style="font-size: 16px;color: black">DINO HEALTHCARE SERVICES</span></b></h1></td>
                      </tr>
            
                      <tr>

                        
                        <td align="center"><span style="font-size: 16px;color: black">Cell:0722169309</span></td>
                      
                         </tr>
                         <tr>

                        
                        <td align="center"><span style="font-size: 16px;color: black">Email:greenspan333@gmail.com</span></td>
                      
                         </tr>
            <tr>
                       <td align="left"><span style="font-size: 16px;color: black">Receipt No. <?php echo $transaction_id ?></span></td>
                       </tr>
                       <td align="left"><span style="font-size: 16px;color: black">Served by. <?php echo $cashier ?></span></td>
                      </tr>
                      <tr>
                        
                       
                      </tr>
                      </tr>
                       <td align="left"><span style="font-size: 16px;color: black">Patient No. <?php echo $patient_id ?></span></td>
                       </tr>
                      <tr>
                        
                        <td><b>NAME. <?php echo $number ?></td>
                      </tr>
                      
                    </thead>
                    <thead>
                    <tr>

                      <tr>
                        
                        <td>Date : <?php echo date("M d, Y");?></td>
                        
                      </tr>
                     
                    </thead>
                  </table>
                  <table>
                    <thead>
                        
                      <tr style="border: solid 0px #000">
                       
                       
                        <td><B>Item/Service</B></td>
                         <td><B>Qty</B></td>
            						<td><B>Price</B></td>
            						<td><B>Amount</B></td>
                      </tr>
                      
                    </thead>
                    <tbody>
                     
<?php
					
					$sdsd=$_GET['patient_id'];
				$date=date('Y-m-d');
					$result = $db->prepare("SELECT * FROM sales_order WHERE patient_id= :a and date=:b");
					$result->bindParam(':a', $sdsd);
				$result->bindParam(':b', $date);
					$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
                      <tr style="border: solid 0px #000">
            						
                     
                        <td><h1><?php echo $row['name'];?></h1></td>
                        <td ><?php echo $row['qty'];?></td>
            						<td><?php echo number_format($row['price'],2);?></td>
            						<td ><?php echo number_format($row['amount'],2);?></td>
                                <hr>    
                      </tr>
					  

<?php }?>					
                      
                     
                      <tr>
                        <td></td>
                        <td></td>
                        
                        <td class="text-left"><b>Total</b></td>
                        <td style="text-align:left"><b>
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
					
					?><?php
					$sdsd=$_GET['patient_id'];
				$date=date('Y-m-d');
					$resultas = $db->prepare("SELECT sum(amount) FROM sales_order WHERE patient_id= :a and date=:b");
					$resultas->bindParam(':a', $sdsd);
				$resultas->bindParam(':b', $date);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
					$fgfg=$rowas['sum(amount)'];
					echo formatMoney($fgfg, true);
					}
					?></b></td>
                      </tr>
                      
                      
                    </tbody>
                    
                  </table>
                  <hr/>
                </div><!-- /.box-body -->
				</div>  
				</form>	
                </div><!-- /.box-body -->
             
                 <h2 align="center"><a class = "btn btn-success btn-print" href = "../index.php" >Get well soon</a></h2>
                
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
