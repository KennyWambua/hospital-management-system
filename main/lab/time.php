<?php
ini_set('date.timezone','Africa/Nairobi'); 
echo '<p>'.date("g:i A").'</p>'."\n";
?>
<?php
date_default_timezone_set('Africa/Nairobi');
$date= date('d-m-Y h:i:s A',time());
echo $date;
?>