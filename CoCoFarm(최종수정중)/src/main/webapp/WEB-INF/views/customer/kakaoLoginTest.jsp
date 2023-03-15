<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
 <script>
       Kakao.init("113bb5ab93da5f8e260e23daa3038435");

       function kakaoLogin() {
         window.Kakao.Auth.login({
            scope: 'profile_nickname, account_email',
            success: function (authObj) {
               console.log(authObj);
               window.Kakao.API.request({
                  url: '/v2/user/me',
                  success: res => {
                     const kakao_account = res.kakao_account;
                     var email = res.kakao_account.email;
                     console.log(email);
                     let url2 = "kakaoLogin.do?kakaoId=" + email;
                     location.href = url2;
                  }
               });
            }
         });
      }

 </script>
</head>
<body>
<a href="javascript:kakaoLogin()">
 <img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="222"
    alt="카카오 로그인 버튼" /></a>

<button class="kakao__btn" onclick="kakaoLogin();">
            <i class="fa fa-kakao"></i> Sign in with kakao</button>

 	
</body>
</html>