<!-- 지우고 IMPORT 삽입 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<!-- 지우고 본문상단 삽입 -->
<!-- 지우고 본문상단 삽입 -->
<!-- 지우고 본문상단 삽입 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터 관리</title>
</head>

<body>
	<div class="container">
		<div class="row mt-4 b">
			<div id="category" class="col-2 b">
				<script src="../admin/category.js"></script>
			</div>
			<div class="col-9 offset-1 b">
				<h3>관리할 게시판을 선택하세요</h3>
				<hr>
				<div class="col-3 offset-1" style="margin-left: 0px;">
					<select onchange="if(this.value) location.href=(this.value);"
						class="form-select" aria-label="Default select example">
						<option value="1">선택하세요</option>
						<option value="../notice/noticeList.do">공지사항</option>
						<option value="../notice/FAQList.jsp">자주묻는문의</option>
						<option value="../qna/qnaList.do">1:1문의</option>
					</select>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
<%@include file="../Footer.jsp"%>