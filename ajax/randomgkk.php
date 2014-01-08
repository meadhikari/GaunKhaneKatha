<?php
	include('../includes/connection.php');
	include('../includes/session.php');
	include('../includes/functions.php');
	
	function loadId() {
		$i = 0;	
		$result = mysql_query("SELECT id FROM gkks WHERE status != '0' ORDER BY rand() LIMIT 50");
			while($row = mysql_fetch_array($result)) {
				$_SESSION['idArray'][$i++] = $row['id'];
			}
		$_SESSION['nextGkk'] = 0;
	}
	
	function showGkk() {
		$random_gkk = mysql_fetch_row(mysql_query("SELECT question, answer, name FROM gkks WHERE id = '{$_SESSION['idArray'][$_SESSION['nextGkk']++]}'"));		
		echo json_encode($random_gkk);
	}
	
	if(isset($_SESSION['nextGkk'])) {
		if($_SESSION['nextGkk'] >= 19) { //make sure there are at least 20 gkks in the database
			loadId();
			showGkk();
		} else {
			showGkk();
		}
	} else {
		loadId();
		showGkk();
	}