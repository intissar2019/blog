<?php
include'connexionDB.php';

if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 

	$iduser=$_SESSION['id'];


	$idPost=$_POST['hideId'];

	$comment=$_POST['comment'];

	$dateComment=date('Y-m-d h:i:s', strtotime(date('m/d/Y h:i:s', time())));

	$queryAddComment = $pdo->prepare("
		INSERT INTO `comments`(
			`idCommentor`, 
			`body`, 
			`dateComment`, 
			`idArticle`
		) 
		VALUES 
		(?,?,?,?)"
	);

			
			$newComment=[$iduser,$comment,$dateComment,$idPost];
			$queryAddComment->execute($newComment);



/**************update nb comments *******************/
   $queryNumberOfCommentsSinglePost = $pdo->prepare("
	       SELECT  count(`id`) AS nbc 
	       FROM `comments` 
	       WHERE `idArticle`=?
	       ");

	$queryNumberOfCommentsSinglePost->execute([$idPost]);
	$numberOfCommentsSinglePost = $queryNumberOfCommentsSinglePost->fetch(PDO::FETCH_ASSOC);


					
	

/**** **** ***** DISPLAY OLD COMMENTS *** **** *** *** *** ** *** */
	$queryCommentsSinglePost = $pdo->prepare("
		SELECT   `idCommentor`, `body`, `dateComment`, `idArticle`,`user`.id , `first_Name`, `last_Name`, `imgUser` 
		FROM `comments` 
		INNER JOIN user
		ON `comments`.idCommentor=`user`.id
		WHERE `idArticle`=?
		");
	$queryCommentsSinglePost->execute([$idPost]);
	$commentsSinglePost = $queryCommentsSinglePost->fetchAll(PDO::FETCH_ASSOC);
	
	
	?>
<div class="post-comments">
                  
    <header>
 <h3 class="h6">Commentaires<span class="no-of-comments"><?php echo'('. $numberOfCommentsSinglePost['nbc'].')';?>
  </span></h3>
   </header>
    <?php
   foreach($commentsSinglePost as $i => $val):?>  
                  <div class="comment">
                    <div class="comment-header d-flex justify-content-between">
                      <div class="user d-flex align-items-center">
                        <div class="image"> <img src="img/<?=$val['imgUser']?>" alt="..." class="img-fluid  rounded-circle" width="40px" height="40px" ></div>
                        <div class="title"><strong><?=$val['first_Name']?> <?=$val['last_Name']?></strong><span class="date"><?=$val['dateComment']?></span></div>
                      </div>
                    </div>
                    <div class="comment-body">
                      <p><?=$val['body']?></p>
                    </div>
                  </div>
                  <?php endforeach;?>
                 
                </div>



