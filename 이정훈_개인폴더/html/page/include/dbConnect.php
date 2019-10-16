<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<head>

<?php
    $host = 'localhost';
    $user = 'esebird';
    $passWord = 'qwer123!';
    $dbName = 'esebird';

    $dbConnect = new mysqli('localhost','esebird','qwer123!','esebird');

    if($dbConnect){
        echo "MySQL 접속 성공";
    }else{
        echo "MySQL 접속 실패";
    }
?>
</body>

</html>