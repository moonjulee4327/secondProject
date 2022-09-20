<%@page import="kr.or.ddit.app.acm.vo.AcommodationVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   List<AcommodationVO> acmList = (List<AcommodationVO>)request.getAttribute("acmList");

   String msg = session.getAttribute("msg") == null ? 
		   "" : (String) session.getAttribute("msg");
   session.removeAttribute("msg"); // 꺼내온 메시지 속성값 삭제하기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙박업소목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">숙박업소ID</th>
      <th scope="col">숙박업소명</th>
      <th scope="col">구분</th>
      <th scope="col">작성자</th>
    </tr>
  </thead>

   
<% 
int acmSize = acmList.size();
int number = 0;
if(acmSize > 0){
   for(int i=0; i < acmSize; i++){
%>
   
   <tr> 
   	<td></td>
      <td><%= acmList.get(i).getAcmId() %></td>   
      <td><a href="AcmDetail.do?acmId=<%=acmList.get(i).getAcmId() %>"><%=acmList.get(i).getAcmNm() %></a></td>
      <td><%= acmList.get(i).getAcmSe() %></td>   
      <td><%= acmList.get(i).getWriter() %></td>   
   
   </tr>

<%
   }
}else{
%>
   <tr>
      <td colspan="5">정보가 없습니다.</td>   
   </tr>
<%
}
%>
<tr>
<td colspan="4"><a href="AcmInsert.do">[숙박업소정보 등록]</a></td>

</tr>
</table>
<%
   if(msg.equals("성공")){
%>
   <script>
      alert("정상적으로 처리되었습니다.");
   </script>
<%
   }
%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>