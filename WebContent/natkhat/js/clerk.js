$(document).ready(function(){
	$('#submitDocs').click(function(event){

		var sClass =  $('#sClass').val();
		var sSection =  $('#sSection').val();
		var bName =  $('#bName').val();
		var bScholar =  $('#bScholar').val();
		var isSubmit = false, isClassFirst = false;
		
		if(sClass != ''){
			isSubmit = true;
			isClassFirst = false;
		}else if(sSection != ''){
			isClassFirst = true;
			isSubmit = false;
		}
		
		if(  bName != '' || bScholar != ''){
			isSubmit = true;
			isClassFirst = false;
		}
		
		if(isSubmit){
			$('#docsErrorMsg').hide();
			$('#docsErrorClassMsg').hide();
			$('#documentForm').submit();
		}else if(isClassFirst){
			$('#docsErrorClassMsg').show();
			$('#docsErrorMsg').hide();
		}else{
			$('#docsErrorMsg').show();
			$('#docsErrorClassMsg').hide();
		}
	});
	
	$('#refreshSearch').click(function(){
		$('#sClass').val('');
		$('#sSection').val('');
		$('#bName').val('');
		$('#bScholar').val('');
		$('#docsErrorMsg').hide();
		$('#docsErrorClassMsg').hide();
	});
	$('#scholarNoSearch').keypress(function(event){
	    var keycode = (event.keyCode ? event.keyCode : event.which);
	    if(keycode == '13'){
	        //alert('You pressed a "enter" key in textbox'); 
	    	var key =  $('#scholarNoSearch').val();
	    	$('#searchKey').val(key);
	    	$('#searchParam').val('scholarNo');
	    	$('#searchForm').submit();
	    }
	});
	
	//Methods for Boys and Girls search filter
	$('#submitBGirls').click(function(event){

		var sClass =  $('#sClass').val();
		var sSection =  $('#sSection').val();
		var sGender =  $('#sGender').val();
		var isSubmit = false, isClassFirst = false;
		
		if(sClass != ''){
			isSubmit = true;
			isClassFirst = false;
		}else if(sSection != ''){
			isClassFirst = true;
			isSubmit = false;
		}
		
		if(  sGender != "" ){
			isSubmit = true;
			isClassFirst = false;
		}
		
		if(isSubmit){
			$('#docsErrorMsg').hide();
			$('#docsErrorClassMsg').hide();
			$('#bGirslForm').submit();
		}else if(isClassFirst){
			$('#docsErrorClassMsg').show();
			$('#docsErrorMsg').hide();
		}else{
			$('#docsErrorMsg').show();
			$('#docsErrorClassMsg').hide();
		}
	});
	$('#refreshBGirslForm').click(function(){
		$('#sClass').val('');
		$('#sSection').val('');
		$('#sGender').val('');
		$('#docsErrorMsg').hide();
		$('#docsErrorClassMsg').hide();
	});
	
	//Methods to filter data based on students categories
	$('#submitCategory').click(function(event){

		var sClass =  $('#sClass').val();
		var sSection =  $('#sSection').val();
		var sCategory =  $('#sCategory').val();
		var isSubmit = false, isClassFirst = false;
		
		if(sClass != ''){
			isSubmit = true;
			isClassFirst = false;
		}else if(sSection != ''){
			isClassFirst = true;
			isSubmit = false;
		}
		
		if(  sCategory != '' ){
			isSubmit = true;
			isClassFirst = false;
		}
		
		if(isSubmit){
			$('#docsErrorMsg').hide();
			$('#docsErrorClassMsg').hide();
			$('#categoryForm').submit();
		}else if(isClassFirst){
			$('#docsErrorClassMsg').show();
			$('#docsErrorMsg').hide();
		}else{
			$('#docsErrorMsg').show();
			$('#docsErrorClassMsg').hide();
		}
	});
	$('#refreshCategory').click(function(){
		$('#sClass').val('');
		$('#sSection').val('');
		$('#sCategory').val('');
		$('#docsErrorMsg').hide();
		$('#docsErrorClassMsg').hide();
	});
	
	//Methods to filter data based on students age
	$('#submitAge').click(function(event){

		var sClass =  $('#sClass').val();
		var sSection =  $('#sSection').val();
		var aOrder =  $('#aOrder').val();
		var isSubmit = false, isClassFirst = false;
		
		if(sClass != ''){
			isSubmit = true;
			isClassFirst = false;
		}else if(sSection != ''){
			isClassFirst = true;
			isSubmit = false;
		}
		
		if(  aOrder != '' ){
			isSubmit = true;
			isClassFirst = false;
		}
		
		if(isSubmit){
			$('#docsErrorMsg').hide();
			$('#docsErrorClassMsg').hide();
			$('#ageForm').submit();
		}else if(isClassFirst){
			$('#docsErrorClassMsg').show();
			$('#docsErrorMsg').hide();
		}else{
			$('#docsErrorMsg').show();
			$('#docsErrorClassMsg').hide();
		}
	});
	$('#refreshAge').click(function(){
		$('#sClass').val('');
		$('#sSection').val('');
		$('#aOrder').val('');
		$('#docsErrorMsg').hide();
		$('#docsErrorClassMsg').hide();
	});
});


