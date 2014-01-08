<?php
	include_once('includes/session.php');
	include_once('includes/connection.php');
	include_once('includes/functions.php');
	unset($_SESSION['idArray']);
	unset($_SESSION['nextGkk']);
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
	<title>Gaun Khane Katha | <?php echo SITENAME; ?></title>
	<meta http-equiv="Content-Language" content="en-us" />
	<meta name="description" content="Presenting you the traditional proverbial Nepali game Gaun Khane Katha also known as Village Eating story with answers for you!" />
	<meta name="keywords" content="Gaun Khane Katha, Gau Khane Katha, Gaun, Khane, Katha, Village Eating Stroy, Gau, Khaney, Maha Jodi, Gaun Khane Katha with Answers, Nepali Students, Nepali" />
	<meta name="author" content="Sushil Kumar Gupta, Nepsquare" />
	<meta name="msvalidate.01" content="DD0120856305F70BE3A19AE3080319EF" />
	<!-- including css for GKK -->
	<link href="css/bootstrap-1.1.1.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">
	<link href="css/jquery.jgrowl.css" rel="stylesheet">
	<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
	<link rel="icon" href="/images/favicon.ico" type="image/x-icon">
	<!-- including jquery from library-->
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/jquery.jgrowl.js"></script>
	<script type="text/javascript" src="js/gkk.js"></script>
	<script type="text/javascript" src="js/constants.js"></script>
	<script type="text/javascript" src="js/jquery.ba-hashchange.min.js"></script>
	
	<!-- Transliterate script -->
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<script type="text/javascript" src="js/transliterate.js"></script>
	
</head>
<body>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-21471546-15', 'gaunkhanekatha.com');
  ga('send', 'pageview');

</script>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=211850138851102";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
   <!-- no top menu, it is removed for clean interface -->
    <div class="container">
    <div class="header">
    	<div class="logo"><a href="http://gaunkhanekatha.com"><img src="images/header.jpg" alt="Gaun Khane Katha"/></a></div>
    	<div class="social"><?php include('includes/share.php'); ?></div>
    </div>
	
	<ul class="tabs">
		<li id='navHome' <?php if($_SERVER['PHP_SELF'] == '/gkk/index.php') { echo 'class="active"'; } ?>><a id='home-nav' href="#!/home" style="text-decoration:none;"><img src="images/home.png" width="15px" style="margin-bottom: -2px">&nbsp;<?php echo HOME; ?></a></li>
		<li id='navAdd'><a id='add-gkk' href="#!/add" style="text-decoration:none;"><img src="images/add.png" width="15px" style="margin-bottom: -2px">&nbsp;<?php echo ADD; ?></a></li>
		<li id='navAbout' class="logout "><a id='about-us' href="#!/about" style="text-decoration:none;"><img src="images/about.png" width="15px" style="margin-bottom: -2px">&nbsp;<?php echo ABOUT; ?></a></li>
		<li id="navList"><a id="gkk-list" class='
		<?php 
			if(!isset($_SESSION['status']))
				echo "hide";
		?>
		' href="#!/list" style="text-decoration:none;"><img src="images/list.png" width="15px" style="margin-bottom: -2px">&nbsp;<?php echo LISTGKK; ?></a></li>
		<li id="navLogout" class="logout"><a class='
		<?php 
			if(!isset($_SESSION['status']))
				echo "hide";
		?>
		' id='logout-auth' href="#!/logout" style="text-decoration:none;"><img src="images/logout.png" width="15px" style="margin-bottom: -2px">&nbsp;<?php echo LOGOUT; ?></a></li>
		<li id="navLogin" class="logout"><a id="auth-login" class='
		<?php 
			if(isset($_SESSION['status']))
				echo "hide";
		?>
		' href="#!/login" style="text-decoration:none;"><img src="images/login.png" width="15px" style="margin-bottom: -2px">&nbsp;<?php echo LOGIN; ?></a></li>
	</ul>