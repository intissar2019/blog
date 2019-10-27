<?php

include'connexionDB.php';
/******** ******** *********** ******** AFFICHER TOUS LES ARTICLES******* ****** *********** ********/
	$queryPosts = $pdo->prepare(
		"SELECT  article.imageArticle, article.id,article.titre, article.body, article.dateArticle, user.first_Name, user.last_Name,category.name 
		FROM article 
		INNER JOIN user ON user.id=article.id_user 
		INNER JOIN category ON category.id=article.id_category
		ORDER BY article.dateArticle DESC"
	);
	$queryPosts->execute();
	$posts = $queryPosts->fetchAll(PDO::FETCH_ASSOC);

	/**************nombre de commentaires*******************/
	$queryNumberOfCommenters = $pdo->prepare(
		"SELECT  article.id, count(comments.id) AS nbc 
		FROM `article` 
		LEFT JOIN  comments ON comments.idArticle=article.id 
		GROUP BY article.id "
	);
	$queryNumberOfCommenters->execute();
	$numberOfComments = $queryNumberOfCommenters->fetchAll(PDO::FETCH_ASSOC);
	

  // Sélection et affichage du template PHTML.
    $template = 'blog';
    include 'layout.php';
	