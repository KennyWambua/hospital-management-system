<?php
require_once('auth.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title> Hospital Management System </title>

  <!-- Optimize for mobile devices -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <!-- jQuery & JS files -->
  <?php include_once("tpl/common_js.php"); ?>
  <script src="js/script.js"></script>

  <!-- Stylesheets -->
  <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
  <link rel="stylesheet" href="css/style.css">

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
      color: #000000;
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

    #detailsTable {
      width: 100%;
      border-collapse: collapse;
    }

    #detailsTable td {
      vertical-align: top;
      padding-top: 20px;
    }
  </style>
</head>

<body>

  <!-- TOP BAR -->
  <?php include_once("tpl/top_bar.php"); ?>

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

  <!-- HEADER -->
  <div id="header-with-tabs">
    <div class="page-full-width cf">
      <ul id="tabs" class="fl">
      </ul>
    </div>
  </div>

  <!-- MAIN CONTENT -->
  <div id="content">
    <div class="page-full-width cf">

      <!-- SIDE MENU -->
      <div class="side-menu fl">
        <h3>Patient Management</h3>
        <ul>
          <li><a
              href="patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE&transdep=DENTAL">Patients
              In Line</a><br /></li>
          <li><a href="select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient
              File</a><br /></li>
          <li><a href="disease.php">Disease</a><br /></li>
          <li><a href="nurse/select_patient.php">Admit Patient</a><br /></li>
          <li><a href="nurse/select_file.php">Inpatient File</a><br /></li>
          <li><a href="common.php">Common complains</a><br /></li>
          <li><a href="nurse/select_patientdis.php">Discharge Patient</a><br /></li>
          <li><a href="appointment.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Appointments</a><br /></li>
          <li><a
              href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DOCTOR&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
              Request</a><br /></li>
        </ul>
        <div style="background: #ffffff">
          <script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

          <!-- posnic 120x90 vertical small -->
          <ins class="adsbygoogle" style="display:inline-block;width:120px;height:90px"
            data-ad-client="ca-pub-5212135413309920" data-ad-slot="3677012951">
          </ins>
          <script>
            (adsbygoogle = window.adsbygoogle || []).push({});
          </script>
        </div>
      </div>

      <!-- SIDE CONTENT -->
      <div class="side-content fr">

        <!-- CONTENT MODULE -->
        <div class="content-module">

          <!-- CONTENT MODULE HEADING -->
          <div class="content-module-heading cf">
            <h3 class="fl">Doctor's Module</h3>
            <span class="fr expand-collapse-text">Click to collapse</span>
            <span class="fr expand-collapse-text initial-expand">Click to expand</span>
          </div>

          <!-- CONTENT MODULE MAIN -->
          <!-- TOP BAR -->
          <?php include_once("tpl/top_bar.php"); ?>

          <h2 style="text-align: center; color:#F00;">
            <?php
            $p = $_GET['patient_id'];
            include('connect.php');
            $result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p ");
            $result->bindParam(':p', $p);
            $result->execute();
            for ($i = 0; $row = $result->fetch(); $i++) {
              ?>
              FILE RECORDS FOR: <?php echo $row['name']; ?>&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;
              SCHEME: <?php echo $row['insurance_id']; ?>&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;
              AGE: <?php echo $row['age']; ?>&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;
              BLOOD PRESSURE: &nbsp;&nbsp;&nbsp;<?php echo $row['bp']; ?>&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;
              TEMP: <?php echo $row['temp']; ?>&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;
              PULSE: <?php echo $row['rbs']; ?>&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;
              SP02: <?php echo $row['ox2']; ?>&nbsp;&nbsp;&nbsp;||&nbsp;&nbsp;&nbsp;
              BMI: <?php echo $row['bmi']; ?>
              <?php
            }
            ?>
          </h2>

          <?php
          $p = $_GET['patient_id'];
          include('connect.php');
          $result = $db->prepare("SELECT * FROM patient WHERE patient_id = :p ");
          $result->bindParam(':p', $p);
          $result->execute();
          for ($i = 0; $row = $result->fetch(); $i++) {
            ?>
            <a id="addd" href="select_patient.php?id=0" style="float: none;"></a>
            <a rel="facebox" id="cccc"
              href="add_history.php?patient_id=<?php echo $_GET['patient_id'] ?>&patient_name=<?php echo $row['name']; ?>&insurance_id=<?php echo $row['insurance_id']; ?>&cashier=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>"></a>&nbsp;&nbsp;&nbsp;&nbsp;

            <div class="clearfix"></div>

            <form action="saveeditmedication.php" method="post">
              <table class="form" style="border: 0;" cellspacing="0" cellpadding="0" id="detailsTable">
                <tr>
                  <th width="30%">
                    <h2 style="text-align: center;">
                      <b>Complains and History</b>
                    </h2>
                  </th>
                  <th width="25%">
                    <h2 style="text-align: center;">
                      <b>Lab</b>
                    </h2>
                  </th>
                  <th width="45%">
                    <h2 style="text-align: center;">
                      <b>Diagnosis and Medication</b>
                    </h2>
                  </th>
                </tr>
                <tr>
                  <input type="hidden" name="patient_id" value="<?php echo $_GET['patient_id']; ?>" />
                  <input type="hidden" name="patient_name" value="<?php echo $row['name']; ?>" />
                  <input type="hidden" name="insurance_id" value="<?php echo $row['insurance_id']; ?>" />
                  <input type="hidden" name="doctor_id" value="<?php echo $_SESSION['SESS_FIRST_NAME'] ?>" />
                  <input type="hidden" name="date" value="<?php echo date("Y-m-d"); ?>" />
                  <?php
          }
          ?>

                <?php
                include('connect.php');
                $id = $_GET['patient_id'];
                $d = $_GET['date'];
                $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                $result->bindParam(':userid', $id);
                $result->bindParam(':d', $d);
                $result->execute();
                for ($i = 0; $row = $result->fetch(); $i++) {
                  ?>
                  <td>
                    <br>
                    <b>Complains</b> <br><br>
                    <textarea rows="70" cols="105" name="complains" autocomplete="on" class="round full-width-textarea"
                      class="box-content padded" class="box closable-chat-box"
                      style=" height:125px; width: 220px; margin-left: 10px">
                          <?php echo $row['complains']; ?>
                        </textarea> <br><br><br>

                    <b>History</b> <br><br>
                    <textarea rows="70" cols="105" name="case_history" autocomplete="on" class="round full-width-textarea"
                      class="box-content padded" class="box closable-chat-box"
                      style=" height:125px; width: 220px; margin-left: 10px">
                          <?php echo $row['case_history']; ?>
                        </textarea> <br><br><br>

                    <b>Comments</b> <br><br>
                    <textarea rows="70" cols="105" name="comment" autocomplete="on" class="round full-width-textarea"
                      class="box-content padded" class="box closable-chat-box"
                      style=" height:100px; width: 220px; margin-left: 10px">
                          <?php echo $row['comment']; ?>
                        </textarea><br><br><br>

                    <h2 style="text-align: center"><b>Other Departments</b></h2><br>
                    <b>Select Department</b> <br><br>
                    <select name="department" class="round full-width-textarea" style="width: 200px; height:30px;">
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <option><?php echo $row['department']; ?></option>

                        <?php
                      }
                      ?>
                      <option>PHARMACY</option>
                      <option>LAB</option>
                      <option>THEATRE </option>
                      <option>ULTRA SOUND</option>
                      <option>PHYSIOTHERAPY </option>
                      <option>MCH </option>
                      <option>OPD </option>
                      <option>DENTAL </option>
                      <option>ORTHOPEDIC </option>
                    </select>
                  </td>

                  <td>
                    <b>Test 1</b> &nbsp;&nbsp;&nbsp;
                    <?php
                    include('connect.php');
                    $id = $_GET['patient_id'];
                    $d = $_GET['date'];
                    $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                    $result->bindParam(':userid', $id);
                    $result->bindParam(':d', $d);
                    $result->execute();
                    for ($i = 0; $row = $result->fetch(); $i++) {
                      ?>
                      <select name="test1" style="width: 200px; height:30px;">
                        <option><?php echo $row['test1']; ?></option>
                        <?php
                        include('connect.php');
                        $result = $db->prepare("SELECT * FROM services where department='LAB' order by product_name asc");
                        $result->execute();
                        while ($row = $result->fetch()) {
                          ?>
                          <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                          <?php
                        }
                        ?>
                      </select> <br><br>
                      <?php
                    }
                    ?>

                    <b>Test 2</b> &nbsp;&nbsp;&nbsp;
                    <?php
                    include('connect.php');
                    $id = $_GET['patient_id'];
                    $d = $_GET['date'];
                    $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                    $result->bindParam(':userid', $id);
                    $result->bindParam(':d', $d);
                    $result->execute();
                    for ($i = 0; $row = $result->fetch(); $i++) {
                      ?>
                      <select name="test2" class="round full-width-textarea" style="width: 200px; height:25px">
                        <option><?php echo $row['test2']; ?></option>
                        <?php
                        include('connect.php');
                        $result = $db->prepare("SELECT * FROM services where department='LAB' order by product_name asc");
                        $result->execute();
                        while ($row = $result->fetch()) {
                          ?>
                          <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                          <?php
                        }
                        ?>
                      </select>
                      <?php
                    }
                    ?> <br><br>

                    <b>Test 3</b> &nbsp;&nbsp;&nbsp;
                    <?php
                    include('connect.php');
                    $id = $_GET['patient_id'];
                    $d = $_GET['date'];
                    $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                    $result->bindParam(':userid', $id);
                    $result->bindParam(':d', $d);
                    $result->execute();
                    for ($i = 0; $row = $result->fetch(); $i++) {
                      ?>
                      <select name="test3" style="width: 200px; height:30px;">
                        <option><?php echo $row['test3']; ?></option>
                        <?php
                        include('connect.php');
                        $result = $db->prepare("SELECT * FROM services where department='LAB' order by product_name asc");
                        $result->execute();
                        while ($row = $result->fetch()) {
                          ?>
                          <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                          <?php
                        }
                        ?>
                      </select>
                      <?php
                    }
                    ?> <br><br>

                    <b>Test 4</b> &nbsp;&nbsp;&nbsp;
                    <?php
                    include('connect.php');
                    $id = $_GET['patient_id'];
                    $d = $_GET['date'];
                    $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                    $result->bindParam(':userid', $id);
                    $result->bindParam(':d', $d);
                    $result->execute();
                    for ($i = 0; $row = $result->fetch(); $i++) {
                      ?>
                      <select name="test4" style="width: 200px; height:30px;">
                        <option><?php echo $row['test4']; ?></option>
                        <?php
                        include('connect.php');
                        $result = $db->prepare("SELECT * FROM services where department='LAB' order by product_name asc");
                        $result->execute();
                        while ($row = $result->fetch()) {
                          ?>
                          <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                          <?php
                        }
                        ?>
                      </select>
                      <?php
                    }
                    ?> <br><br>

                    <b>Test 5</b> &nbsp;&nbsp;&nbsp;
                    <?php
                    include('connect.php');
                    $id = $_GET['patient_id'];
                    $d = $_GET['date'];
                    $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                    $result->bindParam(':userid', $id);
                    $result->bindParam(':d', $d);
                    $result->execute();
                    for ($i = 0; $row = $result->fetch(); $i++) {
                      ?>
                      <select name="test5" style="width: 200px; height:30px;">
                        <option><?php echo $row['test5']; ?></option>
                        <?php
                        include('connect.php');
                        $result = $db->prepare("SELECT * FROM services where department='LAB' order by product_name asc");
                        $result->execute();
                        while ($row = $result->fetch()) {
                          ?>
                          <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                          <?php
                        }
                        ?>
                      </select>
                      <?php
                    }
                    ?> <br><br><br>

                    <h2 align="center"><b>Results</b></h2>

                    <textarea rows="70" cols="105" name="complain2" autocomplete="on" class="round full-width-textarea"
                      class="box-content padded" class="box closable-chat-box" style=" height:250px; width: 300px;">

                        <?php
                        include('connect.php');
                        $id = $_GET['patient_id'];
                        $d = date('Y-m-d');
                        $result = $db->prepare("SELECT * FROM diagnosis_report WHERE date=:d and patient_id= :userid");
                        $result->bindParam(':userid', $id);
                        $result->bindParam(':d', $d);
                        $result->execute();
                        for ($i = 0; $row = $result->fetch(); $i++) {
                          ?>
                            <?php echo $row['report_type']; ?>--------------
                            <?php echo $row['description1']; ?>    <?php echo $row['description2']; ?>    <?php echo $row['description3']; ?>    <?php echo $row['description4']; ?>    <?php echo $row['description']; ?>    <?php echo $row['description5']; ?>    <?php echo $row['description6']; ?>    <?php echo $row['description7']; ?>    <?php echo $row['description8']; ?>    <?php echo $row['description9']; ?>
                        
                            <?php
                        }
                        ?>
                      </textarea>
                  </td>

                  <td>

                    <h2 align="center"> <b>Dia 1</b> &nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <select name="diagnosis" style="width: 350px;  height:30px;">
                          <option><?php echo $row['diagnosis']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM diagnosis order by name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['name']; ?>"><?php echo $row['name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <?php
                      }
                      ?>
                    </h2> <br><br>


                    <h2 align="center"><b> Dia 2 </b>&nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <select name="diagnosis1" style="width: 350px;  height:30px;">
                          <option><?php echo $row['diagnosis1']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM diagnosis order by name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['name']; ?>"><?php echo $row['name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <?php
                      }
                      ?>
                    </h2> <br><br>

                    <h2 align="center"><b>Dia 3</b> &nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <input type="text" name="diagnosis2" value="<?php echo $row['diagnosis2']; ?>"
                          style="width: 340px; height: 25px; font-size: 13px; border: 1px solid rgba(0, 0, 0, 0.5); border-radius: 4px;">
                        <?php
                      }
                      ?>
                    </h2> <br><br>

                    <h2 align="center"> <b>Med 1</b> &nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      while ($row = $result->fetch()) {
                        ?>
                        <select name="medication1" style="width: 220px; height:30px;">
                          <option><?php echo $row['medication1']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM products order by product_name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <input type="text" name="desc1" value="" placeholder="Desc"
                          style="width: 100px; height: 16px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
                        <?php
                      }
                      ?>
                    </h2>

                    <h2 align="center"><b>Med 2</b> &nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <select name="medication2" style="width: 220px;  height:30px;">
                          <option><?php echo $row['medication2']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM products order by product_name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <input type="text" name="desc2" value="" placeholder="Desc"
                          style="width: 100px; height: 16px; height: px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
                        <?php
                      }
                      ?>
                    </h2>

                    <h2 align="center"><b>Med 3</b> &nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <select name="medication3" style="width: 220px;  height:30px;">
                          <option><?php echo $row['medication3']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM products order by product_name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <input type="text" name="desc3" value="" placeholder="Desc"
                          style="width: 100px; height: 16px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
                        <?php
                      }
                      ?>
                    </h2>

                    <h2 align="center"><b>Med 4</b> &nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <select name="medication4" style="width: 220px;  height:30px;">
                          <option><?php echo $row['medication4']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM products order by product_name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <input type="text" name="desc4" value="" placeholder="Desc"
                          style="width: 100px; height: 16px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
                        <?php
                      }
                      ?>
                    </h2>

                    <h2 align="center"><b>Med 5</b> &nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <select name="medication5" style="width: 220px;  height:30px;">
                          <option><?php echo $row['medication5']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM products order by product_name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <input type="text" name="desc5" value="" placeholder="Desc"
                          style="width: 100px; height: 16px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
                        <?php
                      }
                      ?>
                    </h2>

                    <h2 align="center"><b>Med 6</b> &nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <select name="medication6" style="width: 220px;  height:30px;">
                          <option><?php echo $row['medication6']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM products order by product_name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <input type="text" name="desc6" value="" placeholder="Desc"
                          style="width: 100px; height: 16px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
                        <?php
                      }
                      ?>
                    </h2>

                    <h2 align="center"><b>Med 7</b> &nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <select name="medication7" style="width: 220px;  height:30px;">
                          <option><?php echo $row['medication7']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM products order by product_name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <input type="text" name="desc7" value="" placeholder="Desc"
                          style="width: 100px; height: 16px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
                        <?php
                      }
                      ?>
                    </h2>

                    <h2 align="center"><b>Med 8</b> &nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <select name="medication8" style="width: 220px;  height:30px;">
                          <option><?php echo $row['medication8']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM products order by product_name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <input type="text" name="desc8" value="" placeholder="Desc"
                          style="width: 100px; height: 16px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
                        <?php
                      }
                      ?>
                    </h2>

                    <h2 align="center"><b>Med 9</b> &nbsp;&nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <select name="medication9" style="width: 220px;  height:30px;">
                          <option><?php echo $row['medication9']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM products order by product_name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <input type="text" name="desc9" value="" placeholder="Desc"
                          style="width: 100px; height: 16px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />
                        <?php
                      }
                      ?>
                    </h2>

                    <h2 align="center"><b>Med 10</b> &nbsp;&nbsp;
                      <?php
                      include('connect.php');
                      $id = $_GET['patient_id'];
                      $d = $_GET['date'];
                      $result = $db->prepare("SELECT * FROM prescription WHERE date=:d and patient_id= :userid");
                      $result->bindParam(':userid', $id);
                      $result->bindParam(':d', $d);
                      $result->execute();
                      for ($i = 0; $row = $result->fetch(); $i++) {
                        ?>
                        <select name="medication10" style="width: 220px;  height:30px;">
                          <option><?php echo $row['medication10']; ?></option>
                          <?php
                          include('connect.php');
                          $result = $db->prepare("SELECT * FROM products order by product_name ASC");
                          $result->execute();
                          while ($row = $result->fetch()) {
                            ?>
                            <option value="<?php echo $row['product_name']; ?>"><?php echo $row['product_name']; ?></option>
                            <?php
                          }
                          ?>
                        </select>
                        <input type="text" name="desc10" value="" placeholder="Desc"
                          style="width: 100px; height: 16px; padding-top: 6px; padding-bottom: 6px; margin-right: 4px;" />

                        <?php
                      }
                      ?>
                    </h2>
                  </td>

                    <?php
                }
                ?>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>


                <td></td>


                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;

                </td>
                <td>
                  <input class="button round blue image-right ic-add text-upper" type="submit" name="Submit"
                    value="Send">
                  (Control + S)
                <td>&nbsp;

                </td>

              </tr>
            </table>
          </form>

          <table id="resultTable" data-responsive="table" style="text-align: left;">
            <thead>
              <tr>
                <th width="5%">Patient Id</th>
                <th width="10%">Date</th>
                <th width="15%">Case History </th>
                <th width="15%">Test </th>
                <th width="15%">Results </th>
                <th width="45%">Medication </th>
                <th width="30%">Diagnosis</th>
                <th width="15%">Doctor</th>


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
                  <td><?php echo $row['date']; ?></td>
                  <td><b><i>Complains</i></b><br /><?php echo $row['complains']; ?><br /><b><i>Case
                        History</i></b><br /><?php echo $row['case_history']; ?><br /><b><i>Comments</i></b><br /><?php echo $row['comment']; ?>
                  </td>


                  <td>
                    <?php echo $row['test1']; ?><br /><?php echo $row['test2']; ?><br /><?php echo $row['test3']; ?><br /><?php echo $row['test4']; ?><br /><?php echo $row['test5']; ?><br /><?php echo $row['test6']; ?><br /><?php echo $row['test7']; ?><br /><?php echo $row['test8']; ?><br /><?php echo $row['service1']; ?><br /><?php echo $row['service2']; ?>
                  </td>
                  <td><?php echo $row['complain2']; ?></td>
                  <td><?php echo $row['medication1']; ?>
                    &nbsp;&nbsp;<?php echo $row['desc1']; ?><br><?php echo $row['medication2']; ?>&nbsp;&nbsp;<?php echo $row['desc2']; ?><br><?php echo $row['medication3']; ?>&nbsp;&nbsp;<?php echo $row['desc3']; ?><br><?php echo $row['medication4']; ?>&nbsp;&nbsp;<?php echo $row['desc4']; ?><br><?php echo $row['medication5']; ?>&nbsp;&nbsp;<?php echo $row['desc5']; ?><br><?php echo $row['medication6']; ?>&nbsp;&nbsp;<?php echo $row['desc6']; ?><br><?php echo $row['medication7']; ?>&nbsp;&nbsp;<?php echo $row['desc7']; ?><br><?php echo $row['medication8']; ?>&nbsp;&nbsp;<?php echo $row['desc8']; ?><br><?php echo $row['medication9']; ?>&nbsp;&nbsp;<?php echo $row['desc9']; ?><br><?php echo $row['medication10']; ?>&nbsp;&nbsp;<?php echo $row['desc10']; ?>
                  </td>
                  <td>
                    <?php echo $row['diagnosis']; ?><br><?php echo $row['diagnosis1']; ?><br><?php echo $row['diagnosis2']; ?>
                  </td>
                  <td><?php echo $row['doctor_id']; ?></td>

                </tr>
                <?php
              }
              ?>

            </tbody>


            </tbody>

          </table>

          </tbody>
          </table><br>


</body>

</html>