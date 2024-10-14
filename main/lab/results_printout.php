
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


						<div class="content-module-main cf">
				


<div id="maintable">
<div style="margin-top: -19px; margin-bottom: 21px;">

</div>

<a id="addd" href="javascript:Clickheretoprint()">Print</a>
<a id="addd" href="../index.php" style="float: none;">Back</a>
<div class="content" id="content">
<div>
<h1 align="center"></h1>
<h1 align="center"> <img src="logo.png" width="150px" height="150px"></h1>

<h1 align="center">DINO HEALTHCARE SERVICES</h1>
<h4 align="center"> <i>Jolly Jolly Building, Irungu Road, Mtito Andei, Kibwezi East District<i></h4>
<h4 align="center">Email:dinohealtcareservices@gmail.com / dinokyalo@gmail.com</h4>
<h4 align="center"> TELL:0721322150 / 0700420462</h4>

<H1 align="center"><B><?php
	$p=$_GET['patient_id'];
	include('connect.php');
	 
	
	$result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p ");
	$result->bindParam(':p', $p);
	
		
		
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
	<h2 align="center" style="color:#F00">LAB RESULTS FOR: <?php echo $row['name']; ?><br/>
    <?php
	}
	?>
    
    
    </B></H1>
</div>
<table id="resultTable" data-responsive="table" style="text-align: left;">
	<thead>
		<tr>
            <th width="10%"> No </th>
			<th width="20%"> Date </th>
           
             <th width="30%"> Test </th>
			<th width="40%"> Results</th>
            
			
		</tr>
	</thead>
	<tbody>
		
			<?php
				include('connect.php');
				$d1=$_GET['d1'];
				$d2=$_GET['d2'];
				$e=$_GET['patient_id'];
				
				$result = $db->prepare("SELECT * FROM diagnosis_report WHERE patient_id=:e AND date BETWEEN :a AND :b");
				$result->bindParam(':a', $d1);
				$result->bindParam(':b', $d2);
				
				$result->bindParam(':e', $e);
				$result->execute();
				$count=1;
				for($i=0; $row = $result->fetch(); $i++){
			?>
			<tr class="record">
            <td><?php echo $count++;?></td>
			<td><?php echo $row['date']; ?></td>
           
            <td><?php echo $row['report_type']; ?></td>
			
            <td><?php echo $row['description']; ?><br><?php echo $row['description1']; ?><br><?php echo $row['description2']; ?><br><?php echo $row['description3']; ?><br><?php echo $row['description4']; ?><br><?php echo $row['description5']; ?><br><?php echo $row['description6']; ?><br><?php echo $row['description7']; ?><br><?php echo $row['description8']; ?><br><?php echo $row['description9']; ?><br></td>
            
            
			
			
			
			</tr>
			<?php
				}
			?>
		
	</tbody>
	<table border="1" cellpadding="4" cellspacing="0" style="font-family: arial; font-size: 15px;  text-align:left;" width="100%">
                 <tr>
					<td colspan="5" align="left"><strong style="font-size: 15px; text-align:left; color: #222222; border-color:#03F "> Test Done By:		</strong></td>
					<td colspan="5" align="center"><strong style="font-size: 15px; text-align:left; color: #222222; border-color:#03F "> </strong></td>

                                        <td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">Sign:</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
					
					</strong></td>
				</tr>	
  <tr>
					<td colspan="5" align="left"><strong style="font-size: 15px; text-align:left; color: #222222; border-color:#03F "> Confirmed By:		</strong></td>
					<td colspan="5" align="center"><strong style="font-size: 15px; text-align:left; color: #222222; border-color:#03F "> ______________________</strong></td>

                                        <td colspan="5"><strong style="font-size: 15px; color: #222222; border-color:#03F">Sign:</strong></td>
					<td colspan="2"><strong style="font-size: 15px; color: #222222;">
					
					</strong></td>
				</tr>	

	</tbody>

</table>
</div>
<div class="clearfix"></div>
</div>
</body>
</html>