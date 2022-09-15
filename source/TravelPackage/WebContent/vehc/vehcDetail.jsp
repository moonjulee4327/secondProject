<%@page import="kr.or.ddit.app.vehc.vo.VehcVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	VehcVO vh = (VehcVO) request.getAttribute("vehc");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교통수단 상세정보</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
	<table class="table table-hover">
	<tr>
		<td>I	D</td>
		<td><%=vh.getVehcId()%></td>
	</tr>
	<tr>
		<td>교통수단 회사명</td>
		<td><%=vh.getVehcComp()%></td>
	</tr>
	<tr>
		<td>구분</td>
		<td><%=vh.getVehcSe()%></td>
	</tr>
	<tr>
		<td>교통수단명</td>
		<td><%=vh.getVehcNm()%></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><%=vh.getVehcdp()%></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><%=vh.getVehcWrt()%></td>
	</tr>
		<td colspan="2">
			<a href="vehcList.do">[목록]</a>
			<a href="vehcUpdate.do?vehcId=<%=vh.getVehcId()%>">[수정]</a>
			<a href="delete.do?vehcId=<%=vh.getVehcId()%>">[삭제]</a>
		</td>
	</tr>	
	</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>