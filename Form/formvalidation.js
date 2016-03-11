function ValidateForm() {
	var x = document.forms["myForm"]["FullName"].value;
	if (x == null || x == "") {
		alert("Name must be filled out");
		return false;
	}
}

//If email has input but is not valid
$(function(){
	$("#Email, #Password, #ConfirmPassword").keyup(function(){
		//Checks email length and if greater than 0 changes label
		var myLength = $(this).val().length;
			if (myLength >= 1) {
			$(this).addClass('InputHasValue');
		}
	});
});

function checkPass(){
	//Store the password field objects into variables
	var pass1 = document.getElementById('Password');
	var pass2 = document.getElementById('ConfirmPassword');
	//Store the Confimation Message Object
	var message = document.getElementById('confirmMessage');
	$("#ConfirmPassword").focusout(function(){
	if(pass1.value == pass2.value){
		//The passwords match
		$('#ConfirmPassword').addClass('Match');
	}else{
		//The passwords do not match
		$('#ConfirmPassword').addClass('NoMatch');
		}
	})
}