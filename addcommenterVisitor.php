<?php
include'connexionDB.php';
$i=$_POST['hideId'];
if(isset($_POST['comment'])){
if($_POST['name']=="")
{
	$name='Anonyme';
}
else{
	$name=$_POST['name'];
}
$comment=$_POST['comment'];

$dateComment=date('Y-m-d h:i:s', strtotime(date('m/d/Y h:i:s', time())));

$query1 = $pdo->prepare("
	INSERT INTO `comments`(`nameCommentor`, `body`, `dateComment`, `idArticle`) VALUES (?,?,?,?)");
			$t1=[$name,$comment,$dateComment,$i];
			$query1->execute($t1);				
	}	
	
/*AFFICHAGE DES COMMENTAIRES */

	$query = $pdo->prepare("SELECT `id`, `nameCommentor`, `body`, `dateComment`, `idArticle` FROM `comments` WHERE `idArticle`=?");
	$query->execute([$i]);
	$task = $query->fetchAll(PDO::FETCH_ASSOC);

/**************nombre de commentaires*******************/
$query4 = $pdo->prepare("SELECT  count(`id`) as nbc FROM `comments` WHERE `idArticle`=?");
	$query4->execute([$i]);
	$nb = $query4->fetch(PDO::FETCH_ASSOC);


?>
<div class="post-comments">
                  
    <header>
 <h3 class="h6">Commentaires<span class="no-of-comments"><?php echo'('. $nb['nbc'].')';
  if ($nb['nbc']==0){ echo (" Soyez le 1er à noter cet Article ! ") ;} ?></span></h3>
   </header>
    <?php
 foreach($task as $i => $val)  {?>  

                  <div class="comment">
                    <div class="comment-header d-flex justify-content-between">
                      <div class="user d-flex align-items-center">
                        <div class="image"><img src="img/user.svg" alt="..." class="img-fluid rounded-circle"></div>
                        <div class="title"><strong><?=$val['nameCommentor']?></strong><span class="date"><?=$val['dateComment']?></span></div>
                      </div>
                    </div>
                    <div class="comment-body">
                      <p><?=$val['body']?></p>
                    </div>
                  </div>
                  <?php } ?>
                 
                </div>