<?php
require_once('auth.php');
?>
<?php
include('connect.php');
$id = $_GET['id'];
$result = $db->prepare("SELECT * FROM diagnosis WHERE id= :userid");
$result->bindParam(':userid', $id);
$result->execute();
for ($i = 0; $row = $result->fetch(); $i++) {
  ?>
  <!DOCTYPE html>

  <html lang="en">

  <head>
    <meta charset="utf-8">
    <title>Hospital Management System</title>

    <!-- Stylesheets -->
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
    <link rel="stylesheet" href="css/style.css">

    <!-- Optimize for mobile devices -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- jQuery & JS files -->
    <?php include_once("tpl/common_js.php"); ?>
    <script src="js/script.js"></script>
    <style type="text/css">
      body {
        margin-left: 0px;
        margin-top: 0px;
        margin-right: 0px;
        margin-bottom: 0px;
        background-color: #FFFFFF;
      }

      * {
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
        background-color: #FF9900;
        font-size: 90%;
        padding: 3px 0 5px 3px;
        border: 1px solid #000000;
        color: #333333;
        margin: 0px;
        width: 159px;
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
        width: 160px;
      }

      #vertmenu ul li a:hover,
      #vertmenu ul li a:focus {
        color: #000000;
        background-color: #eeeeee;
      }

      .style1 {
        color: #000000
      }

      div.pagination {

        padding: 3px;

        margin: 3px;

      }



      div.pagination a {

        padding: 2px 5px 2px 5px;

        margin: 2px;

        border: 1px solid #AAAADD;



        text-decoration: none;
        /* no underline */

        color: #000099;

      }

      div.pagination a:hover,
      div.pagination a:active {

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
    <script>
      /*$.validator.setDefaults({
        submitHandler: function() { alert("submitted!"); }
      });*/
      $(document).ready(function () {

        // validate signup form on keyup and submit
        $("#form1").validate({
          rules: {
            use_type: {
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

    <?php
    function createRandomPassword()
    {
      $chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
      $pass = '';
      $i = 0;
      while ($i <= 5) {
        $num = random_int(0, strlen($chars) - 1);
        $tmp = substr($chars, $num, 1);
        $pass .= $tmp;
        $i++;
      }
      return $pass;
    }
    $finalcode = 'RS-' . createRandomPassword();
    ?>
  </head>

  <body>

    <!-- TOP BAR -->
    <?php include_once("tpl/top_bar.php"); ?>
    <!-- end top-bar -->

    <div id="header-with-tabs">
		
		<div class="page-full-width cf">
	
			<ul id="tabs" class="fl">
<li><a href="patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME']?>&status=ACTIVE&transdep=DENTAL">Patients In Line</a><br/></li>
<li><a href="select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient File</a><br/></li>
<li><a href="disease.php">Disease</a><br/></li>  
<li><a href="nurse/select_patient.php">Admit Patient</a><br/></li>
<li><a href="nurse/select_file.php">Inpatient File</a><br/></li>
<li><a href="common.php">Common complains</a><br/></li>  
<li><a href="nurse/select_patientdis.php">Discharge Patient</a><br/></li>
<li><a href="appointment.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Appointments</a><br/></li>
<li><a href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DOCTOR&user=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Store Request</a><br/></li>                 
			</ul> <!-- end tabs -->
			
			<!-- Change this image to your own company's logo -->
			<!-- The logo will automatically be resized to 30px height. -->
			
		</div> <!-- end full-width -->	

	</div> <!-- end header -->
	
	
	<!-- MAIN CONTENT -->
	<div id="content">
		
		<div class="page-full-width cf">

			<div class="side-menu fl">
				
				<h3>Patient Management</h3>
				<ul>
<li><a href="patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME']?>&status=ACTIVE&transdep=DENTAL">Patients In Line</a><br/></li>
<li><a href="select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient File</a><br/></li>
<li><a href="disease.php">Disease</a><br/></li>  
<li><a href="nurse/select_patient.php">Admit Patient</a><br/></li>
<li><a href="nurse/select_file.php">Inpatient File</a><br/></li>
<li><a href="common.php">Common complains</a><br/></li>  
<li><a href="nurse/select_patientdis.php">Discharge Patient</a><br/></li>
<li><a href="appointment.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Appointments</a><br/></li>
<li><a href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DOCTOR&user=<?php echo $_SESSION['SESS_FIRST_NAME']?>">Store Request</a><br/></li>           
				</ul>
				        <div style="background: #ffffff">
                                              <script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- posnic 120x90 vertical small -->
<ins class="adsbygoogle"
     style="display:inline-block;width:120px;height:90px"
     data-ad-client="ca-pub-5212135413309920"
     data-ad-slot="3677012951"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
                               
                                </div>                              
			</div> <!-- end side-menu -->
			
			<div class="side-content fr">
			
				<div class="content-module">
				
					<div class="content-module-heading cf">
					
						<h3 class="fl">Doctor's Module</h3>
						<span class="fr expand-collapse-text">Click to collapse</span>
						<span class="fr expand-collapse-text initial-expand">Click to expand</span>
					
					</div> <!-- end content-module-heading -->
<div class="content" id="content">
<div style="font-weight:bold; text-align:center;font-size:14px;margin-bottom: 15px;">

</div>
        <div class="side-content fr">
          <div class="content-module">
            <form action="saveDiseaseEdited.php" method="post">
              <div id="ac" align="center">
                <input type="hidden" name="memi" value="<?php echo $id; ?>" /><br>
                <b><span>Code</span></b>
                <input type="text" style="height:25px" class="round default-width-input" name="code"
                  value="<?php echo $row['code']; ?>" /><br><br>

                <b><span>Name</span></b>
                <input type="text" style="height:25px" class="round default-width-input" name="name"
                  value="<?php echo $row['name']; ?>" /><br><br>

                <input style="margin: 0px 0px 20px;" id="btn" type="submit" value="save" />
              </div>
            </form>
            <?php
}
?>