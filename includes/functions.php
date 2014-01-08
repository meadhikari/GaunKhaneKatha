<?php
	function redirect_to( $location = NULL ) {
		if ($location != NULL) {
			header ("Location: {$location}");
			exit;
		}
	}
	
	function mysql_prep( $value ) {
		$magic_quotes_active = get_magic_quotes_gpc();
		$new_enough_php = function_exists("mysql_real_escape_string"); // i.e. PHP >= v4.3.0
		if($new_enough_php ) { //PHP v4.3.0 or higher
			//undo any magic quote effects so mysql_real_escape_string can do the work
			if($magic_quotes_active) { $value = stripslashes( $value ); }			
			$value = mysql_real_escape_string($value);
		} else { //before PHP v4.3.0
			//if magicquotes aren't already on then add slashes manually
			if(!$magic_quotes_active) { $value = addslashes ($value ); }
			//if magic quotes are active, then slashes already exist
		}
		return $value;
	}
	
	function confirm_query($result_set) {
		if(!$result_set){
			die("Database query failed 1: " . mysql_error());
		}
	}

	function check_auth($message = null) {
		if($message == null)
			$message = 2;

		if($_SESSION['id'] != 100 || $_SESSION['status'] != 'Admin') {
			echo $message;
			die();
		}
	}