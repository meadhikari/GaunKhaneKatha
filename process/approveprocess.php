<?php
	require_once("../includes/session.php");
	require_once("../includes/connection.php");
	require_once("../includes/functions.php"); 

	check_auth(ERRORMESSAGE);
	$id = strip_tags(trim(mysql_prep($_POST['id']))); 
	$query = "UPDATE gkks SET status = '1' WHERE id = '{$id}'";
	$result = mysql_query($query, $connection) or die(mysql_error($connection));
	echo 1;