<?php
include'connexionDB.php';


if(isset($_POST['userFirstName'])&&isset($_POST['userEmail'])&&isset($_POST['userPassword']))
{

	$userFirstName=$_POST['userFirstName'];
	$userLastName=$_POST['userLastName'];
	$userEmail=$_POST['userEmail'];
	$userPassword=$_POST['userPassword'];
	$linkImgUser=$_FILES["userPhoto"]["name"];

	$queryusersWithEmail = $pdo->prepare(
		"SELECT * 
		FROM user 
		WHERE email= ?"
	);

	$queryusersWithEmail->execute([$userEmail]);
	$usersWithEmail = $queryusersWithEmail->fetchAll(PDO::FETCH_ASSOC);

		if($usersWithEmail=[]){
			$queryAddUser = $pdo->prepare(
			"INSERT INTO `user`(`privilégie`, `first_Name`, `last_Name`, `email`, `password`, `imgUser`) 
			 VALUES (?,?,?,?,?,?)"
		);
	 $user=['user',
			$userFirstName,
			$userLastName,
			$userEmail,
			hash('sha512', $userPassword),
			$linkImgUser
		];

	$queryAddUser->execute($user);
	header('Location:blog.php');


		}
}

	$template = 'signUp';
    include 'layout.php';
	