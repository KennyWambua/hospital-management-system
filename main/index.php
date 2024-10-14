<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Hospital Management System</title>

  <!-- Optimize for mobile devices -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

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
  </style>

</head>

<body>

  <!-- TOP BAR -->
  <?php include_once("tpl/top_bar.php"); ?>

  <?php require_once('auth.php'); ?>

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

  <!-- Header -->
  <div id="header-with-tabs">
    <div class="page-full-width cf">
      <ul id="tabs" class="fl">

      </ul>

      <!-- Change this image to your own company's logo -->
      <!-- The logo will automatically be resized to 30px height. -->

    </div> <!-- end full-width -->

  </div>

  <!-- MAIN CONTENT -->
  <div id="content">

    <div class="page-full-width cf">

      <div class="side-menu fl">

        <h3>Main Dashbord</h3>
        <ul>
          <?php
          $position = $_SESSION['SESS_LAST_NAME'];
          if ($position == 'Administrator') {
            ?>
            <li><a href="reception/new_patient.php">Reception</a><br /></li>
            <li> <a
                href="doctor/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Doctor</a><br />
            </li>
            <li><a href="pharmacy/products2.php">Pharmacy</a><br /></li>
            <li><a href="lab/lab_file.php?patient_id=0">Lab</a><br /></li>
            <li><a href="mch/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Mch</a><br />
            </li>
            <li><a href="nurse/select_patient.php?patient_id=0">Inpatient</a><br /></li>
            <li><a href="accounts/collectionadmin.php?d1=0&d2=0&shift=0">Accounts</a><br /></li>
            <li><a rel="facebox"
                href="theatre/select_patient.php?id=cash&invoice=<?php echo $finalcode ?>">Theatre</a><br /></li>
            <li><a rel="facebox" href="users.php">Manage Users</a><br /></li>
            <li><a rel="facebox" href="services.php">Services</a><br /></li>
            <?php
          }
          if ($position == 'pharmacy') {
            ?>

            <li><a href="pharmacy/line.php">Patient In Line</a><br /></li>
            <li><a href="accounts/services.php?id=cash&invoice=<?php echo $finalcode ?>">Patient payment</a><br /></li>

            <li><a href="accounts/select_customerl.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=LAB">Lab
                payment</a><br /></li>
            <li><a href="accounts/select_customer2.php?id=cash&invoice=<?php echo $finalcode ?>">Other dep
                payment</a><br /></li>
            <li><a href="pharmacy/cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash
                Sale</a><br /></li>
            <li><a href="pharmacy/select_customerc.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash
                Prescription</a><br /></li>
            <li><a href="pharmacy/select_customer.php?id=credit&invoice=<?php echo $finalcode ?>">Insurance
                Prescription</a><br /></li>
            <li><a
                href="pharmacy/inpatient_orders.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Inpatient
                Drugs</a><br /></li>

            <li><a href="pharmacy/products2.php">Drugs</a><br /></li>
            <li><a href="pharmacy/receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Drugs</a><br /></li>
            <li><a href="pharmacy/consuptionreport.php">Drug Cons Report</a><br /></li>
            <li><a href="pharmacy/selectreceipt.php">Receipt Preview</a><br /></li>

            <?php
          }
          if ($position == 'admin_pharmacy') {
            ?>

            <li><a href="pharmacy/line.php">Patient In Line</a><br /></li>
            <li><a href="pharmacy/cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash
                Sale</a><br /></li>
            <li><a href="pharmacy/select_customerc.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash
                Prescription</a><br /></li>
            <li><a href="pharmacy/select_customer.php?id=credit&invoice=<?php echo $finalcode ?>">Insurance
                Prescription</a><br /></li>
            <li><a
                href="pharmacy/inpatient_orders.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Inpatient
                Drugs</a><br /></li>
            <li><a href="pharmacy/products.php">Drugs</a><br /></li>
            <li><a href="pharmacy/receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Drugs</a><br /></li>
            <li><a href="pharmacy/consuptionreport.php">Drug Cons Report</a><br /></li>
            <li><a
                href="pharmacy/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>
            <?php
          }
          if ($position == 'accounts') {
            ?>

            <li><a href="accounts/services.php?id=cash&invoice=<?php echo $finalcode ?>">Patient payment</a><br /></li>
            <li><a
                href="accounts/select_customerc.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY">Pharmacy
                payment</a><br /></li>
            <li><a href="accounts/select_customerl.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=LAB">Lab
                payment</a><br /></li>
            <li><a href="accounts/select_customer2.php?id=cash&invoice=<?php echo $finalcode ?>">Other dep
                payment</a><br /></li>
            <li><a href="accounts/select_collection.php">Daily Insurance</a><br /></li>
            <li><a href="accounts/periodreport.php">View/Print Report</a><br /></li>
            <li><a href="accounts/collectionadmin.php?d1=0&d2=0&shift=0">Collection</a><br /></li>
            <li><a href="accounts/embills.php?d1=0&d2=0">Bills</a><br /></li>
            <li><a href="accounts/supplier.php">Supplier</a><br /></li>
            <li><a href="accounts/viewinvoices.php?d1=0&d2=0">View Invoices</a><br /></li>
            <li><a href="accounts/products1.php">Order List</a><br /></li>

            <?php
          }
          if ($position == 'nurse') {
            ?>

            <li><a href="nurse/select_file.php">Inpatient File</a><br /></li>
            <li><a href="nurse/select_department.php">Inpatient Request</a><br /></li>
            <li><a href="nurse/select_request.php">Request Results</a><br /></li>
            <li><a href="nurse/select_number.php">Patient Observations</a><br /></li>
            <li><a href="nurse/select_summary.php">Discharge Summary</a><br /></li>
            <li><a href="nurse/patientsreport.php">Report</a><br /></li>
            <li><a href="nurse/manege_bed.php">Beds</a><br /></li>
            <li><a href="nurse/order.php">Order Drugs</a><br /></li>
            <li><a href="nurse/operationlist.php">Operations List</a><br /></li>
            <li><a
                href="nurse/select_ope.php?invoice=<?php echo $finalcode ?>&cashier=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Operation</a><br />
            </li>
            <li><a
                href="nurse/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=INPATIENT&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>

            <?php
          }
          if ($position == 'martanity') {
            ?>

            <li><a href="martanity/select_file.php">Inpatient File</a><br /></li>
            <li><a href="martanity/select_department.php">Inpatient Request</a><br /></li>
            <li><a href="martanity/select_request.php">Request Results</a><br /></li>
            <li><a href="martanity/select_number.php">Patient Observations</a><br /></li>
            <li><a href="martanity/select_summary.php">Discharge Summary</a><br /></li>
            <li><a href="martanity/patientsreport.php">Report</a><br /></li>
            <li><a href="martanity/manege_bed.php">Beds</a><br /></li>
            <li><a href="martanity/order.php">Order Drugs</a><br /></li>
            <li><a href="martanity/operationlist.php">Operations List</a><br /></li>
            <li><a
                href="martanity/select_ope.php?invoice=<?php echo $finalcode ?>&cashier=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Operation</a><br />
            </li>
            <li><a
                href="martanity/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=INPATIENT&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>
            <?php
          }
          if ($position == 'Doctor I/c') {
            ?>
            <li><a href="reception/new_patient.php">Add New Patient</a><br /></li>
            <li><a
                href="doctor/patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE&transdep=DENTAL">Patients
                In Line</a><br /></li>
            <li><a href="doctor/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search
                Patient File</a><br /></li>
            <li><a
                href="pharmacy/cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Pharmacy</a><br />
            </li>
            <li><a href="accounts/select_customerl.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=LAB">Lab
                payment</a><br /></li>
            <li><a href="doctor/disease.php">Disease</a><br /></li>
            <li><a href="doctor/nurse/select_patient.php">Admit Patient</a><br /></li>
            <li><a href="doctor/nurse/select_file.php">Inpatient File</a><br /></li>
            <li><a href="doctor/common.php">Common complains</a><br /></li>
            <li><a href="doctor/nurse/select_patientdis.php">Discharge Patient</a><br /></li>
            <li><a href="doctor/histselect.php">Medical Report Printout</a><br /></li>
            <li><a href="doctor/file_select.php">Result Printout</a><br /></li>
            <li><a href="doctor/appointment.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Appointments</a><br />
            </li>
            <li><a
                href="doctor/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DOCTOR&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>
            <?php
          }
          if ($position == 'dental') {
            ?>

            <li><a
                href="dental/patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE">Patients
                In Line</a><br /></li>
            <li><a href="dental/select_patient.php?id=cash&invoice=<?php echo $finalcode ?>">Search Patient File</a><br />
            </li>
            <li><a href="dental/inpatientrequest.php">Inpatient Requests</a><br /></li>
            <li><a
                href="dental/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DENTAL&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>
            <li><a href="dental/cash_sale.php?id=cash&transdep=DENTAL&invoice=<?php echo $finalcode ?>">Drug
                Sale</a><br /></li>

            <?php
          }
          if ($position == 'optical') {
            ?>

            <li><a
                href="optical/patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE">Patients
                In Line</a><br /></li>
            <li><a href="optical/select_patient.php?id=cash&invoice=<?php echo $finalcode ?>">Search Patient
                File</a><br /></li>
            <li><a href="optical/inpatientrequest.php">Inpatient Requests</a><br /></li>
            <li><a
                href="optical/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=DENTAL&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>
            <li><a href="optical/cash_sale.php?id=cash&transdep=OPTICAL&invoice=<?php echo $finalcode ?>">Drug
                Sale</a><br /></li>

            <?php
          }
          if ($position == 'mch') {
            ?>

            <li><a href="mch/patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE">Patients
                In Line</a><br /></li>
            <li><a href="mch/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient
                File</a><br /></li>
            <li><a href="mch/inpatientrequest.php">Inpatient Requests</a><br /></li>
            <li><a
                href="mch/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=MCH&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>


            <?php
          }
          if ($position == 'opd') {
            ?>

            <li><a href="opd/patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE">Patients
                In Line</a><br /></li>
            <li><a href="opd/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search Patient
                File</a><br /></li>
            <li><a href="opd/inpatientrequest.php">Inpatient Requests</a><br /></li>
            <li><a
                href="opd/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=OPD&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>

            <?php
          }
          if ($position == 'Receptionist') {
            ?>

            <li><a href="reception/search_patient.php">Search Patient</a><br /></li>
            <li><a href="reception/new_patient.php">Add New Patient</a><br /></li>
            <li><a href="reception/select_patient.php">Add Revist</a><br /></li>
            <li><a href="reception/patientss.php">View All Patients</a><br /></li>
            <li><a href="tri/select_patient.php">Triage</a><br />
            <li><a href="reception/patientsreport.php?d1=0&d2=0">New Vist Report</a><br /></li>

            <li><a href="reception/patientsreportr.php?d1=0&d2=0">Revist Report</a><br /></li>
            <li><a href="reception/diagnosis.php?d1=0&d2=0&diagnosis=0">Diagnosis Report</a><br /></li>
            <li><a href="reception/diagnosisreport.php">Vist Reports</a><br /></li>
            <li><a href="pharmacy/products.php">Pharmacy</a><br /></li>
            <li><a href="accounts/services1.php?id=cash&invoice=<?php echo $finalcode ?>">Payments</a><br /></li>
            <li><a href="reception/histselect.php">Medical Report Printout</a><br /></li>
            <li><a href="reception/select_patientdis.php">Discharge summary Printout</a><br /></li>
            <?php
          }
          if ($position == 'tri') {
            ?>
            <li><a href="tri/select_patient.php">Search Patient</a><br /></li>

            <?php
          }
          if ($position == 'Lab Technologist') {
            ?>
            <li><a href="lab/labpatients.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Patients In
                Line</a><br /></li>
            <li><a href="lab/select_patient.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Search
                Patient</a><br /></li>
            <li><a href="lab/inpatientrequest.php">Inpatient Requests</a><br /></li>
            <li><a href="lab/select_results.php?d1=0&d2=0&patient_id=0">Print Lab Results</a><br /></li>
            <li><a href="lab/totalreport.php?d1=0&d2=0">Total Lab Vist</a><br /></li>
            <li><a href="lab/labreport.php?d1=0&d2=0&report_type=0">Specific Lab Report</a><br /></li>
            <li><a href="lab/labreport2.php?d1=0&d2=0">General Lab Report</a><br /></li>
            <li><a href="lab/products.php">Lab Inventory</a><br /></li>
            <li><a href="lab/receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Products</a><br /></li>
            <li><a
                href="lab/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=LAB&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>

            <?php
          }
          if ($position == 'physio') {
            ?>
            <li><a href="physio/labpatients.php?id=cash&transdep=PHYSIOTHERAPY&invoice=<?php echo $finalcode ?>">Patients
                In Line</a><br /></li>
            <li><a href="physio/select_patient.php?id=cash&transdep=PHYSIOTHERAPY&invoice=<?php echo $finalcode ?>">Search
                Patient</a><br /></li>
            <li><a href="physio/inpatientrequest.php">Inpatient Requests</a><br /></li>
            <li><a href="physio/labreport.php?d1=0&d2=0&document_type=0">Specific Report</a><br /></li>
            <li><a href="physio/labreport2.php?d1=0&d2=0">General Report</a><br /></li>
            <li><a
                href="physio/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHYSIOTHERAPY&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>
            <?php
          }
          if ($position == 'x-ray') {
            ?>
            <li><a href="x-ray/labpatients.php?id=cash&transdep=PHYSIOTHERAPY&invoice=<?php echo $finalcode ?>">Patients
                In Line</a><br /></li>
            <li><a href="x-ray/select_patient.php?id=cash&transdep=PHYSIOTHERAPY&invoice=<?php echo $finalcode ?>">Search
                Patient</a><br /></li>
            <li><a href="x-ray/inpatientrequest.php">Inpatient Requests</a><br /></li>
            <li><a href="x-ray/labreport.php?d1=0&d2=0&document_type=0">Specific Report</a><br /></li>
            <li><a href="x-ray/labreport2.php?d1=0&d2=0">General Report</a><br /></li>
            <li><a
                href="x-ray/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=X-RAY&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>
            <?php
          }
          if ($position == 'theatre') {
            ?>
            <li><a href="theatre/labpatients.php?id=cash&transdep=THEATRE&invoice=<?php echo $finalcode ?>">Patients In
                Line</a><br /></li>
            <li><a href="theatre/select_patient.php?id=cash&transdep=THEATRE&invoice=<?php echo $finalcode ?>">Search
                Patient</a><br /></li>
            <li><a href="theatre/inpatientrequest.php">Inpatient Requests</a><br /></li>
            <li><a href="theatre/labreport.php?d1=0&d2=0&document_type=0">Specific Report</a><br /></li>
            <li><a href="theatre/labreport2.php?d1=0&d2=0">General Report</a><br /></li>
            <li><a
                href="theatre/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=THEATRE&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>
            <?php
          }
          if ($position == 'orthopedic') {
            ?>
            <li><a href="orthopedic/labpatients.php?id=cash&transdep=THEATRE&invoice=<?php echo $finalcode ?>">Patients In
                Line</a><br /></li>
            <li><a href="orthopedic/select_patient.php?id=cash&transdep=THEATRE&invoice=<?php echo $finalcode ?>">Search
                Patient</a><br /></li>
            <li><a href="orthopedic/inpatientrequest.php">Inpatient Requests</a><br /></li>
            <li><a href="orthopedic/labreport.php?d1=0&d2=0&document_type=0">Specific Report</a><br /></li>
            <li><a href="orthopedic/labreport2.php?d1=0&d2=0">General Report</a><br /></li>
            <li><a
                href="orthopedic/storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=ORTHOPEDIC&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br /></li>

            <?php
          }
          if ($position == 'store') {
            ?>
            <li><a href="store/drungsdespense.php?id=cash&invoice=<?php echo $finalcode ?>">Issue Drugs</a><br /><br />
            </li>
            <li><a href="store/products1.php">Products</a><br /><br /></li>
            <li><a href="store/pro_receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Items</a><br /><br />
            </li>
            <li><a href="store/supplier.php">Suppliers</a><br /><br /></li>

            <?php
          }
          if ($position == 'records') {
            ?>
            <li><a href="records/patientsreport.php?d1=0&d2=0">Total Patients Number</a><br /></li>
            <li><a href="records/inpatientreport.php?d1=0&d2=0">In-Patient Number</a><br /></li>
            <li><a href="records/diagnosisreport.php">Diagnosis Report</a><br /></li>
            <li><a href="lab/labreport2.php?d1=0&d2=0">Pharmacy Report</a><br /></li>
            <li><a href="lab/labreport2.php?d1=0&d2=0">Birth/Death Reports</a><br /></li>
            <li><a href="lab/labreport2.php?d1=0&d2=0">Lab Report</a><br /></li>
            <?php
          }

          if ($position == 'procument') {
            ?>
            <li><a href="procument/select_dep.php?id=cash&invoice=<?php echo $finalcode ?>">Issue Drugs</a><br /></li>
            <li><a href="procument/products1.php">Products</a><br /></li>
            <li><a href="procument/issuereport.php?d1=0&d2=0&transdep=0">Issue Report</a><br /></li>
            <li><a
                href="procument/inpatient_orders.php?id=cash&transdep=INPATIENT&invoice=<?php echo $finalcode ?>">Martnity/Ward
                Orders</a><br /></li>
            <li><a href="procument/pro_receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Items</a><br />
            </li>
            <li><a href="procument/supplier.php">Suppliers</a><br /></li>

            <?php
          }
          ?>
        </ul>
        <div style="background: #ffffff"></div>
      </div> <!-- end side-menu -->

      <div class="side-content fr">

        <div class="content-module">

          <div class="content-module-heading cf">

            <h3 class="fl">Main Dashboard</h3>
            <span class="fr expand-collapse-text">Click to collapse</span>
            <span class="fr expand-collapse-text initial-expand">Click to expand</span>

          </div> <!-- end content-module-heading -->

          <?php
          $position = $_SESSION['SESS_LAST_NAME'];
          if ($position == 'Receptionist') {
            ?>

            <?php
          }
          if ($position == 'pharmacy') {
            ?>


            <?php
          }
          if ($position == 'accounts') {
            ?>


            <?php
          }
          if ($position == 'nurse') {
            ?>


            <?php
          }
          if ($position == 'Doctor I/c') {
            ?>


            <?php
          }
          if ($position == 'Lab Technologist') {
            ?>

            <?php

          }
          if ($position == 'records') {
            ?>
            <img src="../victorias.jpg" width="1065px" height="500px" />
            <?php
          }
          if ($position == 'Administrator') {
            ?>

            <div align="left" id="content">

              <div align="left" class="page-full-width cf">

                <div align="left" class="side-menu fl">


                  <ul>

                    <li><a rel="facebox" href="procument/products1.php">Procument</a><br /></li>
                    <li><a href="records/patientsreport.php?d1=0&d2=0">Patient Report</a><br /></li>
                    <li><a
                        href="dental/patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE">Dental</a><br />
                    </li>
                    <li><a
                        href="physio/labpatients.php?id=cash&transdep=PHYSIOTHERAPY&invoice=<?php echo $finalcode ?>">Physiotherapy</a><br />
                    </li>
                    <li><a
                        href="orthopedic/labpatients.php?id=cash&transdep=THEATRE&invoice=<?php echo $finalcode ?>">Othopedic</a><br />
                    </li>
                    <li><a
                        href="x-ray/labpatients.php?id=cash&transdep=PHYSIOTHERAPY&invoice=<?php echo $finalcode ?>">X-RAY</a><br />
                    </li>
                    <li><a href="schemes.php">Schemes</a><br /></li>
                    <li><a href="records/patientsreport.php?d1=0&d2=0">Optical</a><br /></li>
                    <li><a
                        href="opd/patientsinline.php?doctor=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>&status=ACTIVE">Opd</a><br />
                    </li>
                    <li><a href="martanity/select_patient.php?patient_id=0">Martanity</a><br /></li>



                    <?php
          }

          if ($position == 'procument') {
            ?>
                    <img src="../victorias.jpg" width="1065px" height="500px" />
                    <?php
          }
          ?>

                  <div class="clearfix"></div>
              </div>

              </table>
              <script>
                $(function () {
                  $(".btn_delete").click(function () {
                    var element = $(this);
                    var id = element.attr("id");
                    var dataString = 'id=' + id;
                    if (confirm("Sure you want to delete this item?")) {
                      $.ajax({
                        type: "GET",
                        url: "temp_trans_del.php",
                        data: dataString,
                        success: function () {

                        }
                      });

                      $(this).parents(".record").animate({ backgroundColor: "#fbc7c7" }, "fast")
                        .animate({ opacity: "hide" }, "slow");
                    }
                    return false;
                  });

                });
              </script>

              <script type="text/javascript" src="autosum.js"></script>

              <!-- jQuery 2.1.4 -->
              <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
              <script src="../dist/js/jquery.min.js"></script>
              <!-- Bootstrap 3.3.5 -->
              <script src="../bootstrap/js/bootstrap.min.js"></script>
              <script src="../plugins/select2/select2.full.min.js"></script>
              <!-- SlimScroll -->
              <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
              <!-- FastClick -->
              <script src="../plugins/fastclick/fastclick.min.js"></script>
              <!-- AdminLTE App -->
              <script src="../dist/js/app.min.js"></script>
              <!-- AdminLTE for demo purposes -->
              <script src="../dist/js/demo.js"></script>
              <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
              <script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>

              <script>
                $(function () {
                  $("#example1").DataTable();
                  $('#example2').DataTable({
                    "paging": true,
                    "lengthChange": false,
                    "searching": false,
                    "ordering": true,
                    "info": true,
                    "autoWidth": false
                  });
                });
              </script>
              <script>
                $(function () {
                  //Initialize Select2 Elements
                  $(".select2").select2();

                  //Datemask dd/mm/yyyy
                  $("#datemask").inputmask("dd/mm/yyyy", { "placeholder": "dd/mm/yyyy" });
                  //Datemask2 mm/dd/yyyy
                  $("#datemask2").inputmask("mm/dd/yyyy", { "placeholder": "mm/dd/yyyy" });
                  //Money Euro
                  $("[data-mask]").inputmask();

                  //Date range picker
                  $('#reservation').daterangepicker();
                  //Date range picker with time picker
                  $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' });
                  //Date range as a button
                  $('#daterange-btn').daterangepicker(
                    {
                      ranges: {
                        'Today': [moment(), moment()],
                        'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                        'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                        'This Month': [moment().startOf('month'), moment().endOf('month')],
                        'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                      },
                      startDate: moment().subtract(29, 'days'),
                      endDate: moment()
                    },
                    function (start, end) {
                      $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                    }
                  );

                  //iCheck for checkbox and radio inputs
                  $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass: 'iradio_minimal-blue'
                  });
                  //Red color scheme for iCheck
                  $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                    checkboxClass: 'icheckbox_minimal-red',
                    radioClass: 'iradio_minimal-red'
                  });
                  //Flat red color scheme for iCheck
                  $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                  });

                  //Colorpicker
                  $(".my-colorpicker1").colorpicker();
                  //color picker with addon
                  $(".my-colorpicker2").colorpicker();

                  //Timepicker
                  $(".timepicker").timepicker({
                    showInputs: false
                  });
                });
              </script>
</body>

</html>