<?php

include'connexionDB.php';
$des=$_POST['param'];


$query = $pdo->prepare("
	SELECT *
    FROM article 
    WHERE titre 
    LIKE '%".$des."%' "
);
	$query->execute();
	$task = $query->fetchAll(PDO::FETCH_ASSOC);
	echo json_encode($task);
	
