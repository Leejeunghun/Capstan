<?php
session_start();
$id=$_POST['id'];
$pw=$_POST['pw'];
$mysqli=mysqli_connect("localhost","root","riswell1234","myproject");

$check="SELECT * FROM user_info WHERE userid='id'";
$result=$mysqli->query($check);
if($result->num_rows==1){
  $row=$result->fetch_array(MYSQLI_ASSOC);
  if($row['userpw']==$pw){
    $_SESSION['userid']=$id;
    if(isset($_SESSION['userid']))
    {
      header('LocationL ./main.php');
    }
    else{
      echo "세션 저장 실패";
    }
  }
  else{
    echo "wrong id or pw";
  }
}
else{
  echo "wrong id or pw";
}
?>