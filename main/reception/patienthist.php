<?php
  require_once('auth.php');
  ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Hospital Management System</title>

  <!-- Stylesheets -->
  <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/main.css">

  <!-- Optimize for mobile devices -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- jQuery & JS files -->
  <?php include_once("tpl/common_js.php"); ?>
  <script src="js/script.js"></script>

</head>

<body>

  <!-- TOP BAR -->
  <?php include_once("tpl/top_bar.php"); ?>
  <!-- end top-bar -->
  <?php
  function createRandomPassword()
  {
    $chars = "003232303232023232023456789";
    srand((float)microtime() * 1000000);
    $i = 0;
    $pass = '';
    while ($i <= 5) {

      $num = rand() % 33;

      $tmp = substr($chars, $num, 1);

      $pass = $pass . $tmp;

      $i++;
    }
    return $pass;
  }
  $finalcode = 'RS-' . createRandomPassword();
  ?>
  <div id="header-with-tabs">

    <div class="page-full-width cf">

      <ul id="tabs" class="fl">
        <li><a href="../patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE&transdep=DENTAL">Patients In Line</a><br /></li>
        <li><a href="../select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient File</a><br /></li>
        <li><a href="../disease.php">Disease</a><br /></li>
        <li><a href="select_patient.php">Admit Patient</a><br /></li>
        <li><a href="select_file.php">Inpatient File</a><br /></li>
        <li><a href="../common.php">Common complains</a><br /></li>
        <li><a href="select_patientdis.php">Discharge Patient</a><br /></li>
        <li><a href="../appointment.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Appointments</a><br /></li>
        <li><a href="../storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DOCTOR&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store Request</a><br /></li>



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
          <li><a href="../patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE&transdep=DENTAL">Patients In Line</a><br /></li>
          <li><a href="../select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient File</a><br /></li>
          <li><a href="../disease.php">Disease</a><br /></li>
          <li><a href="select_patient.php">Admit Patient</a><br /></li>
          <li><a href="select_file.php">Inpatient File</a><br /></li>
          <li><a href="../common.php">Common complains</a><br /></li>
          <li><a href="select_patientdis.php">Discharge Patient</a><br /></li>
          <li><a href="../appointment.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Appointments</a><br /></li>
          <li><a href="../storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DOCTOR&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store Request</a><br /></li>


        </ul>
        <div style="background: #ffffff">
          <script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

          <script>
            (adsbygoogle = window.adsbygoogle || []).push({});
          </script>

        </div>
      </div> <!-- end side-menu -->

      <div class="side-content fr">

        <div class="content-module">

          <div class="content-module-heading cf">

            <h3 class="fl">doctor's module</h3>
            <span class="fr expand-collapse-text">Click to collapse</span>
            <span class="fr expand-collapse-text initial-expand">Click to expand</span>

          </div> <!-- end content-module-heading -->



          <?php
          $p = $_GET['patient_id'];
          include('connect.php');


          $result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p ");
          $result->bindParam(':p', $p);



          $result->execute();
          for ($i = 0; $row = $result->fetch(); $i++) {
          ?>
            <h1 align="center" style="color:#F00">PRESCRIPTION FOR: <?php echo $row['name']; ?></h1>
          <?php
          }
          ?>


          <div class="clearfix"></div>
        </div>
        <table id="resultTable" data-responsive="table" style="text-align: left;">
          <thead>
            <tr>
              <th width="10%">Patient Id</th>
              <th width="30%">Name</th>
              <th width="30%">Date</th>
              <th width="15%">Doctor</th>
              <th width="35%">Action</th>

            </tr>
          </thead>
          <tbody>

            <?php

            $p = $_GET['patient_id'];
            include('connect.php');


            $result = $db->prepare("SELECT * FROM prescription WHERE patient_id = :p order by prescription_id desc ");
            $result->bindParam(':p', $p);


            $result->execute();
            $count = 1;
            for ($i = 0; $row = $result->fetch(); $i++) {
            ?>
              <tr class="record">

                <td><?php echo $row['patient_id']; ?></td>
                <td><?php echo $row['patient_name']; ?></td>
                <td><?php echo $row['date']; ?></td>

                <td><?php echo $row['doctor_id']; ?></td>





                <td><a rel="facebox" href="histprint.php?patient_id=<?php echo $row['patient_id']; ?>&date=<?php echo $row['date']; ?>"><input type="button" align="left" class="button round blue image-right ic-add text-upper" value="Print" /></a>
                  <a rel="facebox" href="edit.php?prescription_id=<?php echo $row['prescription_id']; ?>&date=<?php echo $row['date']; ?>"><input type="button" align="left" class="button round blue image-right ic-add text-upper" value="Edit" /></a>

                  <a rel="facebox" href="deletepr.php?prescription_id=<?php echo $row['prescription_id']; ?>&date=<?php echo $row['date']; ?>"><input type="button" align="left" class="button round blue image-right ic-add text-upper" value=".." /></a>
                  <div class="clearfix"></div>
      </div>
      </td>
      </tr>
    <?php
            }
    ?>

    </tbody>


    </tbody>
    </table><br>


</body>

</html>