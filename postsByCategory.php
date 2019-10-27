<?php

include'connexionDB.php';
$id_category=$_GET['idCategory'];


$queryPostsByCategory = $pdo->prepare(
	"SELECT article.id AS ida,article.imageArticle,article.titre, article.body, article.dateArticle, user.first_Name, user.last_Name,category.name 
	FROM article 
	INNER JOIN user ON user.id=article.id_user 
	INNER JOIN category ON category.id=article.id_category 
	WHERE category.id=?"
);
$queryPostsByCategory->execute([$id_category]);
$postsByCategory = $queryPostsByCategory->fetchAll(PDO::FETCH_ASSOC);
  
/**********  ****nombre de commentaires  *******  ************/

		$queryNumberOfcomments = $pdo->prepare("
			SELECT  article.id AS idaa, id_category,count(comments.id) AS nbc 
			FROM `article` 
			LEFT JOIN  comments ON comments.idArticle=article.id 
			INNER JOIN category ON id_category=category.id
 			WHERE id_category=?
			GROUP BY article.id "
		);

	$queryNumberOfcomments->execute([$id_category]);
	$numberOfComments = $queryNumberOfcomments->fetchAll(PDO::FETCH_ASSOC);
	
	
 // Sélection et affichage du template PHTML.
    $template = 'postsByCategory';
    include 'layout.php';
  ?>
	


	
