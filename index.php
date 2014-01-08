<?php //error_reporting(E_ALL); ini_set('display_errors', '1'); ?>
<?php include("includes/header.php"); ?>
<h1 id='pageheader'><?php echo HOMEPAGEHEADER; ?></h1>
<h6 id='loading'><?php echo LOADINGTEXT; ?></h6>
<!-- about page div -->
<div class="hero-unit hide" id='hero-unit-about'>
	<i>Code behind this application is released under GNU GPLv3 and is available for download <a href="<?php echo SOURCECODEURL; ?>" target="_blank">here</a>.</i>
	<br />
	Gaun Khane katha is one of the popular question and answer game played/originated in Nepal. The game is played either between two peoples or in groups by asking different rheotorical questions that are not easy to answer. Most of the time, there may be two or more answer as the answers are never exact and symbolic ones that just represents the question. Sometime also known as village eating story,  here, when asking a question, one puts one of his village as a bet, and if the other person, answerer, answers the question correctly, he wins that village. This way, Gau Khane Katha (Gaun Khane Katha) players end up knowing the names of lots and lots of villages. I guess, people used to play this game to enhance their geographical knowledge when things like Google Maps were just not <i>feasible</i>, so to say. :P So, ready to answer?
	<br /><br />Here, on this website, we have included all the Gaun Khane Katha we have known and found so far. If you know some, help us in increasing the database. Thank you for supporting Nepali Culture.
	<br /><br />
	<b>Love, by <a href="http://skg.com.np" target="_blank">Sushil Gupta</a>.</b>
</div>
<!-- endof about page div-->

<!-- add page div-->
<div class="hero-unit hide" id='hero-unit-add'>
	<label><?php echo QUESTION; ?></label>
	<div class="input">
	<textarea name="gkk-question" id="transl1" placeholder="<?php echo QUESTIONDETAIL; ?>"></textarea>
	</div><br />
	<label><?php echo ANSWER; ?></label><input type="text" name="gkk-answer" id='transl2' placeholder="<?php echo ANSWERDETAIL; ?>"/><br /><br />
	<div id='nameEmailDiv' class=''>
	<?php
		if(!isset($_SESSION['status'])) {
	?>
	<label><?php echo NAME; ?></label><input id='nameInputSubmit' type="text" name="nameSubmit" placeholder="<?php echo NAMEDETAIL; ?>"/><br /><br />
	<label><?php echo EMAIL; ?></label><input id='emailInputSubmit' type="text" name="emailSubmit" placeholder="<?php echo EMAILDETAIL; ?>"/><br /><br />
	<?php
		} else {
	?>
	<input id='nameInputSubmit' type="hidden" name="nameSubmit" value="<?php echo ADMINNAME; ?>"/>
	<input id='emailInputSubmit' type="hidden" name="emailSubmit" value="<?php echo ADMINNAME; ?>"/>
	<?php
		}
	?>
	
	</div>
	<label></label><button id='submit-gkk' type="button" class="primary btn"><?php echo ADDDETAIL; ?></button>
</div>
<!-- end of add page div-->

<!-- edit page div-->
<div class="hero-unit hide" id='hero-unit-edit'>
	<label><?php echo QUESTION; ?></label>
	<div class="input">
	<textarea name="gkk-question" id="transl3" placeholder="<?php echo QUESTIONDETAIL; ?>"></textarea>
	</div><br />
	<label><?php echo ANSWER; ?></label><input type="text" name="gkk-answer" id='transl4' placeholder="<?php echo ANSWERDETAIL; ?>"/><br /><br />
	<label><?php echo NAME; ?></label><input type="text" name="nameEdit" id='nameInputSubmit1' placeholder="<?php echo NAMEDETAIL; ?>"/><br /><br />
	<label><?php echo EMAIL; ?></label><input type="text" name="emailEdit" id='emailInputSubmit1' placeholder="<?php echo EMAILDETAIL; ?>"/><br /><br />
	<input type="hidden" id='edit-id' value=""/>
	<label></label><button id='edit-submit-gkk' type="button" class="primary btn"><?php echo EDITBUTTON; ?></button>&nbsp;<button id='edit-submit-gkk-cancel' type="button" class="primary default btn"><?php echo CANCELBUTTON; ?></button>
</div>
<!-- end of edit page div-->
	
<!-- auth page div-->
<div class="hero-unit hide" id="hero-unit-auth">
		<label><?php echo USERNAME; ?></label><input id='emailInput' type="text" name="email" placeholder="<?php echo USERNAME; ?>"/><br /><br />
		<label><?php echo PASSWORD; ?></label><input id='passwordInput' type="password" name="password" placeholder="<?php echo PASSWORD; ?>"/><br /><br />
		<label>&nbsp;</label><button class="btn primary" id='loginButton'/><?php echo LOGIN; ?></button>
</div>
<!-- endof auth page div-->
<!-- list div starts here -->
<div class="hero-unit hide" id='hero-unit-list'>
</div>
<!-- list div ends here-->
	
<!-- Main hero unit for a primary marketing message or call to action -->
<div class="hero-unit hide" id="main-hero-unit">
	<center>
	<div id='question-answer'>
		<p id='gkk-question'></p>
		<div class='alert-message info' id='gkk-answer'></div>
		<div id='authorName' class='hide'></div>
	</div>
		<a id='answer-disabled' href="#wait" class="primary btn disabled"><img src="images/clock.png" width="15px" style="margin-bottom: -3px">&nbsp;<?php echo WAIT; ?></a>
		<a id='answer-button' href="#answer" class="primary btn"><img src="images/display.png" width="15px" style="margin-bottom: -3px">&nbsp;<?php echo SEEANSWER; ?></a>
		<a id='next-button' href="#next" class="primary btn"><img src="images/next.png" width="15px" style="margin-bottom: -3px">&nbsp;<?php echo NEXTQUESTION; ?></a>
		<!-- jQuery button show and hide function-->				
	</center>	
	<!--				
	 <div id="adv">
		<script type="text/javascript"><!--
		google_ad_client = "ca-pub-8191982311127736";
		/* Gaun Khane Katha Small */
		google_ad_slot = "4525581467";
		google_ad_width = 468;
		google_ad_height = 60;
		//--><!-- 
		</script>
		<script type="text/javascript"
		src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
		</script>
	</div>
	-->
</div>
<!-- main hero unit ends here-->
<?php include("includes/footer.php"); ?>
