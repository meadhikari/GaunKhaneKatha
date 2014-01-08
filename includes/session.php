<?php 
	session_start(); 
	if(isset($_SESSION['start'])) {
		$now = time(); //time right now
		if($now > $_SESSION['expire']) {
			$_SESSION = array();
			if(isset($_COOKIE[session_name()])) setcookie(session_name(), '', time()-10000, "/"); 
			session_destroy();	
			header('Location: ../index.php?previous=session-expired');
		}
	}