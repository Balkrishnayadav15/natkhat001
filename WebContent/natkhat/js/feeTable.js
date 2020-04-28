$(document).ready(function(){
	$('#updateInstallment').click(function(event){

		var actvity =  $('#actvity').val();
		var first =  $('#first').val();
		var second =  $('#second').val();
		var third =  $('#third').val();
		
		if(  actvity != '' && first != ''  && second != ''  && third != ''){
			$('#modalMsg').hide();
			$('#feeTable').submit();
		}else{
			$('#modalMsg').show();
		}
		
	});
	
	$('#bScholar').keypress(function(event){
	    var keycode = (event.keyCode ? event.keyCode : event.which);
	    if(keycode == '13'){
	        //alert('You pressed a "enter" key in textbox'); 
	    	var value =  $('#bScholar').val();
	    	$('#key').val('scholarNo');
	    	$('#value').val(value);
	    	$('#searchForm').submit();
	    }
	});
	
	$('#bName').keypress(function(event){
	    var keycode = (event.keyCode ? event.keyCode : event.which);
	    if(keycode == '13'){
	        //alert('You pressed a "enter" key in textbox'); 
	    	var value =  $('#bName').val();
	    	$('#key').val('name');
	    	$('#value').val(value);
	    	$('#searchForm').submit();
	    }
	});
	
	$('#payButton').click(function(){

		var amount =  parseInt($('#amount').val());
		var discount =  parseInt($('#discount').val());
		var scholarNo =  $('#scholarNo').val();
		var remainingAmt = parseInt($('#remainingAmt').val());
		var totalAmt = amount + discount;
		if( amount == 0 && discount == 0){
			$('#feeErrMsg').show();
			$('#feeErrMsgZero').hide();
			$('#remainingAmtError').hide();
		}else if( amount >= 0 && discount >= 0 && totalAmt <=  remainingAmt){
			$('#feeErrMsg').hide();
			$('#feeDepForm').submit();
		}else if(totalAmt >  remainingAmt){
			$('#feeErrMsg').hide();
			$('#feeErrMsgZero').hide();
			$('#remainingAmtError').show();
		}else if(amount < 0 || discount < 0 ){
			$('#feeErrMsg').hide();
			$('#remainingAmtError').hide();
			$('#feeErrMsgZero').show();
		}else{
			$('#feeErrMsg').show();
			$('#feeErrMsgZero').hide();
			$('#remainingAmtError').hide();
		}
	});
});

function payFeeBlock(scholarNo){
	$('#scholarNo').val(scholarNo);
	$('#feeDepositeDiv').show();
}

function editInstall(cname,activity,first,second,third){
	
	$('#cname').val(cname);
	$('#activity').val(activity);
	$('#first').val(first);
	$('#second').val(second);
	$('#third').val(third);
	
	var classText = "Class - "+cname;
	$('#selectedClass').html(classText);
	
	$('#feeInstallModal').modal();
}

