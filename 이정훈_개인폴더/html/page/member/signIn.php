<!DOCTYPE html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<head>
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
  <script type="text/javascript" src="../js/mySignupForm.js"></script>
  <link rel="stylesheet" href="../css/mySignupForm.css" />
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   <link rel="stylesheet" type="text/css" href="http://localhost/myProject/myProject/css/main.css">
</head>
<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
         <a href="./main.php"><img  src="http://www.inu.ac.kr/user/ese/mycodyimages/top_logo.png" alt="ESE"height="80px">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor01">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="./time_storage.php">예약 신청<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">예약 취소<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">나의 예약 현황<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">My page<span class="sr-only">(current)</span></a>
      </li>
        <form name="singOut" action="./signOut.php" method="ses_userid" onsubmit="return checkSubmit()">
      <div class="line1" id="s3">
          <input type="submit" value="로그아웃" class="submit" />
      </div>
      </form>
    </ul>
  </div>
</nav>
</header>
</body>
</html>
<?php
    include "../include/session.php";
    include "../include/dbConnect.php";
    /*echo "<pre>";
    var_dump($_POST);*/
    $memberId = $_POST['memberId'];
    $memberPw = md5($memberPw = $_POST['memberPw']); 
    setcookie("cookieId", "$memberId", time() + 3600, "/");
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