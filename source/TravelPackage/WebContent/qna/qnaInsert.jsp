<%@ page import="kr.or.ddit.app.mem.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<!DOCTYPE html>
<html>
<style>
.title {
	text-align: center;
	padding: 15px;
	background: thistle;
	border: 1px solid gray;
}

.inputbox {
	display: flex;
	justify-content: center;
	align-items: center;

}
)
</style>
<head>
<meta charset="UTF-8">
<title>1:1문의 게시글 등록</title>
</head>
<body>
	<div class="container">
		<div class="row mt-4">
			<div id="category" class="col-2">
				<script src="./category.js"></script>
			</div>
			<div id="content" class="col-9 offset-1">

				<h1>1:1문의 게시글 등록</h1>
				<hr>
				<form action="qnaInsert.do" method="post"
					enctype="multipart/form-data">

					<div class="row" style="border: 3px solid gray;">
						<div class="col-2 title">답변상태</div>
						<div class="col-4 inputbox" style="display: flex">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input name="qnaState" type="text" class="form-control"
								id="exampleFormControlInput1" value="답변대기" readonly>
						</div>
						<div class="col-4 inputbox inputbox" style="display: none">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input name="qnaState" type="text" class="form-control"
								id="exampleFormControlInput1" value="답변완료" readonly>
						</div>

						<!-- 
							<select class="btn btn-secondary" name="qnaState">
								<option value="답변대기">답변대기</option>
								<option value="답변완료" disabled="enabled">답변완료</option>
							</select>
						</div>
						 -->

						<%
							if (session.getAttribute("id") == null) {
						%>

						<div style="display: block; background-color: rgba(0, 0, 0, 0.7);"
							class="modal col-6" tabindex="-1">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">비회원 로그인</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<p>로그인 되지 않았습니다. 로그인 화면으로 이동합니다</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											onclick="location='../login/login.jsp'">이동</button>
										<button type="button" class="btn btn-secondary"
											onclick="location.href='../notice/noticeMain.jsp' ">고객센터메인으로</button>
									</div>
								</div>
							</div>
						</div>

						<%
							} else {
						%>


						<div class="col-2 title">작성자</div>
						<div class="col-4 inputbox b">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input name="memMail" type="text" class="form-control"
								value="<%=session.getAttribute("id")%>"
								id="exampleFormControlInput1">
						</div>
						<%
							}
						%>

						<div class="col-2 title">글 제목</div>
						<div class="col-4 inputbox b">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input name="qnaTitle" type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="제목을 입력하세요" required>
						</div>


						<div class="mb-3 col-12 md-4 " style="padding: 0px;">
							<label for="exampleFormControlTextarea1" class="form-label"></label>
							<textarea style="padding: 0px;" name="qnaCont"
								class="form-control" id="exampleFormControlTextarea1" rows="5"
								placeholder="내용을 입력하세요" required></textarea>
						</div>


						<button class="col-1 btn btn-outline-primary" style="float: reft"
							cursorshover="true">등록</button>
						<button type="reset" class="col-2 btn btn-outline-danger"
							style="float: reft" cursorshover="true">다시수정</button>
						<button onclick="location.href='../qna/qnaList.do'"
							class="col-1 btn btn-outline-secondary" style="float: reft"
							cursorshover="true">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
<%@include file="../Footer.jsp"%>