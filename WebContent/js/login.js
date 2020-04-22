 var currentUser = sessionStorage.getItem("LOGGED_IN_USER");

$(document).ready(function(){
          
	$("#login").click(function(){
		var userId = $("#userId").val();
		var password = $("#password").val();
		 var isSubmit = false; 
//		Checking for blank fields.
		if( userId ==''){
			$("#userId_error").show();
			isSubmit = true;
		}else{
			$("#userId_error").hide();
			isSubmit = false;
		}
		if( password ==''){
			$("#password_error").show();
			isSubmit = true;
		}else{
			$("#password_error").hide();
			isSubmit = false;
		}

		
		if(!isSubmit){
			
			document.getElementById("loginForm").submit();
		}
	});
});/**
 * 
 */