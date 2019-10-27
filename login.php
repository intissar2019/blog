	<?php
       
    include'connexionDB.php';

   if(isset($_POST['btnSubmit']))
   {
	$psw=$_POST['psw'];
	$pseudo=$_POST['pseudo'];

	if(isset($pseudo)&&isset($psw))
	{

		$queryLogin = $pdo->prepare("
			SELECT *
			FROM user 
			WHERE email=? AND password=?"
		);
	
	$tab=[$pseudo,$psw];
	$queryLogin->execute($tab);
	$userLogin = $queryLogin->fetch(PDO::FETCH_ASSOC);

	if ($userLogin==false) 
	{
		$error="mot de passe et/ou email incorrect";
	}
	else
	{
		header ("location:blog.php");	
	}
	
}
}
	$template = 'login';
    include 'layout.php';
	