<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<style>
#ch1 {
	display: inline-block;
	border: 1px solid gray;
	border-bottom-style: none;
	height: 70px;
	width: 240px;
}

#ch2 {
	display: inline-block;
	border: 1px solid gray;
	border-top-style: none;
	border-left-style: none;
	border-right-style: none;
	height: 70px;
	width: 240px;
}

#wrapper {
	height: 80vh;
}

#table {
	<!--border: 1px solid black;-->
	height: 300px;
}

#table1 {
	width: 500px;
	height: 200px;
	border: 1px solid black;
	
	border-left-style: none;
	border-right-style: none;
	border-bottom-style: gray;
}

col {
	border: 1px solid gray;
	border-left-style: none;
	text-align: center;
}

#a{
border: none;
text-align: center;
}
#in1 {
	width: 350px;
	height: 50px;
}
tbody{
	}
</style>
</head>
<body>

	<div id=wrapper align="center">
		<br> <br> <br>
		<h4>아이디/비밀번호를 잊어버리셨나요?</h4>
		<br> <br> <br>
		<div id="ch1" OnClick="location.href ='IdSearch.jsp'"
			style="cursor: pointer;">
			<br />아이디 찾기
		</div>
		<div id="ch2" OnClick="location.href ='PwSearch.jsp'"
			style="cursor: pointer;">
			<br />비밀번호 찾기
		</div>

		<br> <br> <br>

		<div id=table>
			<form action="<%=request.getContextPath()%>/SearchId.do"
				method="post">
				<table id=table1>
					<colgroup>
						<col
							style="width: 19%; height: 100px; background-color: rgb(247, 247, 247); text-align: center;">
					</colgroup>
					<tbody>
						<tr>
							<th style="text-align:center">이름</th>
							<td>
								<div id=a>
									<input id=in1 type="text" title="이름" name="memNm"
										placeholder="이름을 입력해 주세요.">
								</div>
							</td>
						</tr>
						<tr>
							<th style="text-align:center">휴대폰번호</th>
							<td>
								<div id=a>
									<input id=in1 type="text" title="휴대폰번호" name="memTel"
										placeholder="휴대폰번호를 입력해주세요.(예: 01012345678)">
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<br>
				<input type="button" value="이전">
				<input type="submit" value="다음">
			</form>
		</div>
	</div>
</body>
</html>
<%@include file="../Footer.jsp"%>