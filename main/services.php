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

    #resultTable {
      width: 100%;
      border-collapse: collapse;
      margin: 20px 0px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    #resultTable thead th {
      font-weight: bold;
      padding: 12px 15px;
      text-align: center;
    }

    #resultTable tbody td:nth-child(3),
    #resultTable tbody td:nth-child(4),
    #resultTable tbody td:nth-child(5) {
      text-align: center;
    }

    #resultTable tbody td:nth-child(6) {
      margin-left: 15px;
    }

    .search-container {
      margin-bottom: 20px;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 10px;
      border-radius: 8px;
    }

    .search-container input {
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

    .search-container input:focus {
      border-color: #007bff;
      box-shadow: 0 4px 8px rgba(0, 123, 255, 0.2);
    }

    .search-container select {
      padding: 12px;
      font-size: 14px;
      border-radius: 6px;
      transition: all 0.3s ease;
      outline: none;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .search-container select:focus {
      box-shadow: 0 4px 8px rgba(0, 123, 255, 0.2);
    }

    .pagination-info {
      margin: 15px 20px;
      font-size: 16px;
    }
  </style>

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

  <?php
  function formatMoney($number, $fractional = false)
  {
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
  ?>
</head>

<body>

  <!-- TOP BAR -->
  <?php include_once("tpl/top_bar.php"); ?>
  <!-- end top-bar -->

  <div id="header-with-tabs">

    <div class="page-full-width cf">

      <ul id="tabs" class="fl">
        <li><a href="line.php">Patient In Line</a><br /></li>
        <li><a href="cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash
            Sale</a><br /></li>
        <li><a href="select_customerc.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash
            Prescription</a><br /></li>
        <li><a href="select_customer.php?id=credit&invoice=<?php echo $finalcode ?>">Insurance
            Prescription</a><br /></li>
        <li><a href="inpatient_orders.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Inpatient
            Drugs</a><br /></li>
        <li><a href="pharmacy/products2.php">Drugs</a><br /></li>
        <li><a href="receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Drugs</a><br /></li>
        <li><a href="consuptionreport.php">Drug Cons Report</a><br /></li>
      </ul> <!-- end tabs -->
    </div> <!-- end full-width -->
  </div> <!-- end header -->

  <!-- MAIN CONTENT -->
  <div id="content">

    <div class="page-full-width cf">

      <div class="side-menu fl">

        <h3>Patient Management</h3>
        <ul>
          <li><a href="line.php">Patient In Line</a><br /></li>
          <li><a href="cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash
              Sale</a><br /></li>
          <li><a href="select_customerc.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Cash
              Prescription</a><br /></li>
          <li><a href="select_customer.php?id=credit&invoice=<?php echo $finalcode ?>">Insurance
              Prescription</a><br /></li>
          <li><a href="inpatient_orders.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Inpatient
              Drugs</a><br /></li>
          <li><a href="pharmacy/products2.php">Drugs</a><br /></li>
          <li><a href="receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Drugs</a><br /></li>
          <li><a href="consuptionreport.php">Drug Cons Report</a><br /></li>
        </ul>
        <div style="background: #ffffff">
          <script async src="http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
          <!-- posnic 120x90 vertical small -->
          <ins class="adsbygoogle" style="display:inline-block;width:120px;height:90px"
            data-ad-client="ca-pub-5212135413309920" data-ad-slot="3677012951"></ins>
          <script>
            (adsbygoogle = window.adsbygoogle || []).push({});
          </script>

        </div>
      </div> <!-- end side-menu -->

      <div class="side-content fr">

        <div class="content-module">

          <div class="content-module-heading cf">

            <h3 class="fl">PHARMACY MANAGEMENT</h3>
            <span class="fr expand-collapse-text">Click to collapse</span>
            <span class="fr expand-collapse-text initial-expand">Click to expand</span>

          </div> <!-- end content-module-heading -->
          <div class="two-thirds1 column">
            <div class="thewraper">
              <div id="formdesign"></div>
              <div style="padding: 20px 25px 5px; display: flex; justify-content: space-between; align-items: center;">
                <a id="addd" href="index.php"><b>Back</b></a>
                <a rel="facebox" id="addd" href="addproduct2.php"><b>Add Service</b></a>
              </div>

              <div class="search-container">
                <input type="text" id="searchInput" placeholder="Search for services...">
                <select id="rowsPerPage" onchange="changeRowsPerPage()">
                  <option value="25" selected>Show 25</option>
                  <option value="50">Show 50</option>
                  <option value="100">Show 100</option>
                  <option value="200">Show 200</option>
                  <option value="500">Show 500</option>
                </select>
              </div>
              <table id="resultTable" data-responsive="table">
                <thead>
                  <tr>
                    <th width="5%"> No </th>
                    <th width="35%"> Service Name </th>
                    <th width="15%"> Department </th>
                    <th width="15%"> Normal Price </th>
                    <th width="15%"> Insurance Price </th>
                    <th width="15%"> Action </th>
                  </tr>
                </thead>
                <tbody>

                  <?php
                  include('../connect.php');
                  $result = $db->prepare("SELECT * FROM services");
                  $result->execute();
                  $date = date('Y-m-d');
                  $count = 1;
                  for ($i = 0; $row = $result->fetch(); $i++) {
                    ?>
                    <tr class="record">
                      <td><?php echo $count++; ?></td>
                      <td><?php echo $row['product_name']; ?></td>
                      <td><?php echo $row['department']; ?></td>
                      <td><?php echo $row['price']; ?></td>
                      <td><?php echo $row['c_price']; ?></td>
                      <td>
                        <a rel="facebox" href="editproduct.php?product_id=<?php echo $row['product_id']; ?>">
                          Edit </a> |
                        <a href="javascript:void(0);" id="<?php echo $row['product_id']; ?>" class="delbutton"
                          title="Click To Delete">Delete</a>
                      </td>
                    </tr>
                    <?php
                  }
                  ?>

                </tbody>
              </table>
              <div class="pagination-info" id="paginationInfo"></div>

              <div class="clearfix"></div>
            </div>

          </div>
        </div>
      </div> <!-- end content-module -->
    </div>
  </div> <!-- end full-width -->
  <script src="js/jquery.js"></script>
  <script type="text/javascript">
    $(function () {
      $(".delbutton").click(function () {

        //Save the link in a variable
        var element = $(this);

        //Find the id of the link that was clicked
        var del_id = element.attr("id");

        //Built a url to send
        var info = 'id=' + del_id;
        if (confirm("Sure you want to delete this service? There is No undo!")) {

          $.ajax({
            type: "GET",
            url: "deleteService.php",
            data: info,
            success: function (response) {
              if (response === "success") {
                alert('Service deleted successfully');
                window.location.href="services.php"
              }
              else {
                alert('Error deleting product: ' + response);
              }
            },
            error: function (xhr, status, error) {
              alert('AJAX error: ' + error);
            }
          });
        }
        return false;
      });
    });
  </script>

  <script>

    const searchInput = document.getElementById('searchInput');

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
        let serviceName = row.cells[1].textContent.toLowerCase();
        let serviceDepartment = row.cells[2].textContent.toLowerCase();
        if (serviceName.indexOf(filter) > -1 || serviceDepartment.indexOf(filter) > -1) {
          row.style.display = '';
        } else {
          row.style.display = 'none';
        }
      });
    });

    //pagination
    let rowsPerPage = 25;
    let rows = document.querySelectorAll('#resultTable tbody tr');
    let totalRows = rows.length;

    function changeRowsPerPage() {
      rowsPerPage = parseInt(document.getElementById('rowsPerPage').value);
      showRows();
    }

    function showRows() {
      rows.forEach((row, index) => {
        row.style.display = (index < rowsPerPage) ? '' : 'none';
      });
      updatePaginationInfo();
    }

    function updatePaginationInfo() {
      let visibleRows = document.querySelectorAll('#resultTable tbody tr[style*="display: none;"]').length;
      document.getElementById('paginationInfo').textContent = `Showing ${Math.min(rowsPerPage, totalRows - visibleRows)} of ${totalRows} services`;
    }

    showRows();

  </script>

</body>

</html>