<?php
include '../connexionDB.php';

$id=$_GET['id'];

	$querySinglePost = $pdo->prepare("
		SELECT 	article.id,
				article.titre, 
				article.body,
				article.imageArticle , 
				article.dateArticle,
				article.imageArticle, 
				user.first_Name, 
				user.last_Name,
				category.name 
		FROM article 
		INNER JOIN user ON user.id=article.id_user 
		INNER JOIN category ON category.id=article.id_category 
		WHERE article.id=?"
	);

	$querySinglePost->execute([$id]);
	$singlePost = $querySinglePost->fetch(PDO::FETCH_ASSOC);
	

	/*** *** *** **** *** *** *** *** COMMENTS  ASSOCIAD *** **** ***/
	$queryComments = $pdo->prepare(
		"SELECT `id`, `nameCommentor`, `body`, `dateComment`, `idArticle` 
		FROM `comments` 
		WHERE `idArticle`=?"
	);
	$queryComments->execute([$id]);
	$comments = $queryComments->fetchAll(PDO::FETCH_ASSOC);


	$template = 'singlePost';
    include 'layoutAdmin.phtml';