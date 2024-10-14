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

    #resultTable thead th {
      font-weight: bold;
      padding: 12px 15px;
      text-align: center;
    }

    #resultTable tbody td:nth-child(3),
    #resultTable tbody td:nth-child(4),
    #resultTable tbody td:nth-child(5),
    #resultTable tbody td:nth-child(6),
    #resultTable tbody td:nth-child(7),
    #resultTable tbody td:nth-child(8),
    #resultTable tbody td:nth-child(9) {
      text-align: center;
    }

    #resultTable tbody td:nth-child(10) {
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
        <li><a href="products2.php">Drugs</a><br /></li>
        <li><a href="receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Drugs</a><br /></li>
        <li><a href="consuptionreport.php">Drug Cons Report</a><br /></li>
        <li><a href="selectreceipt.php">Receipt Preview</a><br /></li>
        <li><a
            href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
            Request</a><br /></li>
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
          <li><a href="products2.php">Drugs</a><br /></li>
          <li><a href="receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Drugs</a><br /></li>
          <li><a href="consuptionreport.php">Drug Cons Report</a><br /></li>
          <li><a href="selectreceipt.php">Receipt Preview</a><br /></li>
          <li><a
              href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
              Request</a><br /></li>
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

            <h3 class="fl">PHARMACY MODULE</h3>
            <span class="fr expand-collapse-text">Click to collapse</span>
            <span class="fr expand-collapse-text initial-expand">Click to expand</span>

          </div> <!-- end content-module-heading -->
          <!-- Tasks Menu -->
          <div class="two-thirds1 column">
            <div class="thewraper">
              <div id="formdesign">
                </td>
                </tr>
              </div>
              <div
                style="padding: 20px 25px 5px; display: flex; justify-content: space-between; align-items: center; margin-bottom: 10px;">
                <h2 align="left"><a id="addd" href="index.php" style="float: none;"><b>Back</b></a></h2>
                <h2 align="right"><a rel="facebox" id="addd" href="addproduct2.php"><b>Add Product</b></a></h2>
              </div>
              <div class="search-container">
                <input type="text" id="searchInput" placeholder="Search for product...">
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
                    <th> Product Id </th>
                    <th> Name </th>
                    <th> Cost </th>
                    <th> Disc Cost </th>
                    <th> Cash Price </th>
                    <th> Kenya Power Prices </th>
                    <th> Reorder </th>
                    <th> Supplier </th>
                    <th> Qty </th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>

                  <?php
                  include('connect.php');
                  $result = $db->prepare("SELECT * FROM products ORDER BY product_name asc");
                  $result->execute();
                  $date = date('Y-m-d');
                  for ($i = 0; $row = $result->fetch(); $i++) {
                    ?>
                    <tr class="record">
                      <td><?php echo $row['product_id']; ?></td>
                      <td><?php echo $row['product_name']; ?></td>
                      <td>
                        <?php
                        $pcost = $row['cost'];
                        echo formatMoney($pcost, true);
                        ?>
                      </td>
                      <td>
                        <?php
                        $cost = (float) $row['cost'];
                        $discount = (float) $row['discount'];
                        $finalCost = $cost - ($discount * $cost / 100);
                        echo formatMoney($finalCost, true);
                        ?>
                      </td>
                      <td>
                        <?php
                        $pprice = $row['price'];
                        echo formatMoney($pprice, true);
                        ?>
                      </td>
                      <td>
                        <?php
                        $cprice = $row['c_price'];
                        echo formatMoney($cprice, true);
                        ?>
                      </td>
                      <td class="text-center">
                        <?php if ($row['qty'] <= $row['level'])
                          echo "<span class='badge bg-red'><i class='glyphicon glyphicon-refresh'></i>Reorder</span>"; ?>
                      </td>
                      <td><?php echo $row['supplier']; ?></td>
                      <td><?php echo $row['qty']; ?></td>
                      <td>
                        <a rel="facebox" href="editproduct.php?id=<?php echo $row['product_id']; ?>"> Edit </a>|
                        <a href="javascript:void(0);" id="<?php echo $row['product_id']; ?>" class="delbutton"
                          title="Click To Delete">Delete</a>
                      </td>
                      </td>
                      <?php
                  }
                  ?>

                </tbody>
              </table>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript">
    $(function () {
      $(".delbutton").click(function () {

        //Save the link in a variable
        var element = $(this);

        //Find the id of the link that was clicked
        var del_id = element.attr("id");

        //Built a url to send
        var info = 'id=' + del_id;
        if (confirm("Sure you want to delete this product? There is No undo!")) {

          $.ajax({
            type: "GET",
            url: "deleteproduct.php",
            data: info,
            success: function (response) {
              if (response === "success") {
                alert('Product deleted successfully');
                window.location.href = "products2.php"
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
        let productName = row.cells[1].textContent.toLowerCase();
        if (productName.indexOf(filter) > -1) {
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