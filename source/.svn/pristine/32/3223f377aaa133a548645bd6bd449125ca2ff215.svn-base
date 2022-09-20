<%@page import="kr.or.ddit.app.acm.vo.AcommodationVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   List<AcommodationVO> acmList = (List<AcommodationVO>)request.getAttribute("acmAllList");

   String msg = session.getAttribute("msg") == null ? 
		   "" : (String) session.getAttribute("msg");
   session.removeAttribute("msg"); // 꺼내온 메시지 속성값 삭제하기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙박업소목록</title>
</head>
<body>

<table border="1" bgcolor="aqua">
   <tr>
      <th>숙박업소ID</th>
      <th>숙박업소명</th>
      <th>구분</th>
      <th>주소</th>      
      <th>가격</th>      
      <th>수량</th>      
      <th>작성자</th>      
      <th>첨부파일</th>
   </tr>
   
<% 
int acmSize = acmList.size();
if(acmSize > 0){
   for(int i=0; i < acmSize; i++){
%>
   
   <tr> 
      <td><%= acmList.get(i).getAcmId() %></td>   
      <td><%= acmList.get(i).getAcmNm() %></td>   
      <td><%= acmList.get(i).getAcmSe() %></td>   
      <td><%= acmList.get(i).getAddr() %></td>   
      <td><%= acmList.get(i).getPrice() %></td>   
      <td><%= acmList.get(i).getQty() %></td>   
      <td><%= acmList.get(i).getWriter() %></td>   
      <td><%= acmList.get(i).getAcmAtchFileId() %></td>   
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
</body>
</html>