<!doctype html>
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<head>
<meta charset="UTF-8" />
<title>임베디드 캡스턴 :: 회원가입 폼</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
<script type="text/javascript" src="../js/mySignupForm.js"></script>
<link rel="stylesheet" href="../css/mySignupForm2.css" />
<link rel="stylesheet" href="../css/mySignupForm1.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="..//css/main.css">

</head>
<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
         <a href="./main.php"><img  src="http://www.inu.ac.kr/user/ese/mycodyimages/top_logo.png" alt="ESE"height="80px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  </nav>
  </header>

<div id="wrap">
    <div id="container">
        <h1 class="title">회원가입</h1>
        <form name="signUp" action="./memberSave.php" method="post" onsubmit="return checkSubmit()">
            <div class="line">
                <p>아이디</p>
                <div class="inputArea">
                    <input type="text" name="memberId" class="memberId" />
                </div>
                <div class="memberIdCheck">중복 확인</div>
                <div class="memberIdComment comment"></div>
            </div>
            <div class="line">
                <p>이름</p>
                <div class="inputArea">
                    <input type="text" name="memberName" class="memberName" />
                </div>
            </div>
            <div class="line">
                <p>비밀번호</p>
                <div class="inputArea">
                    <input type="password" name="memberPw" class="memberPw" />
                </div>
            </div>
            <div class="line">
                <p>비밀번호 확인</p>
                <div class="inputArea">
                    <input type="password" name="memberPw2" class="memberPw2"  />
                    <div class="memberPw2Comment comment"></div>
                </div>
            </div>
            <div class="line">
                <p>닉네임</p>
                <div class="inputArea">
                    <input type="text" name="memberNickName" class="memberNickName"  />
                    <div class="memberNickNameComment comment"></div>
                </div>
            </div>
            <div class="line">
                <p>이메일</p>
                <div class="inputArea">
                    <input type="text" name="memberEmailAddress" class="memberEmailAddress" />
                    <div class="memberEmailAddressComment comment"></div>
                </div>
            </div>
            <div class="line">
               <p>생일</p>
               <div class="inputArea">
                   <input type="text" name="memberBirthDay" class="memberBirthDay" />
                   <div class="memberBirthDayComment comment"></div>
               </div>
           </div>
            <div class="line">
                <input type="submit" value="가입하기" class="submit" />
            </div>
        </form>

        <div class="formCheck">
            <input type="hidden" name="idCheck" class="idCheck" />
            <input type="hidden" name="pw2Check" class="pwCheck2" />
            <input type="hidden" name="eMailCheck" class="eMailCheck" />
        </div>
    </div>
</div>

</body>
</html>
