<?php
	require_once("../includes/session.php");
	require_once("../includes/connection.php");
	require_once("../includes/functions.php"); 

	if(!isset($_POST['gkk-question']))
		echo ERRORMESSAGE;

	if(!empty($_POST['gkk-question']) && !empty($_POST['gkk-answer'])) {
		if(strlen($_POST['gkk-question']) <= 5 || strlen($_POST['gkk-answer']) <= 1 ) //the length is too short
			echo SHORTDATA;
		else {
			$question = trim(mysql_prep($_POST['gkk-question']));
			$answer = trim(mysql_prep($_POST['gkk-answer']));
			if(!isset($_SESSION['status'])) {
				$name = trim(mysql_prep($_POST['nameSubmit']));
				$email = trim(mysql_prep($_POST['emailSubmit']));
			} else {
				$name = NULL;
				$email = NULL;
			}
			if(!empty($question) && !empty($answer)) { //after filtering input, make sure it is not empty
					$query = "INSERT INTO gkks (id, question, answer, date, name, email) VALUES ('', '{$question}', '{$answer}', '', '{$name}', '{$email}')";
					$result = mysql_query($query, $connection) or die(mysql_error());
					echo SUCCESSFULLSUBMISSION;
			}
			else
				echo SHORTDATA;
		}
	} else 
		echo FIELDEMPTY;