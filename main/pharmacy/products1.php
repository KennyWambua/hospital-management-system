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

<a id="addd" href="javascript:Clickheretoprint()">Print</a>

<a id="addd" href="index.php" style="float: none;">Back</a>
<div class="content" id="content">
<div style="font-weight:bold; text-align:center;font-size:14px;margin-bottom: 15px;">
PRODUCTS UNDER STOCK
</div>
<table id="resultTable" data-responsive="table">
	<thead>
		<tr>
		    <th> No</th>
			<th> Name </th>
			<th> Current Stock </th>
			<th> Price </th>
           
            
           
            
			
			
		</tr>
	</thead>
	<tbody>
		
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
				include('connect.php');
				
				$result1 = $db->prepare("SELECT * FROM products");
				for($i=0; $row = $result1->fetch(); $i++)
				$qty=$row['qty'];
				$level=$row['level'];
				
				$result = $db->prepare("SELECT * FROM products WHERE qty <= level ORDER BY product_name ASC");
				$result->bindParam(':a', $qty);
				$result->bindParam(':b', $level);
				
				$result->execute();
				$date= date('Y-m-d');
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td><?php echo $count++;?></td>
			<td><?php echo $row['product_name']; ?></td>
			 <td><?php echo $row['qty']; ?></td>
           
			<td><?php
			$pprice=$row['price'];
			echo formatMoney($pprice, true);
			?></td>
           
            
			<?php
				}
			?>
		
	</tbody>
</table>
<div class="clearfix"></div>
</div>
<script src="js/jquery.js"></script>
  <script type="text/javascript">
$(function() {


$(".delbutton").click(function(){

//Save the link in a variable called element
var element = $(this);

//Find the id of the link that was clicked
var del_id = element.attr("id");

//Built a url to send
var info = 'id=' + del_id;
 if(confirm("Sure you want to delete this update? There is NO undo!"))
		  {

 $.ajax({
   type: "GET",
   url: "deleteproduct.php",
   data: info,
   success: function(){
   
   }
 });
         $(this).parents(".record").animate({ backgroundColor: "#fbc7c7" }, "fast")
		.animate({ opacity: "hide" }, "slow");

 }

return false;

});

});
</script>
</body>
</html>