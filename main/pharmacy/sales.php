<?php
	require_once('auth.php');
?>
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

<div id="maintable" align="center"><div style="margin-top: -19px; margin-bottom: 21px;">
<a id="addd" href="index.php" style="float: none;">Back</a>
</div>
<h3>Consultation</h3>
<form action="consultation.php" method="post" >
<input type="hidden" name="pt" value="<?php echo $_GET['id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />
<select name="product" style="width: 420px; height:30px;">

	<?php
	include('../connect.php');
	$result = $db->prepare("SELECT * FROM consultation");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['patient_id']; ?>"><?php echo $row['patient_id']; ?> - <?php echo $row['consultation_type']; ?></option>
	<?php
	}
	?>
</select>
</form>
<br/>
<h3>Laboratory Analysis</h3>
<form action="incoming.php" method="post" >
<input type="hidden" name="pt" value="<?php echo $_GET['id']; ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />
<select name="product" style="width: 420px; height:30px;">

	<?php
	include('../connect.php');
	$result = $db->prepare("SELECT * FROM diagnosis_report");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option value="<?php echo $row['patient_id']; ?>"><?php echo $row['patient_id']; ?> - <?php echo $row['report_type']; ?></option>
	<?php
	}
	?>
</select>
</form>

</select>




<br>

</div>
</body>
</html>