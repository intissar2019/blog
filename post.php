
<?php
include'connexionDB.php';
$idPost=$_GET['idPost'];

/***AFFICHAGE D UN POSTE ******/
	$querySinglePost = $pdo->prepare("
		SELECT article.id,article.imageArticle,article.titre, article.body, article.dateArticle, user.first_Name, user.last_Name,category.name 
		FROM article 
		INNER JOIN user ON user.id=article.id_user 
		INNER JOIN category ON category.id=article.id_category 
		WHERE article.id=$idPost"
	);
	$querySinglePost->execute();
	$singlePost = $querySinglePost->fetch(PDO::FETCH_ASSOC);



	/*******HTAGS************************/
	$keywords = explode(" ",$singlePost['body']);
				$tags=[];
				foreach ($keywords as $key => $value) 
				{
					if (stristr($value, '#')) 
					{
						$tags[]=stristr($value, '#');
					}
				}

/**************nombre de commentaires*******************/
$queryNumberOfCommentsSinglePost = $pdo->prepare("
	SELECT  count(`id`) AS nbc 
	FROM `comments` 
	WHERE `idArticle`=?");
	$queryNumberOfCommentsSinglePost->execute([$idPost]);
	$numberOfCommentsSinglePost = $queryNumberOfCommentsSinglePost->fetch(PDO::FETCH_ASSOC);


	/****AFFICHAGE DES COMMENTAIRES ASSOCIES AU POSTE***/
	$queryCommentsSinglePost = $pdo->prepare("SELECT `id`, `nameCommentor`, `body`, `dateComment`, `idArticle` FROM `comments` WHERE `idArticle`=?");
	$queryCommentsSinglePost->execute([$idPost]);
	$commentsSinglePost = $queryCommentsSinglePost->fetchAll(PDO::FETCH_ASSOC);
	
	
  $template = 'post';
include'layout.php';

	


		

