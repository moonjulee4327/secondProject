<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/common.css">
<link rel="stylesheet" href="./css/reset.css">
<!-- <link rel="stylesheet" href="./css/join.css"> -->
<!-- <script src="./js/join.js"></script> -->
<script src="./js/common.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
	<div id="container" class="container">
	<div id="header">
        <div class="user_menu">
            <!-- bnr = banner -->
            <a href="#" class="bnr_delivery">
                <img src="https://res.kurly.com/pc/service/common/1908/delivery_190819.gif"
                alt="서울, 경기, 인천 샛별배송, 수도권 이외 지역 택배배송"
                class="bnr_delivery_img">
            </a>
            <ul class="sign_menu">
                <li class="link">
                    <a href="#" class="item after join">회원가입</a>
                </li>
                <li class="link">
                    <a href="#" class="item after">로그인</a>
                </li>
                <li class="link">
                    <a href="#" class="item service">고객센터</a>
                    <!-- 고객센터 hover 시 sub_menu 등장 -->
                    <ul class="sub_menu">
                        <li class="list">
                            <a href="#" class="list_item">공지사항</a>
                        </li>
                        <li class="list">
                            <a href="#" class="list_item">자주하는 질문</a>
                        </li>
                        <li class="list">
                            <a href="#" class="list_item">1:1 문의</a>
                        </li>
                        <li class="list">
                            <a href="#" class="list_item">상품 제안</a>
                        </li>
                        <li class="list">
                            <a href="#" class="list_item">에코포장 피드백</a>
                        </li>
                    </ul>
                </li> 
            </ul>
            <!-- .sign_menu -->
        </div>
        <div class="header_logo">
            <h1 class="logo">
                <a href="#" class="link_main">
                    <span class="gnb_logo_container"></span>
                    <img src="https://res.kurly.com/images/marketkurly/logo/logo_x2.png" alt="마켓컬리 로고" class="logo_img">
                </a>
            </h1>
        </div>
        <div class="gnb">
        <!-- gnb = global nav bar = 최상위 메뉴  -->
            <h2 class="blind">메뉴</h2>
                <ul class="gnb_menu">
                    <li class="list gnb_main">
                        <a href="#" class="link">
                            <span class="ico"></span>
                            <!-- ico는 css에서 bg url로 처리 -->
                            <span class="txt">전체 카테고리</span>
                        </a>
                        <div class="gnb_sub">
                            <ul class="menu">
                                <li class="current">
                                    <!-- hover나 active시 current가 옮겨가도록 설정해야 함 -->
                                    <a href="#" class="main_item">
                                        <span class="ico">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_newyear_inactive_pc@2x.1609722514.png" alt="" class="ico off">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_newyear_active_pc@2x.1609722514.png" alt="" class="ico on">
                                            <!--카테고리 별 아이콘은 직관적이게 img src로 바로 삽입 
                                            클릭X(off): 기본, 클릭(on): 보라색 아이콘-->
                                        </span>
                                        <span class="tit">
                                            <span class="txt">블라블라블라</span>
                                            <span class="ico_new" alt="new"></span>
                                            <!-- ico_nex: bg url로 처리 -->
                                        </span>
                                        <!-- tit: text + ico -->
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="main_item">
                                        <span class="ico">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt="" class="ico off">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt="" class="ico on">
                                            <!--카테고리 별 아이콘은 직관적이게 img src로 바로 삽입 
                                                                                    클릭X(off): 기본, 클릭(on): 보라색 아이콘-->
                                        </span>
                                        <span class="tit">
                                            <span class="txt">블라블라블라</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="main_item">
                                        <span class="ico">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt=""
                                                class="ico off">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt=""
                                                class="ico on">
                                            <!--카테고리 별 아이콘은 직관적이게 img src로 바로 삽입 
                                                                                                                        클릭X(off): 기본, 클릭(on): 보라색 아이콘-->
                                        </span>
                                        <span class="tit">
                                            <span class="txt">블라블라블라</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="main_item">
                                        <span class="ico">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt=""
                                                class="ico off">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt=""
                                                class="ico on">
                                            <!--카테고리 별 아이콘은 직관적이게 img src로 바로 삽입 
                                                                                                                        클릭X(off): 기본, 클릭(on): 보라색 아이콘-->
                                        </span>
                                        <span class="tit">
                                            <span class="txt">블라블라블라</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="main_item">
                                        <span class="ico">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt=""
                                                class="ico off">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt=""
                                                class="ico on">
                                            <!--카테고리 별 아이콘은 직관적이게 img src로 바로 삽입 
                                                                                                                        클릭X(off): 기본, 클릭(on): 보라색 아이콘-->
                                        </span>
                                        <span class="tit">
                                            <span class="txt">블라블라블라</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="main_item">
                                        <span class="ico">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt=""
                                                class="ico off">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt=""
                                                class="ico on">
                                            <!--카테고리 별 아이콘은 직관적이게 img src로 바로 삽입 
                                                                                                                        클릭X(off): 기본, 클릭(on): 보라색 아이콘-->
                                        </span>
                                        <span class="tit">
                                            <span class="txt">블라블라블라</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="main_item">
                                        <span class="ico">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt=""
                                                class="ico off">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt=""
                                                class="ico on">
                                            <!--카테고리 별 아이콘은 직관적이게 img src로 바로 삽입 
                                                                                                                        클릭X(off): 기본, 클릭(on): 보라색 아이콘-->
                                        </span>
                                        <span class="tit">
                                            <span class="txt">블라블라블라</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="main_item">
                                        <span class="ico">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt=""
                                                class="ico off">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt=""
                                                class="ico on">
                                            <!--카테고리 별 아이콘은 직관적이게 img src로 바로 삽입 
                                                                                                                        클릭X(off): 기본, 클릭(on): 보라색 아이콘-->
                                        </span>
                                        <span class="tit">
                                            <span class="txt">블라블라블라</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="main_item">
                                        <span class="ico">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt=""
                                                class="ico off">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt=""
                                                class="ico on">
                                            <!--카테고리 별 아이콘은 직관적이게 img src로 바로 삽입 
                                                                                                                        클릭X(off): 기본, 클릭(on): 보라색 아이콘-->
                                        </span>
                                        <span class="tit">
                                            <span class="txt">블라블라블라</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="main_item">
                                        <span class="ico">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt=""
                                                class="ico off">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt=""
                                                class="ico on">
                                            <!--카테고리 별 아이콘은 직관적이게 img src로 바로 삽입 
                                                                                                                        클릭X(off): 기본, 클릭(on): 보라색 아이콘-->
                                        </span>
                                        <span class="tit">
                                            <span class="txt">블라블라블라</span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="main_item">
                                        <span class="ico">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_inactive_pc@2x.1586324570.png" alt=""
                                                class="ico off">
                                            <img src="https://img-cf.kurly.com/shop/data/category/icon_veggies_active_pc@2x.1586324570.png" alt=""
                                                class="ico on">
                                            <!--카테고리 별 아이콘은 직관적이게 img src로 바로 삽입, 클릭X(off): 기본, 클릭(on): 보라색 아이콘-->
                                        </span>
                                        <span class="tit">
                                            <span class="txt">블라블라블라</span>
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="list">
                        <a href="#" class="link">
                            <span class="txt">신상품</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="#" class="link">
                            <span class="txt">베스트</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="#" class="link">
                            <span class="txt">알뜰쇼핑</span>
                        </a>
                    </li>
                    <li class="list">
                        <a href="#" class="link">
                            <span class="txt">금주혜택</span>
                        </a>
                    </li>

                    <div class="gnb_search">
                        <form action="">
                            <input type="text" id="keyword" value="건강 기원 새해맞이 보양식 레시피" title="검색어입력" class="inp_search">
                            <input type="image" src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png" class="btn_search">
                            <div class="init">
                                <button type="button" id="search_init" class="btn_delete">검색어 삭제하기</button>
                            </div>
                        </form>
                    </div>
                        
                    <div class="location_login">
                        <!-- 버튼 뒤로 넘기기, 가상요소 선택자로 bg url 아이콘 처리-->
                        <button type="button" class="btn_location on">배송지 등록</button>
                        
                        <div class="location_notice">
                            <!-- 첫 홈페이지 화면에 몇 초간 notice 띄우고 자동으로 off -->
                            <span class="emph">배송지를 등록</span>하고<br>
                            <span class="txt">구매가능한 상품을 확인하세요!</span>
                            <div class="group_button">
                                <button type="button" class="btn login">로그인</button>
                                <button type="button" class="btn search_address">
                                    <span class="ico"></span>
                                    주소검색
                                </button>
                            </div>
                        </div>
                    </div>

                    <div class="cart_count">
                        <!-- bg url 아이콘 추가 -->
                        <a href="#" class="btn_cart">
                            <span class="blind">장바구니</span>
                        </a>
                    </div>    
                </ul>
        </div>
    </div>
</div>
</body>
</html>