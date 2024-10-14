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


<h2><div id="header" style="text-align:  center; font-size: 20px;  margin: 40px 0;"> DINO HEALTHCARE SERVICES.

</div></h2>

<div  align="center" id="mainmain">


<?php
$position=$_SESSION['SESS_LAST_NAME'];

if($position=='lab') {
?>
<a href="lab/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Manage Lab</a><br/><br/>
<a href="labreport2.php?d1=0&d2=0&document_type=0">Lab Report</a><br/><br/>
<a href="../index.php">Logout</a>

<?php
}
?>
<div class="clearfix"></div>
</div>
     </table>

</div>
</body>
</html>

