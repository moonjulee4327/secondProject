<%@page import="kr.or.ddit.app.vehc.vo.VehcVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<VehcVO> vehcList = 
		(List<VehcVO>) request.getAttribute("vehcList");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교통수단 목록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<table class="table table-hover">
	<tr>
		<th>ID</th>
		<th>교통수단 회사명</th>
		<th>구분</th>
		<th>교통수단명</th>
		<th>가격</th>
		<th>작성자</th>
	</tr>
<%
int vehcSize = vehcList.size();
if(vehcSize > 0){
	for(int i=0; i<vehcSize; i++){
%>
	<tr>
		<td><%=vehcList.get(i).getVehcId()%> </td>
		<td><a href="vehcDetail.do?vehcId=<%=vehcList.get(i).getVehcId()%>"><%=vehcList.get(i).getVehcComp()%> </td>
		<td><%=vehcList.get(i).getVehcSe()%> </td>
		<td><%=vehcList.get(i).getVehcNm()%> </td>
		<td><%=vehcList.get(i).getVehcdp()%> </td>
		<td><%=vehcList.get(i).getVehcWrt()%> </td>
	</tr>
<%
	}
}else{
%>
	<tr>
		<td colspan="6">회원정보가 없습니다.</td>
	</tr>
<%} %>
	<tr>
		<td colspan="6"><button onclick="location='vehcInsert.jsp'" class="btn btn-outline-primary"  style="float: right">등록</button> </td>
		
	</tr>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>