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