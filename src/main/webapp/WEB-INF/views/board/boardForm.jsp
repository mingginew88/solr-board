<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>solr board</title>
	
	<%@include file="../cmmn/cssContents.jsp" %>
</head>

<body>

<%@include file="../cmmn/navView.jsp" %>

<%@include file="../cmmn/headerView.jsp" %>

    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1><span>새글 작성</span></h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                
                <section id="main-content">
                    <div class="row">
                    	<form name="form" action="boardSave">
					        <table style="width:600px">
					            <colgroup>
					                <col width='15%' />
					                <col width='*%' />
					            </colgroup>
					            <tbody>
					                <tr>
					                    <td>작성자</td>
					                    <td><input type="text" class="form-control input-default " name="brdWriter" value="<c:out value="${boardInfo.brdWriter}"/>"></td> 
					                </tr>
					                <tr>
					                    <td>제목</td>
					                    <td><input type="text" class="form-control input-default " name="brdTitle" value="<c:out value="${boardInfo.brdTitle}"/>"></td> 
					                </tr>
					                <tr>
					                    <td>내용</td>
					                    <td><textarea class="form-control" name="brdContent" rows="10" cols="60" style="height:160px"><c:out value="${boardInfo.brdContent}"/></textarea></td> 
					                </tr>
					            </tbody>
					        </table>
					        <br>
					        <a href="#" onclick="history.back(-1)"><button class="btn btn-default">돌아가기</button></a>
					        <button class="btn btn-success" onclick="form.submit()">저장</button>
					        <input type="hidden" name="brdNo" value="<c:out value="${boardInfo.id}"/>">
<%-- 					        <input type="hidden" name="brdDate" value="<fmt:formatDate pattern = "yyyy-MM-dd" value = "${boardInfo.brdDate}" />"> --%>
					    </form>
					</div>
			
					<%@include file="../cmmn/footerView.jsp" %>
                    
                </section>
            </div>
        </div>
	</div>
    
    <%@include file="../cmmn/jsContents.jsp" %>
</body>


