$(document).ready(function(){

	

//if close button is clicked
$('.window .close').click(function (e) {
	//Cancel the link behavior
	e.preventDefault();
	
	$('#mask').hide();
	$('.window').hide();
});		

//if mask is clicked
$('#mask').click(function () {
	$(this).hide();
	$('.window').hide();
});	


});

function showHide(tabType){
    if(tabType === 'parents'){
        $('#parentsSection').show();
        $('#studentInfo').hide();
        $('#transportDetails').hide();
        $('#addressDetails').hide();
   	 	$('#reviewData').hide();
    }
    if(tabType === 'student'){
        $('#parentsSection').hide();
        $('#studentInfo').show();
        $('#transportDetails').hide();
        $('#addressDetails').hide();
   	 	$('#reviewData').hide();
    }
    if(tabType === 'transport'){
        $('#parentsSection').hide();
        $('#studentInfo').hide();
        $('#transportDetails').show();
        $('#addressDetails').hide();
   	 	$('#reviewData').hide();
    }
    if(tabType === 'address'){
        $('#parentsSection').hide();
        $('#studentInfo').hide();
        $('#transportDetails').hide();
        $('#addressDetails').show();
   	 	$('#reviewData').hide();
    }
}

function submit(){
	reviewAllField();
	$( "#admissionForm" ).submit();
}
function reviewAllField(){
	
	var isSave = false;
	
	var scholarNo= $('#scholarNo').val();
	var name= $('#name').val();
	var dobFigure= $('#dobFigure').val();
	var dobWords= $('#dobWords').val();
	var gender= $('#gender').val();
	var nationality= $('#nationality').val();
	var religion= $('#religion').val();
	var caste= $('#caste').val();
	var category= $('#category').val();
	var bloodGroup= $('#bloodGroup').val();
	var motherTounge= $('#motherTounge').val();
	var adharNo= $('#adharNo').val();
	var sssmidNo= $('#sssmidNo').val();
	var bankAccNo= $('#bankAccNo').val();
	var ifscCode= $('#ifscCode').val();
	var bankName= $('#bankName').val();
	var currentSchoolName= $('#currentSchoolName').val();
	var admissionDate= $('#admissionDate').val();
	var admissionClass= $('#admissionClass').val();
	var admissionSession= $('#admissionSession').val();
	var studyMedium= $('#studyMedium').val();
	var rte= $('#rte').val();
	var lastSchoolName= $('#lastSchoolName').val();
	var lastClassAdmission= $('#lastClassAdmission').val();
	var lastSessionAdmission= $('#lastSessionAdmission').val();
	var lastSessionLeave= $('#lastSessionLeave').val();
	var passedClass= $('#passedClass').val();
	var percentage= $('#percentage').val();
	var lastStudyMedium= $('#lastStudyMedium').val();
	var guardianName= $('#guardianName').val();
	var guardianMobileNo= $('#guardianMobileNo').val();
	var guardianresAddress= $('#guardianresAddress').val();
	var guardianAdharNo= $('#guardianAdharNo').val();
	var fatherName= $('#fatherName').val();
	var fatherQualification= $('#fatherQualification').val();
	var fatherDesignation= $('#fatherDesignation').val();
	var fatherAge= $('#fatherAge').val();
	var fatherIncome= $('#fatherIncome').val();
	var fatherAdharNo= $('#fatherAdharNo').val();
	var familysssmid= $('#familysssmid').val();
	var fatherMobNo= $('#fatherMobNo').val();
	var fatherAccNo= $('#fatherAccNo').val();
	var fatherIfscCode= $('#fatherIfscCode').val();
	var fatherBankName= $('#fatherBankName').val();
	var motherName= $('#motherName').val();
	var motherQualification= $('#motherQualification').val();
	var motherDesignation= $('#motherDesignation').val();
	var motherAge= $('#motherAge').val();
	var montherIncome= $('#montherIncome').val();
	var motherAdharNo= $('#motherAdharNo').val();
	var motherMobNo= $('#motherMobNo').val();
	var MotherAccNo= $('#MotherAccNo').val();
	var MotherIfscCode= $('#MotherIfscCode').val();
	var motherBankName= $('#motherBankName').val();
	var resAddress= $('#resAddress').val();
	var mode = $("input[name='mode']:checked"). val();
	var rootName= $('#rootName').val();
	var stop= $('#stop').val();
	var receiveParsonStop= $('#receiveParsonStop').val();
	var receivePersonSchool= $('#receivePersonSchool').val();
	
	if(name == '' || dobFigure == '' || dobWords == '' ||gender == '' ||nationality == '' ||religion == '' ||caste == '' ||category == ''
		  ||motherTounge == '' ||admissionDate == '' ||
		  currentSchoolName == '' ||studyMedium == '' ||rte == '' ||fatherName == '' ||fatherQualification == '' ||fatherDesignation == '' ||fatherAge == '' ||
		  admissionClass == '' ||fatherIncome == '' ||fatherAdharNo == '' ||fatherMobNo == '' ||motherName == '' ||motherQualification == '' ||motherDesignation == ''
			  ||motherAge == '' ||montherIncome == '' ||motherAdharNo == '' ||mode == '' ||rootName == '' ||stop == ''
				  ||receiveParsonStop == ''||receivePersonSchool == ''){
		var id = '#dialog';
		
		//Get the screen height and width
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();

		//Set heigth and width to mask to fill up the whole screen
		$('#mask').css({'width':maskWidth,'height':maskHeight});
		
		//transition effect		
		$('#mask').fadeIn(500);	
		$('#mask').fadeTo("slow",0.9);	

		//Get the window height and width
		var winH = $(window).height();
		var winW = $(window).width();
	          
		//Set the popup window to center
		$(id).css('top',  winH/2-$(id).height()/2);
		$(id).css('left', winW/2-$(id).width()/2);

		//transition effect
		$(id).fadeIn(2000); 	
		return;
	}
	
	$('#cscholarNo').val($('#scholarNo').val());
	$('#cname').val($('#name').val());
	$('#cdobFigure').val($('#dobFigure').val());
	$('#cdobWords').val($('#dobWords').val());
	$('#cgender').val($('#gender').val());
	$('#cnationality').val($('#nationality').val());
	$('#creligion').val($('#religion').val());
	$('#ccaste').val($('#caste').val());
	$('#ccategory').val($('#category').val());
	$('#cbloodGroup').val($('#bloodGroup').val());
	$('#cmotherTounge').val($('#motherTounge').val());
	$('#cadharNo').val($('#adharNo').val());
	$('#csssmidNo').val($('#sssmidNo').val());
	$('#cbankAccNo').val($('#bankAccNo').val());
	$('#cifscCode').val($('#ifscCode').val());
	$('#cbankName').val($('#bankName').val());
	$('#ccurrentSchoolName').val($('#currentSchoolName').val());
	$('#cadmissionDate').val($('#admissionDate').val());
	$('#cadmissionClass').val($('#admissionClass').val());
	$('#cadmissionSession').val($('#admissionSession').val());
	$('#cstudyMedium').val($('#studyMedium').val());
	$('#crte').val($('#rte').val());
	$('#clastSchoolName').val($('#lastSchoolName').val());
	$('#clastClassAdmission').val($('#lastClassAdmission').val());
	$('#clastSessionAdmission').val($('#lastSessionAdmission').val());
	$('#clastSessionLeave').val($('#lastSessionLeave').val());
	$('#cpassedClass').val($('#passedClass').val());
	$('#cpercentage').val($('#percentage').val());
	$('#clastStudyMedium').val($('#lastStudyMedium').val());
	$('#cguardianName').val($('#guardianName').val());
	$('#cguardianMobileNo').val($('#guardianMobileNo').val());
	$('#cguardianresAddress').val($('#guardianresAddress').val());
	$('#cguardianAdharNo').val($('#guardianAdharNo').val());
	$('#cfatherName').val($('#fatherName').val());
	$('#cfatherQualification').val($('#fatherQualification').val());
	$('#cfatherDesignation').val($('#fatherDesignation').val());
	$('#cfatherAge').val($('#fatherAge').val());
	$('#cfatherIncome').val($('#fatherIncome').val());
	$('#cfatherAdharNo').val($('#fatherAdharNo').val());
	$('#cfamilysssmid').val($('#familysssmid').val());
	$('#cfatherMobNo').val($('#fatherMobNo').val());
	$('#cfatherAccNo').val($('#fatherAccNo').val());
	$('#cfatherIfscCode').val($('#fatherIfscCode').val());
	$('#cfatherBankName').val($('#fatherBankName').val());
	$('#cmotherName').val($('#motherName').val());
	$('#cmotherQualification').val($('#motherQualification').val());
	$('#cmotherDesignation').val($('#motherDesignation').val());
	$('#cmotherAge').val($('#motherAge').val());
	$('#cmontherIncome').val($('#montherIncome').val());
	$('#cmotherAdharNo').val($('#motherAdharNo').val());
	$('#cmotherMobNo').val($('#motherMobNo').val());
	$('#cMotherAccNo').val($('#MotherAccNo').val());
	$('#cMotherIfscCode').val($('#MotherIfscCode').val());
	$('#cmotherBankName').val($('#motherBankName').val());
	$('#cresAddress').val($('#resAddress').val());
	$('input[name=mode][value='+mode+']').prop("checked",true);
	$('#crootName').val($('#rootName').val());
	$('#cstop').val($('#stop').val());
	$('#creceiveParsonStop').val($('#receiveParsonStop').val());
	$('#creceivePersonSchool').val($('#receivePersonSchool').val());
	
	 $('#parentsSection').hide();
     $('#studentInfo').hide();
     $('#transportDetails').hide();
     $('#addressDetails').hide();
	 $('#reviewData').show();
      
	 //
	/*var = $('#').val();
	var = $('#').val();
	var = $('#').val();
	var = $('#').val();*/
	
	
}