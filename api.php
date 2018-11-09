<?php
require "config.php";

$method = $_SERVER['REQUEST_METHOD'];
$input = json_decode(file_get_contents('php://input'),true);


switch ($method) {
  case 'GET':

   if((isset($_GET['count']))) {
     $count = $_GET['count'];
   }
   else {
     $count = 25;
   }

   $page = 1;
   $start = 0;
   if(isset($_GET['page'])&&$_GET['page'] !="") {
     $page = $_GET['page'];
     if(!is_numeric($page)){
       $page = 1;
     }
     $start = ($page - 1)*$count;
   }


   if(isset($_GET['author'])) {
     $author = $_GET['author'];

    $request = "SELECT * FROM tweet WHERE author = '$author' LIMIT $start, $count";
   }
   elseif(isset($_GET['hashtags'])) {
     $hashtags = $_GET['hashtags'];

    $request = "SELECT * FROM tweet WHERE hashtags = '#' '$hashtags' LIMIT $start, $count";
   }
   else{
    $request = "SELECT * FROM tweet LIMIT $start, $count" ;
   }

    $exec = $pdo->query($request);
    $tab  =  array();
    while ($result = $exec->fetch(PDO::FETCH_OBJ)) {
      array_push($tab, array("id" => $result->id, "author" => $result->author, "hashtags" => $result->hashtags, "date" => $result->date));
    }
    echo json_encode($tab);

  break;

  case 'POST':
    if((isset($_POST["author"]))&&(isset($_POST["message"]))) {
      $author = $_POST["author"];
      $message = $_POST["message"];

      if(isset($_POST["hashtags"])) {
        $hashtags = $_POST["hashtags"];
        $values = ['author' => $author, "message" => $message, "hashtags" => $hashtags];
        $request = "INSERT INTO tweet (author, message, hashtags) VALUES (:author, :message, :hashtags)";
      }
      else {
        $values = ['author' => $author, "message" => $message];
        $request = "INSERT INTO tweet (author, message) VALUES (:author, :message)";
      }
    $send = $pdo->prepare($request);
    $send->execute($values);
    }

  break;
}
 ?>
