<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>solrBoard</title>
</head>
<body>
	<table style="width:600px">
	    <caption>게시판</caption>
	    <colgroup>
	        <col width='15%' />
	        <col width='*%' />
	    </colgroup>
	    <tbody>
	        <tr>
	            <td>작성자</td> 
	            <td><c:out value="${boardInfo.brdWriter}"/></td> 
	        </tr>
	        <tr>
	            <td>제목</td> 
	            <td><c:out value="${boardInfo.brdTitle}"/></td> 
	        </tr>
	        <tr>
	            <td>내용</td> 
	            <td><c:out value="${boardInfo.brdContent}"/></td> 
	        </tr>
	    </tbody> 
	</table>
	<a href="#" onclick="history.back(-1)">돌아가기</a>
	<a href="boardDelete?brdNo=<c:out value="${boardInfo.id}"/>">삭제</a>
	<a href="boardForm?brdNo=<c:out value="${boardInfo.id}"/>">수정</a>
</body>
</html>