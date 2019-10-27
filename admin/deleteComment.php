<?php
include'../connexionDB.php';

$idc=$_GET['idc'];
$ida=$_GET['ida'];


$queryDeleteComment = $pdo->prepare("
	DELETE 
	FROM `comments` 
	WHERE id=?"
);

$queryDeleteComment->execute([$idc]);

header ("location:singlePost.php?id=".$ida);	

















?>