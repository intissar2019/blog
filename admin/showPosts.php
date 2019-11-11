<?php
include '../connexionDB.php';
if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 

$id=$_SESSION['id'];
/*** **** *** **** *** ALL POSTS *** **** **** ***** ***/
	$queryPosts = $pdo->prepare("
		SELECT  article.imageArticle, article.id,article.titre, article.body, article.dateArticle, user.first_Name, user.last_Name,category.name
		FROM article 
		INNER JOIN user ON user.id=article.id_user 
		INNER JOIN category ON category.id=article.id_category
		WHERE user.id=?

		ORDER BY article.dateArticle DESC 

	");
	$queryPosts->execute([$id]);
	$posts = $queryPosts->fetchAll(PDO::FETCH_ASSOC);

/*** **** *** **** *** count  POSTS *** **** **** ***** ***/
	$queryCountPosts = $pdo->prepare("
		SELECT  count(id) AS nb 
		FROM article
		WHERE id_user=?
	");
	$queryCountPosts->execute([$id]);
	$countPosts = $queryCountPosts->fetch(PDO::FETCH_ASSOC);


	$template = 'showPosts';
    include 'layoutAdmin.phtml';
	