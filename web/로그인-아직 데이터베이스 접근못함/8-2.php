<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
</head>
<body>
  <?php
    $password = $_GET["password"];
    if($password == "1111"){
        echo "로그인성공";
    } else {
        echo "틀렸다?";
    }
   ?>
</body>
</html>