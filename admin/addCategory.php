
<?php
$trouve=false;
include '../connexionDB.php';

$queryAllCategory = $pdo->prepare("
	SELECT * 
	FROM category "
);
$queryAllCategory->execute();
$categories = $queryAllCategory->fetchAll(PDO::FETCH_ASSOC);


if(isset($_POST['submit']))
{
	$title=$_POST['title'];
	foreach ($categories as $key => $category) {
		if($category['name']==$title)
			{$trouve=true;
			}
	}


	if((isset($title)) && ($trouve==false))
	{
	$queryAddCategory = $pdo->prepare("
		INSERT INTO `category`(`name`) 
		VALUES (?)"
	);
	
	$t=[$title];
	$queryAddCategory->execute($t);

       header ("location:showPosts.php");	
	
}
}

$template = 'addCategory';
    include 'layoutAdmin.phtml';
	

