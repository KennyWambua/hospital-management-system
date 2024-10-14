<html>
<head>
<title>Phermacy management system</title>
<link href="css/layout.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.js"></script>
<script>
function suggest(inputString){
		if(inputString.length == 0) {
			$('#suggestions').fadeOut();
		} else {
		$('#country').addClass('load');
			$.post("autosuggestname.php", {queryString: ""+inputString+""}, function(data){
				if(data.length >0) {
					$('#suggestions').fadeIn();
					$('#suggestionsList').html(data);
					$('#country').removeClass('load');
				}
			});
		}
	}

	function fill(thisValue) {
		$('#country').val(thisValue);
		setTimeout("$('#suggestions').fadeOut();", 600);
	}

</script>

<style>
#result {
	height:20px;
	font-size:16px;
	font-family:Arial, Helvetica, sans-serif;
	color:#333;
	padding:5px;
	margin-bottom:10px;
	background-color:#FFFF99;
}
#country{
	border: 1px solid #999;
	background: #EEEEEE;
	padding: 5px 10px;
	box-shadow:0 1px 2px #ddd;
    -moz-box-shadow:0 1px 2px #ddd;
    -webkit-box-shadow:0 1px 2px #ddd;
}
.suggestionsBox {
	position: absolute;
	left: 10px;
	margin: 0;
	width: 268px;
	top: 40px;
	padding:0px;
	background-color: #000;
	color: #fff;
}
.suggestionList {
	margin: 0px;
	padding: 0px;
}
.suggestionList ul li {
	list-style:none;
	margin: 0px;
	padding: 6px;
	border-bottom:1px dotted #666;
	cursor: pointer;
}
.suggestionList ul li:hover {
	background-color: #FC3;
	color:#000;
}
ul {
	font-family:Arial, Helvetica, sans-serif;
	font-size:11px;
	color:#FFF;
	padding:0;
	margin:0;
}

.load{
background-image:url(loader.gif);
background-position:right;
background-repeat:no-repeat;
}

#suggest {
	position:relative;
}
.combopopup{
	padding:3px;
	width:268px;
	border:1px #CCC solid;
}

</style>
<div id = "header">

    <table border="0" cellspacing="0px" width="100%"  height="5%" bgcolor="#CC3300" cellpadding="0px">
    <tr>
 <th scope="col" align="left"><font color="#FFFFFF" size="10px">H</font><span style="font-size: 28px; color:#FFF">ospital Management System</span></th>
         </td>
        
    </tr>
    </table>
    </div>
</head>	
</head>
<body onLoad="document.getElementById('country').focus();">
<form action="savesales3.php" method="post">
<div id="ac" align="center">
<input type="hidden" name="date" value="<?php echo date("m/d/Y"); ?>" />
<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />

<input type="hidden" name="amount" value="<?php echo $_GET['total']; ?>" />
<input type="hidden" name="cost" value="<?php echo $_GET['cost']; ?>" />
<input type="hidden" name="ptype" value="<?php echo $_GET['pt']; ?>" />
<input type="hidden" name="cashier" value="<?php echo $_GET['cashier']; ?>" /><br><br>

     
      <div class="suggestionsBox" id="suggestions" style="display: none;">
        <div class="suggestionList" id="suggestionsList"> &nbsp; </div>
      </div>
<?php
$asas=$_GET['pt'];
if($asas=='credit') {
?>

<input type="text" name="due" placeholder="Due Date" style="width: 268px; margin-bottom: 15px;" /><br>

<?php
}
if($asas=='cash') {
?> 
<select  name="session">
 <option>Day Session</option>
<option>Night Session</option>

</select><br/><br/><br/>

<input type="text" name="number" placeholder="Patient Name" style="width: 268px; margin-bottom: 15px;" /><br>
<input type="text" name="cash" placeholder="Cash" style="width: 268px; margin-bottom: 15px;" /><br>

<select  name="transdep" sytle="height:30px;">
<option>LAB</option>
<option>CONSULTATION</option>
<option>PHARMACY</option>
<option>MCH</option>
<option>OPD</option>
<option>INPATIENT</option>
<option>DENTAL</option>
<option>X-RAY</option>
<option>THREATRE</option>
<option>OPTICALS</option>
<option>OTHERS</option>
</select><br/><br/>
<?php
}
?><input id="btn" type="submit" value="save" style="width: 268px;" />
</div>
</form>
</body>
</html>