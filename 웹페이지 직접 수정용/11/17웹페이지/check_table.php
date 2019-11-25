<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<head>
<?php
$servername = "localhost";
$username = "root";
$password = "qwer123";
$dbname = "esebird";
$check_insert =0;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$mail = $_POST['email'];
$time_check = "SELECT * FROM member";
    $result = $conn->query($time_check);
    if ($result->num_rows > 0)
     {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        if( $row[eMail]==$mail)
        {

            echo "아이디는 $row[memberId]  입니다 . 비밀 번호는 $row[password]   입니다 "
        }
      }
    }
    


$conn->close();
?>
</head>
</html>