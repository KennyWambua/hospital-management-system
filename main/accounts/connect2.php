<?php
/* Database config */
$db_host		= 'localhost';
$db_user		= 'greenspan';
$db_pass		= 'Gr33nSpan2021';
$db_database	= 'greenspan'; 

/* End config */

$db = new PDO('mysql:host='.$db_host.';dbname='.$db_database, $db_user, $db_pass);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

?>