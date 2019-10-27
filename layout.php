<?php
include'connexionDB.php';


/***************** ********** SHOW LASTET POSTS******* ************************/

	$queryLatestPosts = $pdo->prepare(
		 "SELECT article.id,article.titre,article.imageArticle, article.body, article.dateArticle, user.first_Name, user.last_Name,category.name
		  FROM article 
		  INNER JOIN user on user.id=article.id_user 
		  INNER JOIN category on category.id=article.id_category 
		  ORDER BY article.dateArticle 
		  DESC LIMIT 3"
		);
	$queryLatestPosts->execute();
	$latestPosts = $queryLatestPosts->fetchAll(PDO::FETCH_ASSOC);

	/********* ************** *******AFFICHER LES CATEGORIES AVEC NB A ARTICLES ASSOCIES ************ ******* ******/
	$queryCategories = $pdo->prepare(
		"SELECT name ,category.id , count(article.id) AS nbart 
		FROM `category` 
		LEFT JOIN  article ON article.id_category=category.id 
		GROUP BY category.id ORDER BY name"
	);
$queryCategories->execute();
$categories = $queryCategories->fetchAll(PDO::FETCH_ASSOC);

    include 'layout.phtml';
