<?php
	include('../includes/session.php');
	include('../includes/connection.php');
	include('../includes/functions.php');

	check_auth(NOTALLOWED);

	$id = strip_tags(trim(mysql_prep($_POST['id'])));	
	$query = "SELECT id, question, answer, name, email FROM gkks WHERE id = '{$id}' LIMIT 1";
	$result = mysql_query($query, $connection);
	$gkk = mysql_fetch_row($result);
	
	if(empty($gkk)) {
		echo EDITERROR;	
		die();
	}
	
	echo json_encode($gkk);