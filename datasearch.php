<?php

include'connexionDB.php';
$des=$_POST['param'];


$query = $pdo->prepare("

		SELECT  article.imageArticle, article.id,article.titre, article.body, article.dateArticle, user.first_Name, user.last_Name, user.imgUser,category.name 
		FROM article 
		INNER JOIN user ON user.id=article.id_user 
		INNER JOIN category ON category.id=article.id_category
    	WHERE article.titre 
    	LIKE '%".$des."%' "
);
	$query->execute();
	$task = $query->fetchAll(PDO::FETCH_ASSOC);
	echo json_encode($task);
	
