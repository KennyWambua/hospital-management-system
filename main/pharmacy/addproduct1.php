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
<form action="saveproduct1.php" method="post">
<div id="ac" align="center">


<span>Product Name :<br> </span><input type="text" name="name" /><br>
<span>Cost         :<br></span><input type="text" name="cost" /><br>
<span>Discount     :<br></span><input type="text" name="discount" /><br>

<span>Cash Price :   <br> </span><input type="text" name="price" /><br>
<span>Kenya Power Prices :   <br> </span><input type="text" name="c_price" /><br>
<span>Form : <br></span><select  name="form">
<option>Tabs</option>
<option>Syrup</option>
<option>Powder</option>
<option>Cream</option>
<option>Shampoo</option>
<option>Gel</option>

</select><br>
<span>Exp Date : <br></span><br><input type="date" name="experiy_date" /><br>
<span>Supplier : </span><br>
<select name="supplier">
	<?php
	include('../connect.php');
	$result = $db->prepare("SELECT * FROM supliers");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option><?php echo $row['suplier_name']; ?></option>
	<?php
	}
	?>
</select><br>
<span>Qty : <br></span><input type="text" name="qty" /><br>
<span>Reorder Level : <br></span><input type="text" name="level" /><br>
<span>&nbsp;</span><input id="btn" type="submit" value="save" />
</div>
</form>
</body>
</html>