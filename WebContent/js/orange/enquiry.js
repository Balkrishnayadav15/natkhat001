$(document).ready(function(){
          
	$("#submitEnquiry").click(function(){
		
		 var name = document.getElementById("username").value;
		 var email = document.getElementById("emailid").value;
		 var mobile = document.getElementById("mobileno").value;
		 var schoolName = document.getElementById("iname").value;
		 var schoolArea = document.getElementById("area").value;
		 var firmAmount = document.getElementById("firmAmount").value;
		 
		 if(name == null || name == '' || schoolName == null || schoolName == '' ||
				 address == null || address == '' ||
				 email == null || email == '' ||
				 mobile == null || mobile == ''){
			 return false;
		 }else{
			     var dataString = 'name='+ name + '&schoolName=' + schoolName+ '&firmAmount=' + firmAmount+ '&schoolArea=' + schoolArea+ '&email=' + email + '&mobile=' + mobile ;
			    // $("#divLoading").addClass('show');
			     
			     jQuery.ajax({
			         url: "/orangeEnquiry",
			         data: dataString,
			         type: "POST",
			         success: function(data){
			        	 var responseData = JSON.parse(data);
						 if(responseData.VALID=='yes') {
								 $("#error_message").hide();
					        	 $("#success_message").show();
						 }else{
							 $("#error_message").show();
				        	 $("#success_message").hide();
						 }
			         },
			         error: function (){}
			     });
		 }
});
});


