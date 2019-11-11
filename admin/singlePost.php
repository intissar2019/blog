<?php
 session_start();
include '../connexionDB.php';

$id=$_GET['id'];

	$querySinglePost = $pdo->prepare("
		SELECT 	article.id,
				article.titre, 
				article.body,
				article.imageArticle , 
				article.dateArticle,
				article.imageArticle, 
				category.name 
		FROM article  
		INNER JOIN category ON category.id=article.id_category 
		WHERE article.id=?"
	);

	$querySinglePost->execute([$id]);
	$singlePost = $querySinglePost->fetch(PDO::FETCH_ASSOC);
	

	/*** *** *** **** *** *** *** *** COMMENTS  ASSOCIAD *** **** ***/
	$queryComments = $pdo->prepare(
		"SELECT 
			 comments.id, 
			 `idCommentor`,
			 `body`, 
			 `dateComment`, 
			 `idArticle`,
			 first_Name,
			 last_Name
		FROM `comments`
		INNER JOIN user ON comments.idCommentor=user.id 
		WHERE `idArticle`=?"
	);
	$queryComments->execute([$id]);
	$comments = $queryComments->fetchAll(PDO::FETCH_ASSOC);
	

	$template = 'singlePost';
    include 'layoutAdmin.phtml';