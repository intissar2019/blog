<?php
include '../connexionDB.php';
if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 

    $mail=$_SESSION['pseudo'];

/*** **** *** **** *** ALL USERS *** **** **** ***** ***/
	$queryUsers = $pdo->prepare("
		SELECT  *
		FROM user 
		WHERE email != ?
		ORDER BY privilégie
	");
	$queryUsers->execute([$mail]);
	$users = $queryUsers->fetchAll(PDO::FETCH_ASSOC);




	$template = 'showUsers';
    include 'layoutAdmin.phtml';
	