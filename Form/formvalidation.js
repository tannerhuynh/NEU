//If input has value but is not valid
$(document).ready(function(){
	$("input").keyup(function(){
		//Checks if input length is greater than 0 and changes label
		var myLength = $(this).val().length;
			if (myLength >= 1) {
			$(this).addClass('InputHasValue');
		}
	});

	//Check if passwords match upon tabbing out of confirm input
	$("#ConfirmPassword, #Password").focusout(function(){
		if(checkPass()){
			$('.errorState').hide();
			$('#ConfirmPassword ~ label, #Password ~ label').css('color' , '#5264AE');
		}else{
			$('.errorState').show();
			$('#ConfirmPassword ~ label, #Password ~ label').css('color' , 'red');
		}
	})

	//Check if passwords match upon clicking submit
	$('form').on('submit', function(e){
		if(checkPass()){
			return true
		}else{
			alert("Password Does Not Match");
			return false
		}
	})
});

//Check if passwords match
function checkPass(){
	//Store the password field objects into variables
	var pass1 = document.getElementById('Password');
	var pass2 = document.getElementById('ConfirmPassword');
	if(pass1.value == pass2.value){
		//The passwords match
		return true
	}else{
		//The passwords do not match
		return false
	}
}