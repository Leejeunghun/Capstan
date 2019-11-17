<!doctype html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8" />
    <title>알이즈웰  :: 예약 시스템</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
    <script type="text/javascript" src="../js/mySignInForm.js"></script>
    <link rel="stylesheet" href="../css/mySignInForm.css" />
</head>
<body>
<div id="wrap">
    <div id="container">
        <h1 class="title">시간을 입력해 주세요.</h1>
        <form name="check_table" action="./check_table.php" method="post" onsubmit="return checkSubmit()">
            <div class="line">
                <p>예약자명  </p>
                <div class="input  Area">
                    <input type="char" name="name" class="name" />
                </div>
            </div>
            <div class="line">
                <p>시작 날짜 </p>
                <div class="input  Area">
                    <input type="date" name="Start_day" class="Start_day" />
                    <input type="time" name="Start_hour" class="Start_hour" />
                </div>
            </div>
            <div class="line">
                <p>끝나는 날짜 </p>
                <div class="input  Area">
                    <input type="date" name="End_day" class="End_day" />
                    <input type="time" name="End_hour" class="End_hour" />
                </div>
            </div>
            <div class="line">
                <input type="submit" value="로그인" class="submit" />
            </div>
        </form>
        <h1 class="title"><a href="./signUpForm.php">회원가입 하기</a></h1>
    </div>
</div>
</body>
</html>