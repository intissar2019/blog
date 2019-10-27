<?php

include'connexionDB.php';

  if(isset($_POST['Login'])){


  $psw=$_POST['password'];
  $pseudo=$_POST['username'];

  if(isset($pseudo)&&isset($psw))
  {

  $query = $pdo->prepare("SELECT
        *
     FROM user WHERE email=? and password=?");
  
  $t=[$pseudo,$psw];
  $query->execute($t);
  $task = $query->fetch(PDO::FETCH_ASSOC);

  if ($task==false) {
    $err="mot de passe et/ou email incorrect";
  header ("location:connexion.phtml");  
  }
  else{
  header ("location:blog.phtml");  
  }
  
}




}




  ?>

