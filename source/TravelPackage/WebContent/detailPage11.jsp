<%@page import="kr.or.ddit.app.common.vo.AtchFileVO"%>
<%@page import="kr.or.ddit.app.review.vo.ReviewVO"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>

<!-- reviewList 붙여주세용 -->
<!-- reviewList 붙여주세용 -->
<!-- reviewList 붙여주세용 -->
<%
	List<ReviewVO> reviewList = (List<ReviewVO>) request.getAttribute("reviewList");
List<List<AtchFileVO>> atchFileList = (List<List<AtchFileVO>>) request.getAttribute("atchFileList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세페이지</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
	integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"
	integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
#ui-datepicker-div {
	width: 500px;
}

.myform fieldset {
	display: inline-block;
	direction: rtl;
	border: 0;
}

.myform fieldset legend {
	text-align: right;
}

.myform input[type=radio] {
	display: none;
}

.myform label {
	font-size: 1.5em;
	color: transparent;
	text-shadow: 0 0 0 #f0f0f0;
}

.myform input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 #58CCFF;
}
</style>


</head>
<body>
	<div class="container">
		<div class="row mt-4">
			<div id="category" class="col-2">
				<script src="./search.js"></script>
			</div>
			<div class="col-9 offset-1">
				<!-- 여기부터 시작 -->
				<div class="card mb-3">
					<div class="row g-0">
						<div class="col-md-4">
							<img
								src="https://image.hanatour.com/usr/cms/resize/800_0/2019/10/16/10000/bf86919f-b177-4fa6-ba75-b8b5db83ab53.jpg"
								class="img-fluid rounded-start" alt="...">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<h5 class="card-title">
									<strong> <!-- 여기는 제목을 넣어주세용 --> <!-- 여기는 제목을 넣어주세용 -->
										<!-- 여기는 제목을 넣어주세용 --> [강릉항개별집결] 울릉도 3일 #독도포함 #비치온관광호텔
										#울릉도별미식포함 #웰컴음료제공
									</strong>
								</h5>
								<!-- 여기는 간단한 설명을 넣어주세용 -->
								<!-- 여기는 간단한 설명을 넣어주세용 -->
								<!-- 여기는 간단한 설명을 넣어주세용 -->
								<p class="card-text">울릉도 3일 #독도포함 #비치온관광호텔 #울릉도별미식포함 #웰컴음료제공</p>

								<p class="card-text">안녕하세요 오늘은 날씨가 맑구용!! 내일은 추울 예정입니당. 옷을
									뜨뜻하게 입고오세용 교통사고가 났으면 좋겠어용 딱 일주일만 학원에 나오고 싶지 않네용</p>

								<p class="card-text text-end fs-2">
									<strong>30000</strong>
									<!-- 여기는 금액입니다!! -->
									<span class="fs-5">원</span>
								</p>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-9">
						<div class="card-body">
							<!-- 간단한 여행 설명? -->
							<h4 class="card-title">
								<strong>상세정보</strong>
							</h4>

							<table class="table table-bordered">
								<tr>
									<th scope="col">가격</th>
									<td>가격</td>
								</tr>
								<tr>
									<th scope="row">지역</th>
									<td>지역</td>
								</tr>
								<tr>
									<th scope="row">가이드 여부</th>
									<td>가이드여부</td>
								</tr>
								<tr>
									<th scope="row">최소/ 최대인원</th>
									<td>최소 / 최대</td>
								</tr>
							</table>

							<!-- 아코디언!!!!!!!! 여행상품넣기 -->
							<div class="accordion" id="accordionExample">
								<div class="accordion-item">
									<h2 class="accordion-header" id="headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">#
											관광지</button>
									</h2>
									<div id="collapseOne" class="accordion-collapse collapse show"
										aria-labelledby="headingOne"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											<div class="text-left">
												<!-- 관광지 이미지 링크로!!! 넣기-->
												<img
													src="http://image1.lottetour.com/static/trvtour/201910/1715/011ee82200cbf4f301c382e19f44b28e"
													class="rounded" alt="..."
													style="height: 300px; width: 300px;"> <img
													src="http://image1.lottetour.com/static/trvtour/201910/1715/011ee82200cbf4f301c382e19f44b28e"
													class="rounded" alt="..."
													style="height: 300px; width: 300px;">
											</div>

											<!-- 관광지 설명 넣기-->
											<strong>이건 바로 굵은 글씨</strong> 이건 그냥 일반글씨, until the collapse
											plugin adds the appropriate classes that we use to style each
											element. These classes control the overall appearance, as
											well as the showing and hiding via CSS transitions. You can
											modify any of this with custom CSS or overriding our default
											variables. It's also worth noting that just about any HTML
											can go within the
											<code>이건 바로 강조글씨</code>
											, though the transition does limit overflow.
										</div>
									</div>
								</div>


								<div class="accordion-item">
									<h2 class="accordion-header" id="headingTwo">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo">#
											숙박</button>
									</h2>
									<div id="collapseTwo" class="accordion-collapse collapse"
										aria-labelledby="headingTwo"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											<div class="text-left">
												<!-- 호텔 이미지 넣기-->
												<img
													src="http://image1.lottetour.com/static/trvtour/201910/1715/011ee82200cbf4f301c382e19f44b28e"
													class="rounded" alt="..."
													style="height: 300px; width: 300px;"> <img
													src="http://image1.lottetour.com/static/trvtour/201910/1715/011ee82200cbf4f301c382e19f44b28e"
													class="rounded" alt="..."
													style="height: 300px; width: 300px;">
											</div>
											<!-- 호텔 설명 넣기-->
											<strong>This is the second item's accordion body.</strong> It
											is hidden by default, until the collapse plugin adds the
											appropriate classes that we use to style each element. These
											classes control the overall appearance, as well as the
											showing and hiding via CSS transitions. You can modify any of
											this with custom CSS or overriding our default variables.
											It's also worth noting that just about any HTML can go within
											the
											<code>.accordion-body</code>
											, though the transition does limit overflow.
										</div>
									</div>
								</div>



								<div class="accordion-item">
									<h2 class="accordion-header" id="headingThree">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse" data-bs-target="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree">
											# 교통</button>
									</h2>
									<div id="collapseThree" class="accordion-collapse collapse"
										aria-labelledby="headingThree"
										data-bs-parent="#accordionExample">
										<div class="accordion-body">
											<!-- 이동수단 설명 넣기-->
											<strong>This is the third item's accordion body.</strong> It
											is hidden by default, until the collapse plugin adds the
											appropriate classes that we use to style each element. These
											classes control the overall appearance, as well as the
											showing and hiding via CSS transitions. You can modify any of
											this with custom CSS or overriding our default variables.
											It's also worth noting that just about any HTML can go within
											the
											<code>.accordion-body</code>
											, though the transition does limit overflow.
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="col-3">
						<div class="card text-end border-light mb-3">
							<div class="card-body">
								<input class="form-control" placeholder="출발일을 선택하세요" type="text"
									aria-label="readonly input example" readonly id="datepicker">
							</div>
							<div class="card-body ">
								<p class="card-text fs-4">인원수</p>
								<div class="btn-group" role="group" aria-label="Basic example"
									style="display: inline-flex;">
									<button type="button" onclick="f_minus()"
										class="btn btn-primary">-</button>
									<input style="width: 60px;"
										class="form-control text-center border-0" id="people"
										type="number" value="1" aria-label="readonly input example"
										readonly>
									<button type="button" onclick="f_plus()"
										class="btn btn-primary">+</button>
								</div>
								<!-- 날짜선택 -->

							</div>
							<div class="card-body fs-3">
								<p>
									<!-- 금액 -->
									<strong id="price">10000</strong> <span>원</span>
								</p>
							</div>
							<a href="/review/reviewInsert.do" class="btn btn-primary">예약하기</a>
						</div>
					</div>
				</div>

				<!-- 여기서부터 리뷰 가져가세용 -->
				<!-- 여기서부터 리뷰 가져가세용 -->
				<!-- 여기서부터 리뷰 가져가세용 -->
				<!-- 여기서부터 리뷰 가져가세용 -->
				<!-- 여기서부터 리뷰 가져가세용 -->
				<div class="row">
					<div class="card w-75 border-0">
						<h5 class="card-header">리뷰&평점</h5>
						<span><button id="review" style="float: right"
								onclick="location='review/reviewInsert.jsp'"
								class="btn btn-outline-primary">리뷰쓰기</button></span>
						<div class="card-body">
							<table class="table">


								<%
									int reviewSize = reviewList.size();
								if (reviewSize > 0) {
									for (int i = 0; i < reviewSize; i++) {
								%>

								<tr>
									<td><%=reviewList.get(i).getReviewId()%></td>
									<td><small style="display: inline-block">
											<div class="text-center myform" style="display: inline-block">
												<span><fieldset style="display: inline-block">
														<%
															if (reviewList.get(i).getReviewRat().equals("5")) {
														%>
														<input type="radio" name="reviewRat<%=i%>" value="5"
															checked="checked" disabled="disabled"><label
															for="rate1">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="4" disabled="disabled"><label
															for="rate2">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="3" disabled="disabled"><label
															for="rate3">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="2" disabled="disabled"><label
															for="rate4">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="1" disabled="disabled"><label
															for="rate5">★</label> <br>
														<%
															} else if (reviewList.get(i).getReviewRat().equals("4")) {
														%>
														<input type="radio" name="reviewRat<%=i%>" value="5"
															disabled="disabled"><label for="rate1">★</label>
														<input type="radio" name="reviewRat<%=i%>" value="4"
															checked="checked" disabled="disabled"><label
															for="rate2">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="3" disabled="disabled"><label
															for="rate3">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="2" disabled="disabled"><label
															for="rate4">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="1" disabled="disabled"><label
															for="rate5">★</label> <br>
														<%
															} else if (reviewList.get(i).getReviewRat().equals("3")) {
														%>
														<input type="radio" name="reviewRat<%=i%>" value="5"><label
															for="rate1">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="4"><label
															for="rate2">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="3" checked="checked"><label
															for="rate3">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="2"><label
															for="rate4">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="1"><label
															for="rate5">★</label> <br>
														<%
															} else if (reviewList.get(i).getReviewRat().equals("2")) {
														%>
														<input type="radio" name="reviewRat<%=i%>" value="5"
															disabled="disabled"><label for="rate1">★</label>
														<input type="radio" name="reviewRat<%=i%>" value="4"
															disabled="disabled"><label for="rate2">★</label>
														<input type="radio" name="reviewRat<%=i%>" value="3"
															disabled="disabled"><label for="rate3">★</label>
														<input type="radio" name="reviewRat<%=i%>" value="2"
															checked="checked" disabled="disabled"><label
															for="rate4">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="1" disabled="disabled"><label
															for="rate5">★</label> <br>
														<%
															} else if (reviewList.get(i).getReviewRat().equals("1")) {
														%>
														<input type="radio" name="reviewRat<%=i%>" value="5"><label
															for="rate1">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="4"><label
															for="rate2">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="3"><label
															for="rate3">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="2"><label
															for="rate4">★</label> <input type="radio"
															name="reviewRat<%=i%>" value="1" checked="checked"><label
															for="rate5">★</label> <br>
														<%
															}
														%>
													</fieldset> </span>
											</div> <%=reviewList.get(i).getMemMail()%> <%=reviewList.get(i).getReviewDate()%>
									</small>
										<p><%=reviewList.get(i).getReviewTitle()%>
										</p>
										<p class="fs-5"><%=reviewList.get(i).getReviewCont()%></p></td>
									<td width="50">
										<%
											if (atchFileList.get(i) == null || atchFileList.get(i).isEmpty()) {
										%> <img src="/TravelPackage/image/icon.png"
										style="width: 150px; height: 150px;"> <%
									 	} else {
									 %> <img
										src="<%=request.getContextPath() + File.separator%>review/<%=atchFileList.get(i).get(0).getAtchFileDeSav()%>"
										style="width: 150px; height: 150px;"> <%
									 	}
									 %>
									</td>
								</tr>

								<%
									}
								} else {
								%>
								<tr>
									<td colspan="6">정보가 없습니다.</td>
								</tr>
								<%
									}
								%>

							</table>
						</div>
					</div>
				</div>
				<!-- 여기까지 리뷰 가져가세용 -->
				<!-- 여기까지 리뷰 가져가세용 -->
				<!-- 여기까지 리뷰 가져가세용 -->
				<!-- 여기까지 리뷰 가져가세용 -->
			</div>
		</div>
	</div>


	<script type="text/javascript">
		var saram = document.querySelector("#people").value;
		var price = document.querySelector("#price").innerHTML;
		var money = parseInt(price);
		// alert(typeof(parseInt(price)));
		function f_plus() {
			saram++;
			document.querySelector("#people").value = saram;
			money += parseInt(price);
			document.querySelector("#price").innerHTML = money;

		}
		function f_minus() {
			if (saram > 0) {
				saram--;
				document.querySelector("#people").value = saram;

				money -= parseInt(price);
				document.querySelector("#price").innerHTML = money
			}
			if (saram < 0 || saram == 0) {
				document.querySelector("#people").value = 1;
				document.querySelector("#price").innerHTML = price;
			}
		}

		$(function() {
			$('#datepicker').datepicker(
					{
						autoclose : false,
						dateFormat : 'yy-mm-dd',
						prevText : '이전 달',
						nextText : '다음 달',
						monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
								'7월', '8월', '9월', '10월', '11월', '12월' ],
						monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
								'7월', '8월', '9월', '10월', '11월', '12월' ],
						dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
						dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
						dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
						showMonthAfterYear : true,
						yearSuffix : '년'
					});
			$("#datepicker").focus();
		});
	</script>
</body>
</html>
<%@include file="./Footer.jsp"%>
