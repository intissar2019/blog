		<?php


	if(isset($_POST['btnSubmit'])){


	$psw=$_POST['psw'];
	$pseudo=$_POST['pseudo'];

	if(isset($pseudo)&&isset($psw))
	{

	$pdo = new PDO('mysql:host=localhost;dbname=blog', 'root', '');
	$pdo->exec('SET NAMES UTF8');//
	$query = $pdo->prepare("SELECT
        *
     FROM user WHERE email=? and password=?");
	
	$t=[$pseudo,$psw];
	$query->execute($t);
	$task = $query->fetch(PDO::FETCH_ASSOC);

	if ($task==false) {
		$err="mot de passe et/ou email incorrect";
	}
	else{
		header ("location:showPosts.php");	
	}
	
}




}




	?>




<!DOCTYPE html> <!-- Connexion BLOG -->
<html>
<head>
	<meta charset="utf-8">
	<title>Connexion -- Administration Blog</title>
	<link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
	<div id="menu">
		<a href="showPosts.php">Accueil Blog</a>
		<a href="addCategory.php">Ajouter catégorie</a>
		<a href="addPosts.phtml">Ajouter article</a>
	</div>
	<div class="boxConnexion">
		<h3>Connexion</h3>
		<span style="color: red;"><?php if(isset($err)){ echo($err);} ?></span>
		<p><i>Vous devez remplir les champs ci-dessous :</i></p>
		<form method="POST" action="">
			<input id="pseudo" type="text" name="pseudo" placeholder="Votre pseudo">
			<input id="password" type="password" name="psw" placeholder="************">
			<input type="submit" name="btnSubmit" id="submit">
		</form>
	</div>
	<script type="text/javascript">
	$('#submit').click( function(e){
	//$('form').trigger('reset');
		
		pseudo=$('#pseudo').val();
		password=$('#password').val();
	
	if(password==''|| pseudo==''){
		e.preventDefault();
		$('p').css('color','red');
		$('#pseudo').css('border','1px solid red');
		$('#password').css('border','1px solid red');
	}else
	{

	}

	});	

	</script>
	
	
</body>
</html>