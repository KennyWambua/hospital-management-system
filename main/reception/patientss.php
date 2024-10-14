<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title> Hospital Management System </title>

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

    .searchContainer {
      margin-bottom: 20px;
      display: grid;
      grid-template-columns: 75% 25%;
      gap: 20px;
      align-items: center;
      padding: 10px;
    }
    .searchControls {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .searchControls input {
      padding: 12px;
      width: 250px;
      font-size: 16px;
      margin-right: 14px;
      border: 1px solid #ccc;
      border-radius: 6px;
      outline: none;
      transition: all 0.3s ease;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .searchControls input:focus {
      border-color: #007bff;
      box-shadow: 0 4px 8px rgba(0, 123, 255, 0.2);
    }

    .searchControls select {
      padding: 12px;
      font-size: 14px;
      border-radius: 6px;
      transition: all 0.3s ease;
      outline: none;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .searchControls select:focus {
      box-shadow: 0 4px 8px rgba(0, 123, 255, 0.2);
    }

    .paginationControls {
      display: flex;
      justify-content: flex-end;
      align-items: center;
      text-align: center;
    }

    .paginationControls button {
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      font-size: 16px;

      cursor: pointer;
      margin: 0 10px;
    }

    .paginationControls button:disabled {
      cursor: not-allowed;
      opacity: 0.5;
    }
  </style>

  <!-- jQuery & JS files -->
  <?php include_once("tpl/common_js.php"); ?>
  <script src="js/script.js"></script>
  <script>
    /*$.validator.setDefaults({
      submitHandler: function() { alert("submitted!"); }
    });*/
    $(document).ready(function () {
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
    function Clickheretoprint() {
      var disp_setting = "toolbar=yes,location=no,directories=yes,menubar=yes,";
      disp_setting += "scrollbars=yes,width=900, height=400, left=100, top=25";
      var content_vlue = document.getElementById("content").innerHTML;
      var docprint = window.open("", "", disp_setting);
      docprint.document.open();
      docprint.document.write('</head><body onLoad="self.print()" style="width: 900px; font-size:11px; font-family:arial; font-weight:normal;">');
      docprint.document.write(content_vlue);
      docprint.document.close();
      docprint.focus();
    }
  </script>
</head>

<body>
  <!-- TOP BAR -->
  <?php include_once("tpl/top_bar.php"); ?>

  <!-- HEADER -->
  <div id="header-with-tabs">
    <div class="page-full-width cf">
      <ul id="tabs" class="fl">
        <li><a href="search_patient.php">Search Patient</a><br /></li>
        <li><a href="new_patient.php">Add New Patient</a><br /></li>
        <li><a href="select_patient.php">Add Revisit</a><br /></li>
        <li><a href="patientss.php">View All Patients</a><br /></li>
        <li><a href="patientsreport.php?d1=0&d2=0">New visit Report</a><br /></li>
        <li><a href="patientsreportr.php?d1=0&d2=0">Revisit Report</a><br /></li>
        <li><a href="diagnosisreport.php">Diagnosis Report</a></li>
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
          <li><a href="search_patient.php">Search Patient</a><br /></li>
          <li><a href="new_patient.php">Add New Patient</a><br /></li>
          <li><a href="select_patient.php">Add Revisit</a><br /></li>
          <li><a href="patientss.php">View All Patients</a><br /></li>
          <li><a href="patientsreport.php?d1=0&d2=0">New visit Report</a><br /></li>
          <li><a href="patientsreportr.php?d1=0&d2=0">Revisit Report</a><br /></li>
          <li><a href="diagnosisreport.php">Diagnosis Report</a></li>
        </ul>
        <div style="background: #ffffff">
          <script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
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
            <h3 class="fl">Reception Department </h3>
            <span class="fr expand-collapse-text"> Click to collapse </span>
            <span class="fr expand-collapse-text initial-expand"> Click to expand </span>
          </div>

          <!-- CONTENT MODULE MAIN -->
          <div class="content-module-main cf">
            <div style="display: flex; justify-content:space-between; margin: 5px 0px 10px;">
              <a id="addd" href="index.php" style="float: none;"> <b>Back</b></a>
              <a id="addd" href="javascript:Clickheretoprint()"> <b>Print</b> </a>
            </div>
            <div class="searchContainer">
              <div class="searchControls">
                <input type="text" id="searchInput" placeholder="Search for patient...">
                <select id="rowsPerPage" onchange="changeRowsPerPage()">
                  <option value="25" selected>Show 25</option>
                  <option value="50">Show 50</option>
                  <option value="100">Show 100</option>
                  <option value="200">Show 200</option>
                  <option value="500">Show 500</option>
                </select>
              </div>
              <div class="paginationControls">
                <button id="prevButton" onclick="prevPage()">Previous</button>
                <button id="nextButton" onclick="nextPage()">Next</button>
              </div>
            </div>
            <div class="content" id="content">
              <div>
                <H3 style="align: center;"><B></B></H3>
              </div>
              <table id="resultTable" data-responsive="table" style="text-align: left;">
                <thead>
                  <tr>
                    <th width="10%"> No </th>
                    <th width="10%"> Patient No </th>
                    <th width="30%"> Patient Name </th>
                    <th width="8%"> Phone No</th>
                    <th width="25%"> Scheme </th>
                    <th width="10%"> Member No </th>
                    <th width="10%"> Sex </th>
                    <th width="15%"> Age </th>
                    <th width="25%"> Copay </th>
                    <th width="15%"> Discount </th>
                    <th width="10%"> Date </th>
                    <th width="10%"> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  include('connect.php');
                  $result = $db->prepare("SELECT * FROM patient  order by patient_id desc ");
                  $result->execute();
                  $count = 1;
                  for ($i = 0; $row = $result->fetch(); $i++) {
                    ?>
                    <tr class="record">
                      <td><?php echo $count++; ?></td>
                      <td><?php echo $row['patient_id']; ?></td>
                      <td><?php echo $row['name']; ?></td>
                      <td><?php echo $row['phone']; ?></td>
                      <td><?php echo $row['insurance_id']; ?></td>
                      <td><?php echo $row['in_number']; ?></td>
                      <td><?php echo $row['sex']; ?></td>
                      <td><?php echo $row['age']; ?></td>
                      <td><?php echo $row['copay']; ?></td>
                      <td><?php echo $row['discount']; ?></td>
                      <td><?php echo $row['date']; ?></td>
                      <td>
                        <a rel="facebox" href="editpatient.php?patient_id=<?php echo $row['patient_id']; ?>">
                          <input type="button" class="button round blue image-right ic-add text-upper"
                            style="align: left;" value="Edit " />
                        </a>
                        <a rel="facebox"
                          href="send.php?patient_id=<?php echo $row['patient_id']; ?>&name=<?php echo $row['name']; ?>&insurance_id=<?php echo $row['insurance_id']; ?>">
                          <input type="button" class="button round blue image-right ic-add text-upper" style="align:left;"
                            value="Send" />
                        </a>
                      </td>
                    </tr>
                    <?php
                  }
                  ?>
                </tbody>
              </table>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script>

    const searchInput = document.getElementById('searchInput');

    let currentPage = 1;
    let rowsPerPage = 25;
    let rows = document.querySelectorAll('#resultTable tbody tr');
    let totalRows = rows.length;
    let totalPages = Math.ceil(totalRows / rowsPerPage);

    searchInput.addEventListener('keydown', function (e) {
      if (e.key === 'Enter') {
        e.preventDefault();
        return false;
      }
    });

    // Search functionality
    searchInput.addEventListener('keyup', function () {
      let filter = this.value.toLowerCase();
      let rows = document.querySelectorAll('#resultTable tbody tr');

      rows.forEach(function (row) {
        let patientName = row.cells[2].textContent.toLowerCase();
        let memberNumber = row.cells[5].textContent.toLowerCase();
        if (patientName.indexOf(filter) > -1 || memberNumber.indexOf(filter) > -1) {
          row.style.display = '';
        } else {
          row.style.display = 'none';
        }
      });
      updatePaginationInfo();
    });

    //pagination
    function changeRowsPerPage() {
      rowsPerPage = parseInt(document.getElementById('rowsPerPage').value);
      totalPages = Math.ceil(totalRows / rowsPerPage)
      currentPage = 1;
      showRows();
    }

    function showRows() {
      let startIndex = (currentPage - 1) * rowsPerPage;
      let endIndex = currentPage * rowsPerPage;
      rows.forEach((row, index) => {
        row.style.display = (index >= startIndex && index < endIndex) ? '' : 'none';
      });
      updatePaginationInfo();
    }

    function updatePaginationInfo() {
      let visibleRows = document.querySelectorAll('#resultTable tbody tr[style*="display: none;"]').length;
      document.getElementById('paginationInfo').textContent = `Page ${currentPage} of ${totalPages} - ${Math.min(rowsPerPage, totalRows - visibleRows)} of ${totalRows} records`;
    }
    function nextPage() {
      if (currentPage < totalPages) {
        currentPage++;
        showRows();
      }
    }
    function prevPage() {
      if (currentPage > 1) {
        currentPage--;
        showRows();
      }
    }
    function updatePagination() {
      document.getElementById('prevButton').disabled = currentPage === 1;
      document.getElementById('nextButton').disabled = currentPage === totalPages;

    }

    showRows();
    updatePagination();

  </script>
</body>

</html>