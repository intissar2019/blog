<?php
include'../connexionDB.php';

$idPost=$_POST['hidden'];

if(isset($_POST['usercomment']))
{
	if($_POST['username']=="")
	{
		$name='Anonyme';
	}
else
{
	$name=$_POST['username'];
}

	$comment=$_POST['usercomment'];

	$dateComment=date('Y-m-d h:i:s', strtotime(date('m/d/Y h:i:s', time())));

	$queryAddComment = $pdo->prepare("
		INSERT INTO `comments`(
			`nameCommentor`, 
			`body`, 
			`dateComment`, 
			`idArticle`
		) 
		VALUES 
		(?,?,?,?)"
	);

			
			$newComment=[$name,$comment,$dateComment,$idArticle];
			$queryAddComment->execute($newComment);

					
	}	
	
/**** **** ***** DISPLAY OLD COMMENTS *** **** *** *** *** ** *** */
	$queryAllComments = $pdo->prepare("
		SELECT 
			`id`, 
			`nameCommentor`, 
			`body`, 
			`dateComment`, 
			`idArticle` 
		FROM `comments` 
		WHERE 
			`idArticle`=?"
		);

	$queryAllComments->execute([$idArticle]);
	$comments = $queryAllComments->fetchAll(PDO::FETCH_ASSOC);
	
	echo json_encode($comments);




