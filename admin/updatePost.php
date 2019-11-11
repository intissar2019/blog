<?php 
include '../connexionDB.php';

$id=$_GET['id'];

/*** **** **** ****EXTRACT DATA POST **** ***** ****** **** *** **/
$queryPost = $pdo->prepare(
   "SELECT    article.id,article.titre,
   			  article.body,
   			  user.first_Name, 
   			  user.last_Name,
   			  category.name,
   			  user.id AS id_user,
   			  category.id 
   FROM article 
   INNER JOIN user ON user.id=article.id_user 
   INNER JOIN category on category.id=article.id_category 
   WHERE article.id=?"
);

$tab=[$id];
$queryPost->execute($tab);
$post = $queryPost->fetch(PDO::FETCH_ASSOC);

$queryCategories = $pdo->prepare(
	"SELECT name 
	 FROM category"
   );

$queryCategories->execute();
$categories = $queryCategories->fetchAll(PDO::FETCH_ASSOC);

/*** *** **** *** UPDATE POST **** *** **** **** *** *** ***/
if(isset($_POST['submit'])){
	$dateupdate=date('Y-m-d h:i:s', strtotime(date('m/d/Y h:i:s', time())));
	$lien=$_FILES['fileToUpload']['name'];
	$titre=$_POST['title'];
	$description=$_POST['description'];
	$id_user=$post['id_user'];
	$id_category=$post['id'];

	$queryUpdatePost = $pdo->prepare("
		UPDATE article 
		SET titre=?,
			body=?,
			imageArticle=?,
			id_user=?,
			id_category=?,
			dateArticle=? 
		WHERE id=?"
	);

	$update=[$titre,
		$description,
		$lien,
		$id_user,
		$id_category,
		$dateupdate,
		$id
	];
	$queryUpdatePost->execute($update);

  header('Location:showPosts.php');
}


	$template = 'updatePost';
    include 'layoutAdmin.phtml';