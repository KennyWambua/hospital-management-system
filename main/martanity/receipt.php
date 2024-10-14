
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../plugins/select2/select2.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
    
    <style type="text/css">
      tr td{
        padding-top:-10px!important;
        border: 1px solid #000;
      }
      @media print {
          .btn-print {
            display:none !important;
          }
      }
    </style>
 </head>
  <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
  <body class="hold-transition skin-blue layout-top-nav">
    <div class="wrapper">
      
      <!-- Full Width Column -->
      <div class="content-wrapper">
        <div class="container">

          <section class="content">
            <div class="row">
	      <div class="col-md-12">
              <div class="col-md-12">

              </div>
                
                <div class="box-body">

                  <!-- Date range -->
                  <form method="post" action="">
<?php
$invoice=$_GET['invoice'];
include('../connect.php');
$result = $db->prepare("SELECT * FROM sales WHERE invoice_number= :userid");
$result->bindParam(':userid', $invoice);
$result->execute();
for($i=0; $row = $result->fetch(); $i++){
$cname=$row['name'];
$scheme=$row['scheme'];
$invoice=$row['invoice_number'];
$date=$row['date'];
$cash=$row['due_date'];
$cashier=$row['cashier'];
$pt=$row['type'];
$am=$row['amount'];
$number=$row['number'];
$anumber=$row['anumber'];
if($pt=='cash'){
$cash=$row['due_date'];
$amount=$cash-$am;
}
}
?>                </tr>
                      <tr>
                       
         

                   <table class="table" align="center">
                    <thead>
                      <tr align="center"><img src="../initial.png" /><br>
                      <?php
	$resulta = $db->prepare("SELECT * FROM sales WHERE invoice_number= :userid");
	$resulta->bindParam(':userid', $invoice);
	$resulta->bindParam(':userid', $number);
	$resulta->execute();
	for($i=0; $rowa = $resulta->fetch(); $i++){
	$invoice_number=$row['invoice_number'];
	$number=$row['number'];
	$anumber=$row['anumber'];
	$scheme=$row['scheme'];
	}
	?><?php
			
			?> <tr>
                        
                        <th>Phone Number :  0712275242/0705351441</th>
                      </tr>
                        
                       <th><span style="font-size: 16px;color: red">No. <?php echo $invoice ?></span></th>
                      </tr>
                      <tr>
                        
                       
                      </tr>
                      <tr>
                        
                        <th>Name. <?php echo $number ?></th>
                      </tr>
                      
                    </thead>
                    <thead>
                    <tr>

                      <tr>
                        
                        <th>Date</th>
                        <th><u><?php echo date("M d, Y");?> </u></th>
                      </tr>
                     
                    </thead>
                  </table>
                  <table class="table">
                    <thead>
                        
                      <tr style="border: solid 0px #000">
                       
                       
                        <th>Item</th>
                         <th>Qty</th>
            						<th>Price</th>
            						<th class="text-right">Amount</th>
                      </tr>
                    </thead>
                    <tbody>
<?php
					
					$id=$_GET['invoice'];
					$result = $db->prepare("SELECT * FROM sales_order WHERE invoice= :userid");
					$result->bindParam(':userid', $id);
					$result->execute();
					$count=1;
					for($i=0; $row = $result->fetch(); $i++){
				?>
                      <tr>
            						
                     
                        <td ><?php echo $row['name'];?></td>
                        <td><?php echo $row['qty'];?></td>
            						<td><?php echo number_format($row['price'],2);?></td>
            						<td style="text-align:right"><?php echo number_format($row['amount'],2);?></td>
                                    
                      </tr>
					  

<?php }?>					
                      
                      
                      <tr>
                        <td></td>
                        <td></td>
                        
                        <td class="text-right"><b>Total</b></td>
                        <td style="text-align:right"><b>
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
					$sdsd=$_GET['invoice'];
					$resultas = $db->prepare("SELECT sum(amount) FROM sales_order WHERE invoice= :a");
					$resultas->bindParam(':a', $sdsd);
					$resultas->execute();
					for($i=0; $rowas = $resultas->fetch(); $i++){
					$fgfg=$rowas['sum(amount)'];
					echo formatMoney($fgfg, true);
					}
					?></b></td>
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
