<?php
    include "../include/session.php";
    include "../include/dbConnect.php";
    /*echo "<pre>";
    var_dump($_POST);*/
    $memberId = $_POST['memberId'];
    $memberPw = md5($memberPw = $_POST['memberPw']);
    
    setcookie("cookie", "$memberId", time() + 3600, "/");

    $sql = "SELECT * FROM member WHERE memberId = '{$memberId}' AND password = '{$memberPw}'";
    $res = $dbConnect->query($sql);
        $row = $res->fetch_array(MYSQLI_ASSOC);
        if ($row != null) {
            $_SESSION['ses_userid'] = $row['memberId'];
            echo $_SESSION['ses_userid'].'님 안녕하세요';
            echo "<a href='./signOut.php'>로그아웃 하기</a>";
            echo "<a href='./time_storage.php'>입력</a>";
        }
        if($row == null){
            echo '로그인 실패 아이디와 비밀번호가 일치하지 않습니다.';
        }
?>
