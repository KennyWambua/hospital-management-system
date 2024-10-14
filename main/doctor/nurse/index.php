<html>
<head>
<title>Phermacy management system</title>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
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
<h2 align="left"><a id="addd" href="index.php" style="float: none;">Back</a></h2>
  
 <!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
 
    
<?php
	require_once('auth.php');
?>

<?php
function createRandomPassword() {
	$chars = "003232303232023232023456789";
	srand((double)microtime()*1000000);
	$i = 0;
	$pass = '' ;
	while ($i <= 9) {

		$num = rand() % 33;

		$tmp = substr($chars, $num, 1);

		$pass = $pass . $tmp;

		$i++;

	}
	return $pass;
}
$finalcode='RS-'.createRandomPassword();
?>


<h2><div id="header" style="text-align:  center; font-size: 20px;  margin: 40px 0;"> DINO HEALTHCARE SERVICES.

</div></h2>

<div  align="center" id="mainmain">


<?php
$position=$_SESSION['SESS_LAST_NAME'];
if($position=='reception') {
?>

<a href="reception/new_patient.php">Add New Patient</a>
<a href="invoiceing.php?d1=0&d2=0&patient_id=0">Create Invoice</a><br/><br/>
<a href="patientsreport.php?d1=0&d2=0&insurance_id=0">Patients Reports</a><br/><br/>
<a href="salesreport.php?d1=0&d2=0">Period Report</a><br/><br/>
<a href="sales.php?id=credit&invoice=<?php echo $finalcode ?>">Lab</a><br/><br/>
<a href="preview3.php?invoice=">Cash</a><br/><br/>
<a href="previewcredit.php?invoice=">Credit</a><br/><br/>
<a href="collection.php?d1=0&d2=0">Collection Report</a><br/><br/>
<a href="services.php?id=cash&invoice=<?php echo $finalcode ?>">Patient Payments</a><br/><br/>
<a href="../index.php">Logout</a>
<?php
}
if($position=='pharmacy') {
?>
<a href="cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash Sales</a><br/><br/>
<a href="select_customerc.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash Prescription</a><br/><br/>

<a rel="facebox" href="select_customer.php?id=credit&invoice=<?php echo $finalcode ?>">Credit Prescription</a><br/><br/>
<a href="accountreceivables.php?d1=0&d2=0&scheme=0">Pharmacy Report</a><br/><br/>

<a href="products2.php">Drugs</a><br/><br/>

<a href="salesreport.php?d1=0&d2=0">Period Report</a><br/><br/>
<a href="receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Drugs</a><br/><br/>
<a href="../index.php">Logout</a>
<?php
}
if($position=='accounts') {
?>

<a href="sales.php?id=credit&invoice=<?php echo $finalcode ?>">Lab</a><br/><br/>

<a href="patientsreport.php?d1=0&d2=0&insurance_id=0">Patients Reports</a><br/><br/>
<a href="collection.php?d1=0&d2=0&session=0">Collection Report</a><br/><br/>
<a href="invoiceing.php?d1=0&d2=0&patient_id=0">Create Invoice</a><br/><br/>
<a href="accountreceivables.php?d1=0&d2=0&scheme=0">Pharmacy Report</a><br/><br/>
<a href="labreport.php?d1=0&d2=0&document_type=0">Lab Report</a><br/><br/>
<a href="services.php?id=cash&invoice=<?php echo $finalcode ?>">Patient Payments</a><br/><br/>

<a href="receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Purchases</a><br/><br/>
<a href="supplier.php">Suppliers</a><br/><br/>


<a href="../index.php">Logout</a><br/>
<?php
}
if($position=='lab') {
?>
<a href="lab/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Manage Lab</a><br/><br/>
<a href="labreport2.php?d1=0&d2=0&document_type=0">Lab Report</a><br/><br/>
<a href="../index.php">Logout</a>
<?php
}
if($position=='doctor') {
?>
<a href="doctor/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Patient Order</a><br/><br/>
<a href="doctor/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Patient's File</a><br/><br/>

<a href="../index.php">Logout</a>


<?php
}
if($position=='admin') {
?>

<a href="cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash Sales</a><br/><br/>
<a href="select_customerc.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash Prescription</a><br/><br/>

<a rel="facebox" href="select_customer.php?id=credit&invoice=<?php echo $finalcode ?>">Credit Prescription</a><br/><br/>
<a href="invoiceing.php?d1=0&d2=0&patient_id=0">Invoice</a><br/><br/>

<a href="salesreport.php?d1=0&d2=0">Period Report</a><br/><br/>
<a href="patientsreport.php?d1=0&d2=0&insurance_id=0">Patients Reports</a><br/><br/>

<a href="collection.php?d1=0&d2=0&session=0">Collection Report</a><br/><br/>
<a href="accountreceivables.php?d1=0&d2=0&scheme=0">Pharmacy Report</a><br/><br/>
<a href="labreport.php?d1=0&d2=0&document_type=0">Lab Report</a><br/><br/>
<a href="services.php?id=cash&invoice=<?php echo $finalcode ?>">Patient Payments</a><br/><br/>
<a href="products1.php">Drugs stock</a><br/><br/>
<a href="products.php">Drugs in Pharmacy</a><br/><br/>

<a href="users.php">Users</a><br/><br/>
<a href="employee.php?&department=0">Employees</a><br/><br/>
<a href="receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Purchases</a><br/><br/>
<a href="supplier.php">Suppliers</a><br/><br/>

<a href="doctor/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Patient File</a><br/><br/>
<a href="lab/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">View Lab</a><br/><br/>
<a href="../index.php">Logout</a><br/>
<?php
}

if($position=='procument') {
?>
<a href="drungsdespense.php?id=cash&invoice=<?php echo $finalcode ?>">Dispense Drugs</a><br/><br/>
<a href="products1.php">Drugs</a><br/><br/>
<a href="pro_receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Purchases</a><br/><br/>
<a href="supplier.php">Suppliers</a><br/><br/>
<a href="../index.php">Logout</a><br/>
<?php
}
?>
<div class="clearfix"></div>
</div>
     </table>

</div>
</body>
</html>

