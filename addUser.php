<?php
include'connexionDB.php';


if(isset($_POST['userFirstName'])&&isset($_POST['userEmail'])&&isset($_POST['userPassword']))
{

	$userFirstName=$_POST['userFirstName'];
	$userLastName=$_POST['userLastName'];
	$userEmail=$_POST['userEmail'];
	$userPassword=$_POST['userPassword'];
	$linkImgUser=$_FILES["userPhoto"]["name"];
	$target_dir = "img/";
	$target_file = $target_dir . basename($_FILES["userPhoto"]["name"]);

	$queryusersWithEmail = $pdo->prepare(
		"SELECT * 
		FROM user 
		WHERE email= ?"
	);

	$queryusersWithEmail->execute([$userEmail]);
	$usersWithEmail = $queryusersWithEmail->fetch(PDO::FETCH_ASSOC);

		if(!$usersWithEmail){
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
	move_uploaded_file($_FILES['userPhoto']['tmp_name'], $target_dir . basename($linkImgUser));


	header('Location:blog.php');


		}
}