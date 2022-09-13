<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 숙박업소 등록</title>
</head>
<body>
	<form action="AcmInsert.do" method="post" enctype="multipart/form-data">
		<table bgcolor = "aqua">
			<tr>
				<td>I D :</td>
				<td><input type="text" name="acmId" value=""></td>
			</tr>
			<tr>
				<td>숙박업소명 :</td>
				<td><input type="text" name="acmNm" value=""></td>
			</tr>
			<tr>
				<td>구분 :</td>
				<td><input type="text" name="acmSe" value=""></td>
			</tr>
			<tr>
				<td>주소 :</td>
				<td><textarea rows="3" cols="20" name="Addr"></textarea></td>
			</tr>
			<tr>
				<td>가격 :</td>
				<td><textarea rows="3" cols="20" name="Price"></textarea></td>
			</tr>
			<tr>
				<td>수량 :</td>
				<td><textarea rows="3" cols="20" name="Qty"></textarea></td>
			</tr>
			<tr>
				<td>작성자 :</td>
				<td><textarea rows="3" cols="20" name="Writer"></textarea></td>
			</tr>
			<tr>
				<td>첨부파일1 :</td>
				<td><input type="file" name="atchFile"></td>
			</tr>
		</table>
		<input type="submit" value="상품등록">
	</form>
</body>
</html>