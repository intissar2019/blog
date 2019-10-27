<?php    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $db="blog"; 

      try {
         $pdo = new PDO("mysql:host=$servername;dbname=$db", $username, $password);   
      //echo "Connected successfully";
  }
    catch(PDOException $e)
  {
  echo "Connection failed: " . $e->getMessage();
  }   
  $pdo->exec('SET NAMES UTF8');
 