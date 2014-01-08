<?php
	require_once("../includes/session.php");
	require_once("../includes/connection.php");
	require_once("../includes/functions.php"); 

	check_auth(ERRORMESSAGE);

	if(!isset($_POST['gkk-question'])) {
		echo ERRORMESSAGE;
		die();
	}

	if(!empty($_POST['gkk-question']) && !empty($_POST['gkk-id'])) {
		$gkkQuestion  = strip_tags(trim(mysql_prep($_POST['gkk-question'])));
		$gkkAnswer  = strip_tags(trim(mysql_prep($_POST['gkk-answer'])));
		$gkkName  = strip_tags(trim(mysql_prep($_POST['nameEdit'])));
		$gkkEmail  = strip_tags(trim(mysql_prep($_POST['emailEdit'])));
		$gkkId = strip_tags(trim(mysql_prep($_POST['gkk-id'])));

		if($gkkEmail == '')
			$gkkEmail = NULL;
		if($gkkName == '')
			$gkkName = NULL;
		
		$query = "UPDATE gkks SET question = '{$gkkQuestion}', answer = '{$gkkAnswer}', name = '{$gkkName}', email = '{$gkkEmail}' WHERE id = '{$gkkId}'";
		$result = mysql_query($query, $connection) or die(mysql_error($connection));
		echo 1; 

	} else {
		echo ERRORMESSAGE;
		die();
	}