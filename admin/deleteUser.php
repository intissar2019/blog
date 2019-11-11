<?php
$id=$_POST['id'];

include '../connexionDB.php';

$queryDeleteCategory = $pdo->prepare("
	DELETE 
	FROM `user` 
	WHERE id=?"
);
$queryDeleteUser->execute([$id]);

header ("location:showUsers.php");	

















