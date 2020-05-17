$(document).ready(function(){
	//Methods to filter data based class and section
	$('#classReportBtn').click(function(event){

		var sClass =  $('#sClass').val();
		var sSection =  $('#sSection').val();
		var sInstallment =  $('#sInstallment').val();
		var isSubmit = false, isClassFirst = false;
		
		if(sClass != '' && sSection != ''){
			isSubmit = true;
			isClassFirst = false;
		}else if(sSection != ''){
			isClassFirst = true;
			isSubmit = false;
		}
		
		if(isSubmit){
			$('#docsErrorMsg').hide();
			$('#docsErrorClassMsg').hide();
			$('#classReportForm').submit();
		}else if(isClassFirst){
			$('#docsErrorClassMsg').show();
			$('#docsErrorMsg').hide();
		}else{
			$('#docsErrorMsg').show();
			$('#docsErrorClassMsg').hide();
		}
	});
	
	//Date wise search 
	 $("#fromDate").datepicker({
	        numberOfMonths: 1,
	        onSelect: function (selected) {
	            var dt = new Date(selected);
	            dt.setDate(dt.getDate() + 1);
	            $("#toDate").datepicker("option", "minDate", dt);
	            
	            var maxdt = new Date(selected);
	            maxdt.setDate(dt.getDate() + 29);
	            $("#toDate").datepicker("option", "maxDate", maxdt);
	        }
	    });
	    $("#toDate").datepicker({
	        numberOfMonths: 1,
	        onSelect: function (selected) {
	            var dt = new Date(selected);
	            dt.setDate(dt.getDate() - 1);
	            $("#fromDate").datepicker("option", "maxDate", dt);
	            
	           /* var maxdt = new Date(selected);
	            maxdt.setDate(dt.getDate() - 29);
	            $("#fromDate").datepicker("option", "minDate", dt);*/
	        }
	    });
	    
	    var dates = $("input[id$='fromDate'], input[id$='toDate']").datepicker({
	        onSelect: function(selectedDate) {
	            var option = this.id == $("input[id$='fromDate']")[0].id ? "minDate" : "maxDate",
	                instance = $(this).data("datepicker"),
	                date = $.datepicker.parseDate(instance.settings.dateFormat || $.datepicker._defaults.dateFormat, selectedDate, instance.settings);
	            dates.not(this).datepicker("option", option, date);
	        }
	    });
	    
	    $('#clearDates').click( function(){
	        dates.attr('value', '');
	        dates.datepicker( "option" , {
	            minDate: null,
	            maxDate: null} );
	    });
	    
	    $('#dateSubmit').click(function(){
	    	var fromDate = $("#fromDate").val();
	    	var toDate = $("#toDate").val();
	    	
	    	if(fromDate != '' && toDate != ''){
	    		$('#errorMsg').hide();
	    		$('#dateViseForm').submit();
	    	}else{
	    		$('#errorMsg').show();
	    	}
	    });
});


