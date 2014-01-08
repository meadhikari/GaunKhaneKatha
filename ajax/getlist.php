<?php
	include_once('../includes/session.php');
	include_once('../includes/connection.php');
	include_once('../includes/functions.php');
	include("../lib/pagination.php"); 
	
	check_auth(NOTALLOWED);
	
	$data =	'<table class="table" id="sortTableExample"><tbody>';

	$result = mysql_query("SELECT COUNT(*) AS num FROM gkks WHERE status != '0'");
	$row = mysql_fetch_assoc($result);
	$total_records_approved = $row['num'];
	
	$result = mysql_query("SELECT COUNT(*) AS num FROM gkks WHERE status != '1'");
	$row = mysql_fetch_assoc($result);
	$total_records_pending = $row['num'];
				
	$data .= TOTAL . " <b> " . $total_records_approved . " </b> ". ACTIVATED .' '. NEPALIAND ." <b> ". $total_records_pending ." </b> ". PENDING ."&nbsp;". GKKS ."<br /><br />";
				
	//pagination class starts here
	$page = 1;
	$size = 10; // how many records per page

	if (isset($_GET['page'])){ // we get the current page from $_GET
		$page = (int) $_GET['page'];
	}

	$result = mysql_query("SELECT COUNT(*) AS num FROM gkks");
	$row = mysql_fetch_assoc($result);
	$total_records = $row['num'];

	$pagination = new Pagination(); // create the pagination class
	$pagination->setLink("list.php?page=%s");
	$pagination->setPage($page);
	$pagination->setSize($size);
	$pagination->setTotalRecords($total_records);
	
	//listing the gkks from database with the LIMIT in mind
	$query = "SELECT id, question, answer, status, name, email FROM gkks ORDER BY status ASC, id DESC ". $pagination->getLimitSql();
	$result = mysql_query($query, $connection) or die(mysql_error());
	$i = 1;
	while($gkk = mysql_fetch_array($result)) {
		$data .= "<tr class='asdf ' dbId='".$gkk['id']."' id='row-".$i."'><td class='questionList'>";
		$data .= $gkk['question'];
		$data .= "</td></tr>";
		$data .= "<tr class='asdf' id='ans-".$i."'><td>";
		$data .= $gkk['answer'];
		$data .= "<div class='answerEdit'><a href='#!/delete'><img id='del-row-".$i."' src='images/delete_icon.png' width='9px'/></a>";
		$data .= "<a href='#!/edit'><img class='' id='edit-row-".$i."' src='images/edit_icon.png' width='10px'/></a>";
		if($gkk['status'] == 0) {
			$data .= "<a href='#!/approve'><img class='' id='approve-row-".$i."' src='images/correct_icon.png' width='12px'></a>";
		}
		$data .= "</div></td></tr>";
		$data .= "<tr id='auth-".$i."'><td style='background-color:#FFFFFF'>";
		if($gkk['name'] != NULL || $gkk['name'] != '') {
			$data .= $gkk['name'];
		}
		if($gkk['email'] != NULL || $gkk['email'] != '') {
			$data .= "&nbsp;(<i>".$gkk['email']."</i>)";
		}
		$data .= "&nbsp;</td></tr>";
		$i++;
	}
	
	$data .= '</tbody></table><br />';

	$navigation = $pagination->create_links();
	$data .= $navigation; // will draw our page navigation

	echo json_encode($data);