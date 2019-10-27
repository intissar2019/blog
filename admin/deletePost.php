<?php
include '../connexionDB.php';
$id=$_GET['id'];

$queryDeletePost = $pdo->prepare("
	DELETE 
	FROM `article` 
	WHERE id=?"
);
$queryDeletePost->execute([$id]);

//header ("location:showPosts.php");	
















