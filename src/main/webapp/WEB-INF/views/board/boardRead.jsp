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
                            	
                                <h1><span> solr 게시판 </span></h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /# row -->
                
                <section id="main-content">
                    <div class="row">
                    	<div class="card col-lg-12">
	                    	<div class="card-title">
	                       		<h4>게시판 </h4>
	                        </div>
	                        <div class="card-body">
	                      		<div class="table-responsive">
	                      			<table class="table">
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
										    	<td><textarea class="form-control" style="height:160px" readonly><c:out value="${boardInfo.brdContent}"/></textarea></td> 
										    </tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<a href="#" onclick="history.back(-1)"><button class="btn btn-default">돌아가기</button></a>
					<a href="boardDelete?brdNo=<c:out value="${boardInfo.id}"/>"><button class="btn btn-danger">삭제</button></a>
					<a href="boardForm?brdNo=<c:out value="${boardInfo.id}"/>"><button class="btn btn-success">수정</button></a>
			
					<%@include file="../cmmn/footerView.jsp" %>
                    
                </section>
            </div>
        </div>
	</div>
    
    <%@include file="../cmmn/jsContents.jsp" %>
</body>





	    
	
</html>