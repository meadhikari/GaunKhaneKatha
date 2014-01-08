<?php
	require_once("../includes/session.php");
	require_once("../includes/connection.php");
	require_once("../includes/functions.php"); 

	check_auth(ERRORMESSAGE);
	$gkk_id = strip_tags(trim(mysql_prep($_POST['id'])));  	
	$query = "DELETE FROM gkks WHERE id = '{$gkk_id}' LIMIT 1";
	$result = mysql_query($query, $connection) or die(mysql_error());
	if(mysql_affected_rows() !=0)
		echo '1'; //1 used as success in the front end and similar action taken
	else 
		echo '0'; //0 used as failure in the front end and message and action taken