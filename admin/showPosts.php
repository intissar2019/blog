<?php
include '../connexionDB.php';
/*** **** *** **** *** ALL POSTS *** **** **** ***** ***/
	$queryPosts = $pdo->prepare("
		SELECT  article.imageArticle, article.id,article.titre, article.body, article.dateArticle, user.first_Name, user.last_Name,category.name
		FROM article 
		INNER JOIN user ON user.id=article.id_user 
		INNER JOIN category ON category.id=article.id_category
		ORDER BY article.dateArticle DESC "
	);
	$queryPosts->execute();
	$posts = $queryPosts->fetchAll(PDO::FETCH_ASSOC);

/*** **** *** **** *** count  POSTS *** **** **** ***** ***/
	$queryCountPosts = $pdo->prepare("
		SELECT  count(id) AS nb 
		FROM article"
	);
	$queryCountPosts->execute();
	$countPosts = $queryCountPosts->fetch(PDO::FETCH_ASSOC);


	$template = 'showPosts';
    include 'layoutAdmin.phtml';
	