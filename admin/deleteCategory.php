<?php
$id=$_POST['oldCategory'];

include '../connexionDB.php';

$queryDeleteCategory = $pdo->prepare("
	DELETE 
	FROM `category` 
	WHERE id=?"
);
$queryDeleteCategory->execute([$id]);

header ("location:addCategory.php");	

















?>