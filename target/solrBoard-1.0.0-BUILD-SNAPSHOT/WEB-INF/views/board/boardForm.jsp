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
    <form name="form" action="boardSave">
        <table style="width:600px">
            <caption>게시판</caption>
            <colgroup>
                <col width='15%' />
                <col width='*%' />
            </colgroup>
            <tbody>
                <tr>
                    <td>작성자</td> 
                    <td><input type="text" name="brdWriter" size="20" maxlength="20" value="<c:out value="${boardInfo.brdWriter}"/>"></td> 
                </tr>
                <tr>
                    <td>제목</td> 
                    <td><input type="text" name="brdTitle" size="70" maxlength="250"  value="<c:out value="${boardInfo.brdTitle}"/>"></td> 
                </tr>
                <tr>
                    <td>내용</td> 
                    <td><textarea name="brdContent" rows="5" cols="60"><c:out value="${boardInfo.brdContent}"/></textarea></td> 
                </tr>
            </tbody>
        </table>    
        <a href="#" onclick="form.submit()">저장</a>
        <input type="hidden" name="brdNo" value="<c:out value="${boardInfo.id}"/>">
        <input type="hidden" name="brdDate" value="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${boardInfo.brdDate}" />">
    </form>    
</body>
</html>