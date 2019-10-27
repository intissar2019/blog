
<?php
include '../connexionDB.php';
$trouve=false;

$queryAllCategories = $pdo->prepare(
	"SELECT name 
	FROM category"
);
$queryAllCategories->execute();
$categories = $queryAllCategories->fetchAll(PDO::FETCH_ASSOC);



$queryUsers = $pdo->prepare(
	"SELECT last_Name, first_Name,id 
	FROM user"
);
$queryUsers->execute();
$users = $queryUsers->fetch(PDO::FETCH_ASSOC);


if(isset($_POST['submit']) && isset($_POST['title']))
{
	$title=$_POST['title'];
	$description=$_POST['description'];
	$dateArticle=date('Y-m-d h:i:s', strtotime(date('m/d/Y h:i:s', time())));
	$c=$_POST['Category'];
	
	$queryCategory = $pdo->prepare("
		SELECT id 
		FROM category 
		WHERE name=?"
	);

	$cat=[$c];
$queryCategory->execute($cat);
$categoryAdded = $queryCategory->fetch(PDO::FETCH_ASSOC);

	if(isset($title)&& isset($description))
			{
				$lien=$_FILES["fileToUpload"]["name"];
         
			$queryAddPost = $pdo->prepare("
					INSERT INTO `article`( `titre`, `body`, `imageArticle`,`id_user`, `id_category`, `dateArticle`) 
					VALUES (?,?,?,?,?,?)"
				);
			$t1=[$title,
				$description,
				$lien,
				$users['id'],
				$categoryAdded['id'],
				$dateArticle
			];
			$queryAddPost->execute($t1);

			header ("location:showPosts.php");		
			}
}


$template = 'addPosts';
    include 'layoutAdmin.phtml';
	


