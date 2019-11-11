
	function isEmail(email) {
  		var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  		return regex.test(email);
	}







$('#registerUser').click( function(e){


		firstName=$('#firstName').val();
		lastName=$('#lastName').val();
		email=$('#email').val();
		password=$('#password').val();
		



/*champs compris entre 3 et 2O caractere*/

	if(firstName.length <  3 || firstName.length > 20 ){
		e.preventDefault();
		$('#firstName').addClass('is-invalid');
		$('#invalidprenom').html('Saisir un prénom entre 3 et 20 caractère');
	}
	else{
		$('#firstName').addClass('is-valid');
		$('#validprenom').html('succès');
	}



	if(lastName.length < 3 || lastName.length> 20 ){
		e.preventDefault();
		$('#lastName').addClass('is-invalid');
		$('#invalidnom').html('Saisir un nom entre 3 et 20 caractère');
		
	}
	else{
		$('#lastName').addClass('is-valid');
		$('#validnom').html('succès');
	}

	if(password.length < 6 ){
		e.preventDefault();
		$('#password').addClass('is-invalid');
		$('#invalidpass').html('Saisir un mot de passe de six caractère');
		
	}
	else{
		$('#password').addClass('is-valid');
		$('#validpass').html('succès');
	}




  /*Type mail*/
	if(isEmail(email) == false ){
		e.preventDefault();
		$('#invalidemail').html('Saisir un email valide !');
		$('#email').addClass('is-invalid');
	}
	else{
		$('#email').addClass('is-valid');
		$('#validmail').html('succès');
	}




	});



