<?php 
	include("../includes/functions.php");
	include("../includes/constants.php");

	session_start();
	$_SESSION = array();
	if(isset($_COOKIE[session_name()])) setcookie(session_name(), '', time()-10000, "/"); 
	
	session_destroy();
	$message = 'Just Unset!';
	setcookie('captchaStatus', $message, time()+36000, '/');
	echo LOGOUTSUCCESS;