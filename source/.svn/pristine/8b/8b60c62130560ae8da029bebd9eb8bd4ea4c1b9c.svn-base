<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="SignUp.css">
</head>
<body>
	<form action="<%= request.getContextPath() %>/signUp.do" method="POST" class="joinForm">
                                                                                               
      <h2>회원가입</h2>
      <div class="textForm">
        <input name="memMail" type="text" class="id" placeholder="아이디">
      </div>
      <div class="textForm">
        <input id="pw" name="memPw" type="password" class="pw" placeholder="비밀번호">
      </div>
       <div class="textForm">
        <input id="ckPw" name="memPwConfirm" type="password" class="pw" placeholder="비밀번호 확인" onkeyup="comparePwd()"><br>
      </div>
      <span id="pwResult" style="font-size:20px">비밀번호가 일치하지 않습니다.</span>
      <div class="textForm">
        <input name="memNm" type="text" class="name" placeholder="이름">
      </div>
       <div class="textForm">
        <input name="memBir" type="date" class="bir" placeholder="생년월일">
      </div>
      <div class="textForm">
        <input name="memTel" type="text" class="cellphoneNo" placeholder="전화번호">
      </div>
      <div class="textForm">
      	<input type="text" id="sample4_postcode" placeholder="우편번호">
		<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="sample4_roadAddress" placeholder="도로명주소">
		<input type="text" id="sample4_jibunAddress" placeholder="지번주소"><br>
		<span id="guide" style="color:#999;display:none"></span>
		<input type="text" id="sample4_detailAddress" placeholder="상세주소">
		<input type="text" id="sample4_extraAddress" placeholder="참고항목"><br>
      	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <input name="memAddr" type="text" class="nickname" placeholder="주소">
      </div>
      <div class="textForm">
        <input name="memPreReg" type="text" class="nickname" placeholder="선호지역">
      </div>
      <input type="submit" class="btn" value="회원가입" onclick="joinMember()"/>
      
	</form>

<script src="SignUp.js"></script>
</body>
</html>



