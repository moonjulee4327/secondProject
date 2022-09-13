<%@page import="kr.or.ddit.app.common.vo.AtchFileVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.app.acm.vo.AcommodationVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
AcommodationVO acmv = (AcommodationVO) request.getAttribute("acmv");

	List<AtchFileVO> atchFileList = 
			(List<AtchFileVO>)request.getAttribute("atchFileList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 상세 정보</title>
</head>
<body>
	<table border="1" bgcolor="aqua">
		<tr>
			<td>I D :</td>
			<td><%=acmv.getAcmId()%></td>
		</tr>
		<tr>
			<td>숙박업소명 :</td>
			<td><%=acmv.getAcmNm()%></td>
		</tr>
		<tr>
			<td>구분 :</td>
			<td><%=acmv.getAcmSe()%></td>
		</tr>
		<tr>
			<td>주소 :</td>
			<td><%=acmv.getAddr()%></td>
		</tr>
		<tr>
			<td>가격 :</td>
			<td><%=acmv.getPrice()%></td>
		</tr>
		<tr>
			<td>수량 :</td>
			<td><%=acmv.getQty()%></td>
		</tr>
		<tr>
			<td>작성자 :</td>
			<td><%=acmv.getWriter()%></td>
		</tr>
		<tr>
			<td>기존 첨부파일 :</td>
			<td>
				<%
			if(atchFileList != null){
				for(AtchFileVO fileVO : atchFileList){
			%>
				<div>
					<a href="<%=request.getContextPath()%>/filedown.do?fileId=<%=fileVO.getAtchFileId()%>&fileSn=<%=fileVO.getFileSn()%>"><%=fileVO.getOrignlFileNm() %></a>
				</div> <% 
				}
			}
			%>
			</td>
		</tr>
		
		<tr>
			<td colspan="2"><a href="AcmList.do">[목록]</a> <a
				href="AcmUpdate.do?acmId=<%=acmv.getAcmId()%>">[정보 수정]</a> <a
				href="AcmDelete.do?acmId=<%=acmv.getAcmId()%>">[정보 삭제]</a></td>
		</tr>
	</table>
</body>
</html>