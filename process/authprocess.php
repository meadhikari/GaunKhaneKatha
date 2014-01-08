<?php
	require_once("../includes/session.php");
	require_once("../includes/connection.php");
	require_once("../includes/functions.php"); 

	if((isset($_POST["email"]) && isset($_POST["password"])) && (!empty($_POST["email"]) && !empty($_POST["password"]))) {
		$email = strip_tags(trim(mysql_prep($_POST["email"])));
		$password = strip_tags(trim(mysql_prep($_POST["password"])));
		$hash_password = sha1($password);
		
		if(ADMINEMAIL == $email && ADMINPASSWORD == $hash_password) {
			$_SESSION['id'] = 100;
			$_SESSION['status'] = 'Admin';
			$_SESSION['email'] = ADMINEMAIL;
			$_SESSION['start'] = time(); // taking now logged in time
			$_SESSION['expire'] = $_SESSION['start'] + (60 * 60 * 24); // ending a session in a day from the starting time
				echo LOGINSUCCESS;
			} else {
				echo LOGINERROR;
			}
	} else {
		echo NOTALLOWED;
	}

	mysql_close($connection);
