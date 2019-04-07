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
    <a href="boardForm">글쓰기</a>
                    
    <table style="width:600px">
        <caption>게시판</caption>
        <colgroup>
            <col width='8%' />
            <col width='*%' />
            <col width='15%' />
            <col width='15%' />
        </colgroup>
        <thead>
            <tr>
                <th>번호</th> 
                <th>제목</th>
                <th>작성자</th> 
                <th>등록일</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="listview" items="${listview}" varStatus="status">    
                <c:url var="link" value="boardRead">
                    <c:param name="brdNo" value="${listview.id}" /> 
                </c:url>        

                <tr>
                    <td><c:out value="${listview.id}"/></td>
                    <td><a href="${link}"><c:out value="${listview.brdTitle}"/></a></td>
                    <td><c:out value="${listview.brdWriter}"/></td>
                    <%-- <td><fmt:formatDate pattern="yyyy-MM-dd" value="${listview.brdDate}"/></td> --%>
                </tr>
            </c:forEach>
        </tbody>
    </table>    
</body>
</html>