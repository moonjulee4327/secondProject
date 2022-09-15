<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교통수단 등록</title>
</head>
<body>
	<form action="vehcInsert.do" method="post" enctype="multipart/form-data">
		<table>
		<tr>
			<td>교통수단 회사명</td>
			<td><input type="text" name="vehcComp" value=""></td>
		</tr>
		<tr>
			<td>구분</td>
			<td><input type="text" name="vehcSe" value=""></td>
		</tr>
		<tr>
			<td>교통수단명</td>
			<td><input type="text" name="vehcNm" value=""></td>
		</tr>
		<tr>
			<td> 단위거리 가격</td>
			<td><input type="text" name="vehcDp" value=""></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="vehcWrt" value=""></td>
		</tr>
		</table>
		<input type="submit" value="교통 등록">
	</form>
	
</body>
</html>