<?php
	//Start session
	session_start();
	//Unset the variables stored in session
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title> Hospital Management System </title>
	
	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">
	
	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	
	<!-- jQuery & JS files -->
	<?php include_once("tpl/common_js.php"); ?>
	<script src="js/script.js"></script>  

	<style>
		body {
			background: #f8f9fa;
		}
        .formContainer {
            position: relative;
            width: 500px;
            margin: 0 auto;
            padding: 20px;
			margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 0px #000;
        }

        .errorMessages {
            position: absolute;
            top: 15px;
            left: 0;
            right: 25px;
            color: red;
            text-align: right;
            margin-bottom: 20px;
        }

        .errorMessages ul {
            margin: 0;
            padding: 0;
            list-style-type: none;
        }

        .errorMessages li {
            margin: 0;
            padding: 5px 0;
        }

        .cmxform {
            position: relative;
            z-index: 1;
        }
    </style>
</head>
<body>

	<!-- TOP BAR -->
	<?php include_once("tpl/top_bar.php"); ?>

	<!-- MAIN CONTENT -->
	<div  align="center" id="content">
		<div class="formContainer">
			<?php
				if (isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) > 0) {
					echo '<div class="errorMessages"><ul>';
					foreach ($_SESSION['ERRMSG_ARR'] as $msg) {
						echo '<li>' . $msg . '</li>';
					}
					echo '</ul></div>';
					unset($_SESSION['ERRMSG_ARR']);
				}
			?>

			<form action="login.php" method="POST" id="form1"  class="cmxform" autocomplete="off">
				<fieldset>
					<p style="margin-top: 40px;">
						<label> Username </label>
						<input type="text" id="login-username" style="width:200px; height:25px"  align="middle" class="round full-width-input" placeholder="Enter Username" name="username" autofocus />
					</p>
					<p>
						<label> Password </label>
						<input type="password" id="login-password" style="width:200px; height:25px"  align="middle" name="password" placeholder="Enter Password" class="round full-width-input"  />
					</p>

					<?php if(isset($_SESSION['error'])){echo $_SESSION['error'];} unset($_SESSION['error']);?>
					
					<a href="forget_pass.php" class="button ">Forgot your password?</a> <br>
					
					<!--<a href="dashboard.php" class="button round blue image-right ic-right-arrow">LOG IN</a>-->
					<input type="submit" class="button round blue image-right ic-right-arrow" name="submit" value="LOG IN" />
				</fieldset>
				<br/>
			</form>

			<div style="margin: 30px 10px;">
				<script>
					(function(d, s, id) {
						var js, fjs = d.getElementsByTagName(s)[0];
						if (d.getElementById(id)) return;
						js = d.createElement(s); js.id = id;
						js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=286371564842269";
						fjs.parentNode.insertBefore(js, fjs);
					}
					(document, 'script', 'facebook-jssdk'));
				</script>

				<div id="fb-root"></div>
				<div class="fb-like" data-href="https://www.facebook.com/posnic.point.of.sale" data-width="450" data-show-faces="true" data-send="true"></div>
				<div class="g-plusone" data-href="https://plus.google.com/u/0/107268519615804538483"></div> 
					<script type="text/javascript">
						(function() {
							var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
							po.src = 'https://apis.google.com/js/plusone.js';
							var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
						})();
					</script>
			
				</div>
			</div>
		</div>
	</div> 
	
	<!-- FOOTER -->
	<div id="footer"></div>

</body>
</html>