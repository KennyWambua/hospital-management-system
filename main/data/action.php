<?php
if(isset($_POST['CName']))
{
  include_once('config.php');
  $CName = mysql_real_escape_string($_POST['CName']);
  $CNote = mysql_real_escape_string($_POST['CNote']);
  $d = $_POST['dd'];
  $m = $_POST['mm'];
  $y = $_POST['yyyy'];
  
  $dates = date('Y-m-d',strtotime($d.'-'.$m.'-'.$y));
  
  $firstday = date('Y-m-d', time());
  $lastday = date('Y-m-d', strtotime('+7 days'));
  $thisday = $dates;
  $time = time();
  sleep(3);
  if($CName == '' || $CNote == '')
  {
   echo 1;
  }
  else if(!is_string($CName) || !is_string($CNote))
  {
   echo 2;
  }
  else if($_POST['dd'] == 'DD' || $_POST['mm'] == 'MM' || $_POST['yyyy'] == 'YYYY')
  {
   echo 5;
  }  
  else if(strtotime($thisday)<= strtotime("+1 week") && strtotime($thisday) >= strtotime("-1 week"))
  {
  $check = mysql_query("select ID from members where FullName = '$CName'  and Note = '$CNote' and ReminderDate = '$dates'") or die(mysql_error());
  $count = mysql_num_rows($check);
  
  if($count == 0)
  {
  $insert_event = mysql_query("INSERT INTO members (FullName, ReminderDate, Note, Time) values ('$CName','$dates','$CNote','$time')")  or die(mysql_error());
  echo $count;
  if($insert_event)
  {
     echo '<tr>';
     echo '<td>'.$CName.'</td>';
     echo '<td>'.$CNote.'</td>';
     echo '<td>'.date('d-M-Y',strtotime($thisday)).'</td>';
     echo '<td>'.(strtotime($thisday) - strtotime(date('d-M-Y'))) / (60 * 60 * 24).' Days</td>';
     echo '</tr>';
  }
  }
  else
  {
    echo 6;
  }
  }
  else if(strtotime($thisday) < strtotime(date('d-m-Y')))
  {
   echo 4;
  }  
  else
  {
    echo 3;
  }
}	
?>