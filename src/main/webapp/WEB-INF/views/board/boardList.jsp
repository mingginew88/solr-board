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
								                    <td></td>
								                    <%-- <td><fmt:formatDate pattern="yyyy-MM-dd" value="${listview.brdDate}"/></td> --%>
								                </tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					
					<a href="boardForm"><button class="btn btn-success">글쓰기</button></a>
			
					<%@include file="../cmmn/footerView.jsp" %>
                    
                </section>
            </div>
        </div>
	</div>
    
    <%@include file="../cmmn/jsContents.jsp" %>
</body>

</html>




