
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Hospital Manegment System</title>
	
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
	<!-- jQuery & JS files -->
	<?php include_once("tpl/common_js.php"); ?>
	<script src="js/script.js"></script>  
		<script>
	/*$.validator.setDefaults({
		submitHandler: function() { alert("submitted!"); }
	});*/
	$(document).ready(function() {
	
		// validate signup form on keyup and submit
		$("#form1").validate({
			rules: {
				name: {
					required: true,
					minlength: 3,
					maxlength: 200
				},
				address: {
					minlength: 3,
					maxlength: 500
				},
				contact1: {
					minlength: 3,
					maxlength: 20
				},
				contact2: {
					minlength: 3,
					maxlength: 20
				}
			},
			messages: {
				name: {
					required: "Please enter a Customer Name",
					minlength: "Customer must consist of at least 3 characters"
				},
				address: {
					minlength: "Customer Address must be at least 3 characters long",
					maxlength: "Customer Address must be at least 3 characters long"
				}
			}
		});
	
	});

	</script>
    <script language="javascript">
function Clickheretoprint()
{ 
  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,"; 
      disp_setting+="scrollbars=yes,width=900, height=400, left=200, top=25"; 
  var content_vlue = document.getElementById("content").innerHTML; 
  
  var docprint=window.open("","",disp_setting); 
   docprint.document.open(); 
   docprint.document.write('</head><body onLoad="self.print()" style="width: 900px; font-size:11px; font-family:arial; font-weight:normal;">');          
   docprint.document.write(content_vlue); 
   docprint.document.close(); 
   docprint.focus(); 
}
</script>


						<div class="content-module-main cf">
				


<div id="maintable">
<div style="margin-top: -19px; margin-bottom: 21px;">

</div>

<a id="addd"  href="javascript:Clickheretoprint()">Print</a>||
<a id="addd" href="../index.php" style="float: none;">Back</a>
<div class="content" id="content">
<div>

</div>

<?php
	$p=$_GET['bed_allotment_id'];
	$d=date('Y-m-d');
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM bed_allotment WHERE  bed_allotment_id = :p ");
	$result->bindParam(':p', $p);
	
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
    <br> <br> <br>
    <h1 align="center" style="color:#000"><B>GOLD RIVER HEALTH CLINC</B></h1>
     <h1 align="center" style="color:#000">Email:greenspan333@gmail.com</h1>
      <h1 align="center" style="color:#000">Cell:0722169309</h1>
      <h1 align="center"> Location:Behind Main Stage,Opposite Gachaki Hardware</h1>
       
	<h2 align="center" style="color:#000">NAME: <?php echo $row['name']; ?>&nbsp;&nbsp;&nbsp;&nbsp;AGE: <?php echo $row['age']; ?>&nbsp;&nbsp;&nbsp;&nbsp;IP/NO: <?php echo $row['bed_allotment_id']; ?> &nbsp;&nbsp;&nbsp;&nbsp;SEX: <?php echo $row['sex']; ?></h2>
    
    <tr>
    <h2 align="center" style="color:000">DOA: <?php echo $row['in_date']; ?>&nbsp;&nbsp;&nbsp;&nbsp;DOD: <?php echo $row['dis_date']; ?>&nbsp;&nbsp;&nbsp;&nbsp;WARD: <?php echo $row['admission_dep']; ?></h2></tr>
    
     <tr>
    <h2 align="center" style="color:000">CONSULTANT'S IN CHARGE: <?php echo $row['cashier']; ?></h2></tr>
	<?php
	}
	?>
     <?php
	$p=$_GET['bed_allotment_id'];
	$d=date('Y-m-d');
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM bed_allotment WHERE  bed_allotment_id = :p ");
	$result->bindParam(':p', $p);
	
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
	
    
	<?php
	}
	?>
&nbsp;&nbsp;&nbsp;&nbsp; 

<h1 align="center" style="color:#000">DISCHARGE SUMMARY</h1>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
        <th width="5%">###</th>
			<th width="20%">Brief history and physical examination</th>
            
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				
	$p=$_GET['bed_allotment_id'];
	$d=date('Y-m-d');
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM bed_allotment WHERE bed_allotment_id = :p  ");
	$result->bindParam(':p', $p);
	
		
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td></td>
            <td><?php echo $row['history']; ?></td>
			

             <br>
			</tr>
            
			<?php
				}
			?>
            	</tbody>

		
	</tbody>
</table>

          <table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
        <th width="5%">###</th>
			
            <th width="20%">Investigations done</th>
			
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				
	$p=$_GET['bed_allotment_id'];
	$d=date('Y-m-d');
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM bed_allotment WHERE bed_allotment_id = :p  ");
	$result->bindParam(':p', $p);
	
		
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td></td>
            
			<td><?php echo $row['test1']; ?><br/><?php echo $row['test2']; ?><br/><?php echo $row['test3']; ?><br/><?php echo $row['test4']; ?></td>
           

             <br>
			</tr>
            
			<?php
				}
			?>
            	</tbody>

		
	</tbody>
</table>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
        <th width="5%">###</th>
			
			<th width="20%">Diagnosis </th>
           
          
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				
	$p=$_GET['bed_allotment_id'];
	$d=date('Y-m-d');
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM bed_allotment WHERE bed_allotment_id = :p  ");
	$result->bindParam(':p', $p);
	
		
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td></td>
            
            <td><?php echo $row['diagnosis']; ?><br><?php echo $row['diagnosis1']; ?><br><?php echo $row['diagnosis2']; ?></td>
            

             <br>
			</tr>
            
			<?php
				}
			?>
            	</tbody>

		
	</tbody>
</table>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
        <th width="5%">###</th>
			
            <th width="25%">Medication</th>
            
			
			
          
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				
	$p=$_GET['bed_allotment_id'];
	$d=date('Y-m-d');
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM bed_allotment WHERE bed_allotment_id = :p  ");
	$result->bindParam(':p', $p);
	
		
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
			<td></td>
     
            <td><?php echo $row['medication1']; ?>  &nbsp;&nbsp;<?php echo $row['desc1']; ?><br><?php echo $row['medication2']; ?>&nbsp;&nbsp;<?php echo $row['desc2']; ?><br><?php echo $row['medication3']; ?>&nbsp;&nbsp;<?php echo $row['desc3']; ?><br><?php echo $row['medication4']; ?>&nbsp;&nbsp;<?php echo $row['desc4']; ?><br><?php echo $row['medication5']; ?>&nbsp;&nbsp;<?php echo $row['desc5']; ?><br><?php echo $row['medication6']; ?>&nbsp;&nbsp;<?php echo $row['desc6']; ?></td>

             <br>
			</tr>
            
			<?php
				}
			?>
            	</tbody>

		
	</tbody>
</table>
 
	</tbody>

		<table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 <tr>
					<td colspan="5" align="center"><strong style="font-size: 15px; text-align:right; color: #222222; border-color:#03F ">Doctors Name:		</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
					<?php
				
	$p=$_GET['bed_allotment_id'];
	$d=date('Y-m-d');
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM bed_allotment WHERE date=:d and bed_allotment_id = :p  ");
	$result->bindParam(':p', $p);
	$result->bindParam(':d', $d);
		
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?><?php echo $row['cashier']; ?>
            
			<?php
				}
			?>
					</strong></td>
                    
					
                    <td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">Sign:</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
					________________
					</strong></td>
				</tr>	
                          <tr>
					<td colspan="5" align="center"><strong style="font-size: 15px; text-align:right; color: #222222; border-color:#03F ">Nursing oficer releasing the patient:		</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
		__________________________________	</strong></td>
                    
					
                    <td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">Sign:</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
					________________
					</strong></td>
				</tr>
                <tr>
					<td colspan="5" align="center"><strong style="font-size: 15px; text-align:right; color: #222222; border-color:#03F ">Payment receipt/Nhif:		</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
		__________________________________	</strong></td>
                    
					
                    <td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">Dated:</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
					<?php echo date('d-M-Y') ?>
					</strong></td>
				</tr>
	</tbody>
</table>
</body>
</html>