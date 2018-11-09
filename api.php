<?php
//Include SQL link
require "config.php";

//Get http method
$method = $_SERVER['REQUEST_METHOD'];
$input = json_decode(file_get_contents('php://input'),true);


switch ($method) {
  case 'GET':


   if((isset($_GET['count']))) { //Custom count
     $count = $_GET['count'];
   }
   else {
     $count = 25;
   }

   // paginate the list of data
   $page = 1;
   $start = 0;
   if(isset($_GET['page'])&&$_GET['page'] !="") {
     $page = $_GET['page'];
     if(!is_numeric($page)){
       $page = 1;
     }
     $start = ($page - 1)*$count;
   }


   if(isset($_GET['author'])) { //Search a specific author
     $author = $_GET['author'];

    $request = "SELECT * FROM tweet WHERE author = '$author' LIMIT $start, $count";
   }
   elseif(isset($_GET['hashtags'])) { //Search a specific hashtags
     $hashtags = $_GET['hashtags'];

    $request = "SELECT * FROM tweet WHERE hashtags = '#' '$hashtags' LIMIT $start, $count";
   }
   else{
    $request = "SELECT * FROM tweet LIMIT $start, $count" ;
   }
   //sending the sql resquest and print data
    $exec = $pdo->query($request);
    $tab  =  array();
    while ($result = $exec->fetch(PDO::FETCH_OBJ)) {
      array_push($tab, array("id" => $result->id, "author" => $result->author, "hashtags" => $result->hashtags, "date" => $result->date));
    }
    echo json_encode($tab);

  break;

  case 'POST':
    if((isset($_POST["author"]))&&(isset($_POST["message"]))) {// check if a author and a message was send
      $author = $_POST["author"];
      $message = $_POST["message"];

      if(isset($_POST["hashtags"])) {// if hahstags
        $hashtags = $_POST["hashtags"];
        $values = ['author' => $author, "message" => $message, "hashtags" => $hashtags];
        $request = "INSERT INTO tweet (author, message, hashtags) VALUES (:author, :message, :hashtags)";
      }
      else {
        $values = ['author' => $author, "message" => $message];
        $request = "INSERT INTO tweet (author, message) VALUES (:author, :message)";
      }

      //sending the resquest
    $send = $pdo->prepare($request);
    $send->execute($values);
    }
    else {

    }

  break;
}
 ?>
