	<?php
       
    include'connexionDB.php';

 
	$password=$_POST['password'];
	$mail=$_POST['mail'];

	if(isset($mail)&&isset($password))
	{

		$queryLogin = $pdo->prepare("
			SELECT *
			FROM user 
			WHERE email=? AND password=?"
		);
	
	$tab=[$mail,hash('sha512', $password),];
	$queryLogin->execute($tab);
	$userLogin = $queryLogin->fetch(PDO::FETCH_ASSOC);

	if ($userLogin==false) 
	{
		echo " <script>alert('email ou mot de passe incoorect')</script>";
		header('Refresh: 1; URL=blog.php');
	

	}
	else
	{
		
		session_start();
		$_SESSION['pseudo']=$userLogin['email'];
		$_SESSION['id']=$userLogin['id'];
		$_SESSION['first_Name']=$userLogin['first_Name'];
		$_SESSION['last_Name']=$userLogin['last_Name'];
		$_SESSION['privilégie']=$userLogin['privilégie'];
		header ("location:blog.php");	
	}
	
}

	