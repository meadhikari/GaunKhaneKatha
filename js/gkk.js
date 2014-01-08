	//variables set because it is needed to clearTimeout because if it is not cleared, timing with the "waiting"
	//feature messes with the upcoming gkks new setTmeout
	var time1, time2, time3, time11, time12, time13, time21, time22, time23, time31, time32, time33, time41, time51;
	
	//to hide all the opened divs so that new div could be displayed on click
	function hideDivs(){
		$("#loading").show(); 
		$("#main-hero-unit").slideUp().addClass("hide"); 
		$("#hero-unit-add").slideUp().addClass("hide"); 
		$("#hero-unit-about").slideUp().addClass("hide"); 
		$("#hero-unit-list").slideUp().addClass("hide"); 
		$("#hero-unit-edit").slideUp().addClass("hide"); 
		$("#hero-unit-auth").slideUp().addClass("hide"); 
					
	}
	
	//inactivate all the links on the nav
	function inactivateNavs(){ 
		$("#navHome").removeClass("active");
		$("#navAdd").removeClass("active");
		$("#navEdit").removeClass("active");
		$("#navAbout").removeClass("active");
		$("#navList").removeClass("active");
		$("#navLogin").removeClass("active");
	}
	
	var init = function(){		
		$("#gkk-answer").hide(); 	//hide the answer by default
		$("#next-button").hide(); 	//also hide the next button by defaut
		$("#answer-button").hide();	//also hide the answer button until the wait button comes and goes
		$("#answer-disabled").hide(); //also hide disable button for few seconds before the question appears
		$("#authorName").hide(); //also hide author name
		

		time1 = setTimeout(function(){$("#answer-disabled").fadeIn(100);}, 500); //wait for the question to appear.. for 500 Micro Second and then show the "wait" button
		time2 = setTimeout(function(){$("#answer-disabled").fadeOut(300);}, 5000); //then hide the "wait" button after few seconds
		time3 = setTimeout(function(){$("#answer-button").fadeIn(300);}, 5302); //then suddenly after the wait button is hidden, show the "Show Answer" button
	}
	
	/*var getAdv = function() {
		$.ajax({
			url : "ajax/getadv.php",
			datatype: "script",
			error: function(error){
				alert('There is an error!');
			},
			success : function(adv){
					$('#adv').html(adv);
			}
		});
		//$('#adv').load('ajax/getadv.php');
	}
	*/

	//getquestion is a function that is used to replace the contents if button clicked, AKA ajax
	var getquestion = function(){
		hideDivs();
		inactivateNavs(); //inactivate all the nav links first 
		$("#navHome").addClass("active");
		$.ajax({
			type : "post",
			url : "ajax/randomgkk.php",
			datatype: "json",
			error: function(error){
				alert('There is an error!');  //if any error, it pops up as alert
				},
			success : function(gkk){
				//clearing timeout.. becuase if user clicks the home/next button too fast then there might be timing problem with the buttons..
				clearTimeout(time1);
				clearTimeout(time2);
				clearTimeout(time3);
				hideDivs();
				inactivateNavs(); //inactivate all the nav links first 
				$("#loading").hide(); 
				$("#navHome").addClass("active");
				setTimeout(function(){$("#pageheader").text(HOMEPAGEHEADER);},101); //change the page header;
				setTimeout(function(){$("div#main-hero-unit").slideDown(200);},501); //show the main gkk div
			
				//process the ajax data for random GKK
				var randomGkk = JSON.parse(gkk);
				setTimeout(function(){$("#gkk-question").html(randomGkk[0]);},500); //change the question
				$("#gkk-answer").html(randomGkk[1]); //change the answer, but first hide the answer section
				
				if(randomGkk[2] != null) {
					$("#authorName").hide().html("<h6>"+NAMEBEFORE +"<i>"+randomGkk[2]+"</i>"+ NAMEAFTER+"</h6>");
				} else {
					$("#authorName").hide().html("");
				}
				init(); //call the init function, because we need to hide/unhide the different buttons again
			}
		});
	}
	
	
	//function that will get the about page content using ajax
	var getabout = function(){
		hideDivs();
		$("#loading").hide(); 
		inactivateNavs();
		$("#navAbout").addClass("active");
		setTimeout(function(){$("#pageheader").text(ABOUTPAGEHEADER);},101); //change the page header;
		setTimeout(function(){$("div#hero-unit-about").slideDown(200).removeClass('hide');},301); //show the about us page div
	}
	
	//function to show add page
	var getadd = function(){
		hideDivs();
		$("#loading").hide(); 
		inactivateNavs();
		$("#navAdd").addClass("active");
		setTimeout(function(){$("#pageheader").text(ADDPAGEHEADER);},101); //change the page header;
		setTimeout(function(){$("div#hero-unit-add").slideDown(200).removeClass('hide');},301); //show the about us page div
	}
	
	//function to show login div
	var getauth = function(){
		hideDivs();
		$("#loading").hide(); 
		inactivateNavs();
		$("#navLogin").addClass("active");
		setTimeout(function(){$("#pageheader").text(LOGINPAGEHEADER);},101); //change the page header;
		setTimeout(function(){$("#hero-unit-auth").slideDown(200).removeClass('hide');},301); //show the about us page div
	}
	
	//function to display gkk-list through ajax
	var getlist = function(page){
		hideDivs();

		$.ajax({
			type : "get",
			url : "ajax/getlist.php",
			datatype: "json",
			data:{'page':page},
			error: function(error){
				alert('There is an error!');  //if any error, it pops up as alert
			},
			success : function(list){
				if(list == NOTALLOWED) {
					clearTimeout(time41);
					$("div.jGrowl").jGrowl("close"); //to close the jGrowl notification if it is already open
					time41 = setTimeout(function(){$.jGrowl(NOTALLOWED, {life:10000});},1000); //display the notification after 1 second
				} else {
					var listPage = JSON.parse(list);
					hideDivs();
					$("#loading").hide(); 
					inactivateNavs();
					$("#navList").addClass("active");
					setTimeout(function(){$("#hero-unit-list").html(listPage);},501); //change the content in the list div
					setTimeout(function(){$("#pageheader").text(LISTPAGEHEADER);},501); //change the page header;
					setTimeout(function(){$("#hero-unit-list").slideDown(500).removeClass('hide');},1000); //show the list page div
				}
			}
		});
	}
	
	var submitgkk = function(question, answer, nameSubmit, emailSubmit){
		hideDivs();
		$.ajax({
			type: "post",
			url : "process/addprocess.php",
			datatype: "json",
			data:{'gkk-question':question, 'gkk-answer':answer, 'nameSubmit':nameSubmit, 'emailSubmit':emailSubmit},
			error: function(error){
				alert('There is an error!'); //if any error
			},
			success : function(message) {
				$("#loading").hide(); 
				setTimeout(function(){$.jGrowl(message, {life:10000});},1000); //display the notification after 1 second
				$("#hero-unit-add").slideUp(500);
				if(message != ERRORMESSAGE) {
					setTimeout(function(){$("#transl1").attr("value",'');},501); //wait for the boxes to be empty then show it
					setTimeout(function(){$("#transl2").attr("value",'');},501); //wait for the boxes to be empty then show it
				}
				setTimeout(function(){$("#hero-unit-add").slideDown(500);},502); //wait for the boxes to be empty then show it
			}
		});
	};
	
	var loginInside = function(email, password){
		hideDivs();

		$.ajax({
			type: "post",
			url : "process/authprocess.php",
			datatype: "json",
			data:{'email':email, 'password':password},
			error: function(error){
				alert('There is an error!'); //if any error
			},
			success : function(message) {
				$("#loading").hide(); 
				setTimeout(function(){$.jGrowl(message, {life:10000});},1000); //display the notification after 1 second
				if(message == LOGINSUCCESS) {

					$("#auth-login").addClass("hide");
					$("#gkk-list").removeClass("hide");
					$("#logout-auth").removeClass("hide");
					$("#hero-unit-auth").addClass("hide").slideUp(500);
					$("#nameEmailDiv").addClass("hide");
					setTimeout(function(){getlist(1);},501); //wiat until the login box is slided up
					
				} else if (message == LOGINERROR){
					$("#passwordInput").attr('value','');
					setTimeout(function(){$("#hero-unit-auth").slideDown(500);},502); //wait for the boxes to be empty then show it
				} else if (message == NOTALLOWED) {
					$("#emailInput").attr('value','');
					$("#passwordInput").attr('value','');
					setTimeout(function(){$("#hero-unit-auth").slideDown(500);},502); //wait for the boxes to be empty then show it
				}
			}
		});
	};
	
	var goLogout = function(){
		hideDivs();

		$.ajax({	
			type: "post",
			url : "ajax/logout.php",
			datatype: "json",
			error: function(error){
				alert('There is an error!'); //if any error
			},
			success : function(message) {
				$("#loading").hide(); 
				setTimeout(function(){$.jGrowl(message, {life:10000});},1000); //display the notification after 1 second
				$("#auth-login").removeClass("hide");
				$("#gkk-list").addClass("hide");
				$("#logout-auth").addClass("hide");
				getquestion();
			}
		});
	};
	

	var deleteset = function(trow, did) {
		$.ajax({	
			type: "post",
			url : "process/deleteprocess.php",
			datatype: "json",
			data:{'id':did},
			error: function(error){
				alert('There is an error!'); //if any error
			},
			success : function(message) {
				$("#loading").hide(); 
				clearTimeout(time11);
				clearTimeout(time12);
				clearTimeout(time13);
				if(message == '1') {
					$("div.jGrowl").jGrowl("close"), //to close the jGrowl notification if it is already open
					time11 = setTimeout(function(){$.jGrowl(DELETESUCCESS, {life:5000});},1000); //display the notification after 1 second
					$("#row-"+trow).fadeOut(500).addClass("hide");
					$("#ans-"+trow).fadeOut(500).addClass("hide");
					$("#auth-"+trow).fadeOut(500).addClass("hide");
				} else if(message == '0') {
					$("div.jGrowl").jGrowl("close"), //to close the jGrowl notification if it is already open
					time12 = setTimeout(function(){$.jGrowl(DELETEERROR, {life:5000});},1000); //display the notification after 1 second
				} else if(message == 'Now allowed!') {
					$("div.jGrowl").jGrowl("close"), //to close the jGrowl notification if it is already open
					time13 = setTimeout(function(){$.jGrowl(NOTALLOWED, {life:5000});},1000); //display the notification after 1 second
				}
			}
		});
	}

	var editset = function(trow, did) {
		hideDivs();

		$.ajax({	
			type: "post",
			url : "ajax/getedit.php",
			datatype: "json",
			data:{'id':did},
			error: function(error){
				alert('There is an error!'); //if any error
			},
			success : function(message) {
				$("#loading").hide(); 
				clearTimeout(time21);
				clearTimeout(time22);
				clearTimeout(time23);
				
				if(message == EDITERROR || message == NOTALLOWED) {
					time21 = setTimeout(function(){$.jGrowl(message, {life:5000});},1000); //display the notification after 1 second
				} else {
					var gkkEditDetails = JSON.parse(message);
					$("#hero-unit-list").slideUp(500);
					setTimeout(function(){$("#pageheader").text(EDITPAGEHEADER);},101); //change the page header;
					setTimeout(function(){$("#transl3").attr("value",gkkEditDetails[1]);},501); //wait for the boxes to be filled with data
					setTimeout(function(){$("#transl4").attr("value",gkkEditDetails[2]);},501); //wait for the boxes to be filled with data
					setTimeout(function(){$("#edit-id").attr("value",gkkEditDetails[0]);},501); //wait for the boxes to be filled with data
					setTimeout(function(){$("#nameInputSubmit1").attr("value",gkkEditDetails[3]);},501); //wait for the boxes to be filled with data
					setTimeout(function(){$("#emailInputSubmit1").attr("value",gkkEditDetails[4]);},501); //wait for the boxes to be filled with data
					setTimeout(function(){$("#hero-unit-edit").slideDown(500);},502); //wait for the boxes to fill up then only show it					
				}
			}
		});
	}
	
	var submitedit = function(id, question, answer, name, email){
		hideDivs();

		$.ajax({	
			type: "post",
			url : "process/editprocess.php",
			datatype: "json",
			data:{'gkk-id':id, 'gkk-question':question, 'gkk-answer':answer, 'nameEdit': name, 'emailEdit':email},
			error: function(error){
				alert('There is an error!'); //if any error
			},
			success : function(message) {
				$("#loading").hide(); 
				if(message == 1) {
					setTimeout(function(){$.jGrowl(EDITSUCCESS, {life:10000});},1000); //display the notification after 1 second				
					getlist(1);
				} else 
					setTimeout(function(){$.jGrowl(message, {life:10000});},1000); //display the notification after 1 second
			}
		});
	};

	
	var approveset = function(aRow, did) {
		$.ajax({	
			type: "post",
			url : "process/approveprocess.php",
			datatype: "json",
			data:{'id':did},
			error: function(error){
				alert('There is an error!'); //if any error
			},
			success : function(message) {
				$("#loading").hide(); 
				clearTimeout(time31);
				clearTimeout(time32);
				clearTimeout(time33);
				
				message = message.replace(/\s+/g, ' '); //removing the space from the message
				if(message == 1) {
					$("div.jGrowl").jGrowl("close"), //to close the jGrowl notification if it is already open
					time31 = setTimeout(function(){$.jGrowl(APPROVESUCCESS, {life:5000});},1000); //display the notification after 1 second
					$("#approve-row-"+aRow).addClass("hide");
				} else if(message == 0) {
					$("div.jGrowl").jGrowl("close"), //to close the jGrowl notification if it is already open
					time32 = setTimeout(function(){$.jGrowl(APPROVEERROR, {life:5000});},1000); //display the notification after 1 second
				} else if(message == 'Now allowed!') {
					$("div.jGrowl").jGrowl("close"), //to close the jGrowl notification if it is already open
					time33 = setTimeout(function(){$.jGrowl(NOTALLOWED, {life:5000});},1000); //display the notification after 1 second
				}
			}
		});
	}
	
	
	//as soon as the page is loaded, getquestion is called, and also basically because the hero-unit has been hidden by default
	$(window).load(function(){
		var hashHome = window.location.hash;
		if(hashHome == '#!/home' || hashHome == '') {
			getquestion();
		} else if(hashHome == '#!/add') {
			getadd();
		} else if(hashHome == '#!/about') {
			getabout();
		} else
			getquestion();
	});
	
	//and when the document is ready and someone clicks on the #next-button, getquestion function is called, so that the contents are replaced using ajax
	$(document).ready(function(){
		$("#next-button").click(getquestion);
		
		$("#answer-button").click(function () {
			$("#gkk-answer").slideDown("fast");
			$("#authorName").slideDown("fast");
			$("#answer-button").hide();
			$("#next-button").show();
		});	
	
		//showing the about page div using jquery, i.e. adding and removing hide class
		$("#about-us").click(getabout);	
		
		//showing add page by calling (getadd()) and if the div is hidden, show it using the removeCLass("hide")
		$("#add-gkk").click(getadd);	
		
		//after clicking home button..
		$("#home-nav").click(getquestion);	
		
		//after clicking auth button..
		$("#auth-login").click(getauth);
		
		//after clicking list button
		$("#gkk-list").click(function(){getlist(1);});
		
		//submit the GKK to the database
		$("#submit-gkk").click(function(){
			$("div.jGrowl").jGrowl("close"), //to close the jGrowl notification if it is already open
			submitgkk(	$("#transl1").attr("value"), //taking value from the input using attribute method
						$("#transl2").attr("value"),
						$("#nameInputSubmit").attr("value"),
						$("#emailInputSubmit").attr("value")
					);
		});
		
		//logging in via ajax via auth div
		$("#loginButton").click(function(){
			$("div.jGrowl").jGrowl("close"), //to close the jGrowl notification it is already open
			loginInside($("#emailInput").attr("value"), //taking value from the input using attribute method
						$("#passwordInput").attr("value")
					);
		});
		
		//after clicking logout button..
		$("#logout-auth").click(function(){
			$("div.jGrowl").jGrowl("close"), //to close the jGrowl notification if it is already open
			goLogout();
		});
		
		//after clicking submit edit button
		$("#edit-submit-gkk").click(function(){
			var idEdit = $("#edit-id").attr("value");
			var questEdit = $("#transl3").attr("value");
			var ansEdit = $("#transl4").attr("value");
			var namEdit = $("#nameInputSubmit1").attr("value");
			var emlEdit = $("#emailInputSubmit1").attr("value");
			submitedit(idEdit, questEdit, ansEdit, namEdit, emlEdit);
		});
		
		//after clicking CANCEL edit button
		$("#edit-submit-gkk-cancel").click(function(){
			getlist(1);
		});

		//if clicked any row in the table in the (in the row table)
		$("#del-row-1").live('click',function(){
			var dbid = $("#row-1").attr("dbId");
			deleteset("1",dbid);
		});
		$("#del-row-2").live('click',function(){
			var dbid = $("#row-2").attr("dbId");
			deleteset("2",dbid);
		});
		$("#del-row-3").live('click',function(){
			var dbid = $("#row-3").attr("dbId");
			deleteset("3",dbid);
		});
		$("#del-row-4").live('click',function(){
			var dbid = $("#row-4").attr("dbId");
			deleteset("4",dbid);
		});
		$("#del-row-5").live('click',function(){
			var dbid = $("#row-5").attr("dbId");
			deleteset("5",dbid);
		});
		$("#del-row-6").live('click',function(){
			var dbid = $("#row-6").attr("dbId");
			deleteset("6",dbid);
		});
		$("#del-row-7").live('click',function(){
			var dbid = $("#row-7").attr("dbId");
			deleteset("7",dbid);
		});
		$("#del-row-8").live('click',function(){
			var dbid = $("#row-8").attr("dbId");
			deleteset("8",dbid);
		});
		$("#del-row-9").live('click',function(){
			var dbid = $("#row-9").attr("dbId");
			deleteset("9",dbid);
		});
		$("#del-row-10").live('click',function(){
			var dbid = $("#row-10").attr("dbId");
			deleteset("10",dbid);
		});

		//if clicked any row in the table for editing in the (in the row table)
		$("#edit-row-1").live('click',function(){
			var dbid = $("#row-1").attr("dbId");
			editset("1",dbid);
		});
		$("#edit-row-2").live('click',function(){
			var dbid = $("#row-2").attr("dbId");
			editset("2",dbid);
		});
		$("#edit-row-3").live('click',function(){
			var dbid = $("#row-3").attr("dbId");
			editset("3",dbid);
		});
		$("#edit-row-4").live('click',function(){
			var dbid = $("#row-4").attr("dbId");
			editset("4",dbid);
		});
		$("#edit-row-5").live('click',function(){
			var dbid = $("#row-5").attr("dbId");
			editset("5",dbid);
		});
		$("#edit-row-6").live('click',function(){
			var dbid = $("#row-6").attr("dbId");
			editset("6",dbid);
		});
		$("#edit-row-7").live('click',function(){
			var dbid = $("#row-7").attr("dbId");
			editset("7",dbid);
		});
		$("#edit-row-8").live('click',function(){
			var dbid = $("#row-8").attr("dbId");
			editset("8",dbid);
		});
		$("#edit-row-9").live('click',function(){
			var dbid = $("#row-9").attr("dbId");
			editset("9",dbid);
		});
		$("#edit-row-10").live('click',function(){
			var dbid = $("#row-10").attr("dbId");
			editset("10",dbid);
		});
		
		//if clicked any row in the table for approving in the (in the row table)
		$("#approve-row-1").live('click',function(){
			var dbid = $("#row-1").attr("dbId");
			approveset("1",dbid);
		});
		$("#approve-row-2").live('click',function(){
			var dbid = $("#row-2").attr("dbId");
			approveset("2",dbid);
		});
		$("#approve-row-3").live('click',function(){
			var dbid = $("#row-3").attr("dbId");
			approveset("3",dbid);
		});
		$("#approve-row-4").live('click',function(){
			var dbid = $("#row-4").attr("dbId");
			approveset("4",dbid);
		});
		$("#approve-row-5").live('click',function(){
			var dbid = $("#row-5").attr("dbId");
			approveset("5",dbid);
		});
		$("#approve-row-6").live('click',function(){
			var dbid = $("#row-6").attr("dbId");
			approveset("6",dbid);
		});
		$("#approve-row-7").live('click',function(){
			var dbid = $("#row-7").attr("dbId");
			approveset("7",dbid);
		});
		$("#approve-row-8").live('click',function(){
			var dbid = $("#row-8").attr("dbId");
			approveset("8",dbid);
		});
		$("#approve-row-9").live('click',function(){
			var dbid = $("#row-9").attr("dbId");
			approveset("9",dbid);
		});
		$("#approve-row-10").live('click',function(){
			var dbid = $("#row-10").attr("dbId");
			approveset("10",dbid);
		});
		
		//using the hashchange plugin to detect and act on the address change event
		$(window).hashchange( function(){
			var hash = location.hash;
			if(hash == '#!/home') {
				getquestion();
			}
			
			if(hash == '#!/add') {
				getadd();
			}
			
			if(hash == '#!/about') {
				getabout();
			}
			
			if(hash == '#!/list') {
				getlist();
			}
		})
	});