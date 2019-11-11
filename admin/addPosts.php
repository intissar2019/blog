
<?php
    session_start();

include '../connexionDB.php';
$trouve=false;
$email=$_SESSION['pseudo'];




$queryAllCategories = $pdo->prepare(
	"SELECT name 
	 FROM category"
);
$queryAllCategories->execute();
$categories = $queryAllCategories->fetchAll(PDO::FETCH_ASSOC);



$queryUsers = $pdo->prepare(
	"SELECT last_Name, first_Name,id 
	 FROM user 
	 WHERE email=?"
);
$queryUsers->execute([$email]);
$user = $queryUsers->fetch(PDO::FETCH_ASSOC);


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
				$target_dir = "img/";
				$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
         
			$queryAddPost = $pdo->prepare("
					INSERT INTO `article`( `titre`, `body`, `imageArticle`,`id_user`, `id_category`, `dateArticle`) 
					VALUES (?,?,?,?,?,?)"
				);
			$t1=[$title,
				$description,
				$lien,
				$user['id'],
				$categoryAdded['id'],
				$dateArticle
			];
			$queryAddPost->execute($t1);
			move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $target_dir . basename($lien));

			header ("location:showPosts.php");		
			}
}


$template = 'addPosts';
    include 'layoutAdmin.phtml';
	


