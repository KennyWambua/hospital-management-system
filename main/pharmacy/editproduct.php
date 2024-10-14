<?php
require_once('auth.php');
?>
<?php
include('connect.php');
$id = $_GET['id'];
$result = $db->prepare("SELECT * FROM products WHERE product_id= :userid");
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

      #ac {
        width: 100%;
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;

      }

      .form-grid {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        grid-gap: 30px;
      }

      .full-width {
        grid-column: span 2;
        text-align: center;
      }

      .styled-input {
        width: 100%;
        padding: 10px;
        height: 25px;
        font-size: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.05);
        transition: border-color 0.3s ease;
      }

      .styled-input:focus {
        border-color: #007bff;
        outline: none;
      }

      .styled-button {
        width: 100%;
        background: #007bff;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        cursor: pointer;
        transition: background-color 0.3s ease;
      }

      .styled-button:hover {
        background-color: #0056b3;
      }
      .selectInput {
        width: 100%; 
        border-radius: 5px; 
        padding: 10px; color: #333; 
        background-color: #fff;
        font-size: 15px;
        border: 1px solid #ccc;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
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
            <li><a href="line.php">Patient In Line</a><br /></li>
            <li>
              <a href="cash_salesd.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">
                Cash Sale</a><br>
            </li>
            <li>
              <a href="select_customerc.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">
                Cash Prescription</a><br>
            </li>
            <li><a href="select_customer.php?id=credit&invoice=<?php echo $finalcode ?>">Insurance
                Prescription</a><br /></li>
            <li><a href="inpatient_orders.php?id=cash&transdep=PHARMACY&invoice=<?php echo $finalcode ?>">Inpatient
                Drugs</a><br /></li>
            <li><a href="pharmacy/products2.php">Drugs</a><br /></li>
            <li><a href="receiving.php?id=cash&invoice=<?php echo $finalcode ?>">Receive Drugs</a><br /></li>
            <li><a href="consuptionreport.php">Drug Cons Report</a><br /></li>
            <li><a href="selectreceipt.php">Receipt Preview</a><br /></li>
            <li>
              <a
                href="storerequest.php?id=cash&invoice=<?php echo $finalcode ?>&transdep=PHARMACY&user=<?php echo $_SESSION['SESS_FIRST_NAME'] ?>">Store
                Request</a><br />
            </li>

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

            </div> <!-- end content-module-heading --></head>
            <form action="saveeditproduct1.php" method="post">
              <div id="ac" align="center">
                <input type="hidden" name="memi" value="<?php echo $id; ?>" />
                <div class="form-grid">
                  <div class="form-item">
                    <b><span>Code</span></b><br>
                    <input type="text" class="styled-input" name="code" value="<?php echo $row['product_code']; ?>" />
                  </div>

                  <div class="form-item">
                    <b><span>Name</span></b><br>
                    <input type="text" class="styled-input" name="name" value="<?php echo $row['product_name']; ?>" />
                  </div>

                  <div class="form-item">
                    <b><span>Cost</span></b><br>
                    <input type="text" class="styled-input" name="cost" value="<?php echo $row['cost']; ?>" />
                  </div>

                  <div class="form-item">
                    <b><span>Price</span></b><br>
                    <input type="text" class="styled-input" name="price" value="<?php echo $row['price']; ?>" />
                  </div>

                  <div class="form-item">
                    <b><span>Kenya Power Prices</span></b><br>
                    <input type="text" class="styled-input" name="c_price" value="<?php echo $row['c_price']; ?>" />
                  </div>

                  <div class="form-item">
                    <b><span>Exp Date</span></b><br>
                    <input type="date" class="styled-input" name="expiry_date"
                      value="<?php echo $row['experiy_date']; ?>" />
                  </div>

                  <div class="form-item">
                    <b><span>Supplier</span></b><br>
                    <select name="supplier" class="selectInput">
                      <option value="<?php echo $row['supplier']; ?>" selected><?php echo $row['supplier']; ?></option>
                      <?php
                      $results = $db->prepare("SELECT * FROM supliers");
                      $results->execute();
                      while ($rows = $results->fetch()) {
                        ?>
                        <option value="<?php echo $rows['suplier_name']; ?>"><?php echo $rows['suplier_name']; ?></option>
                        <?php
                      }
                      ?>
                    </select>
                  </div>

                  <div class="form-item">
                    <b><span>Qty</span></b><br>
                    <input type="text" class="styled-input" name="qty" value="<?php echo $row['qty']; ?>" />
                  </div>

                  <div class="form-item full-width">
                    <div class="form-item">
                      <b><span>Reorder Level</span></b><br>
                      <input type="text" style="width: 50%; margin-bottom: 20px;" class="styled-input" name="level"
                        value="<?php echo $row['level']; ?>" />
                    </div>

                    <input id="btn" class="styled-button" type="submit" value="Save" />
                  </div>
                </div>
              </div>
            </form>
            <?php
}
?>