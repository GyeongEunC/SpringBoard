<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시물 목록_Paging </title>
<link href="/resources/css/board.css" rel="stylesheet">
</head>
<body>
<div id="wrap" align="center">

<h1> Board List </h1>
	<table>
		<thead>
			<tr>
				<th> 번 호 </th>
				<th> 제 목 </th>
				<th> 작성일 </th>
				<th> 작성자 </th>
				<th> 조회수 </th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td> ${list.bno} </td>
					<td> 
						<a href="/board/view?bno=${list.bno}">${list.title} </a>
					</td>
					<td> 
						<fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" /> 
					</td>
					<td> ${list.writer} </td>
					<td> ${list.viewCnt} </td>
				</tr>
			</c:forEach>
		</tbody>
		
	</table>
	
<div>
	<c:if test="${page.prev}">
		<span>
			[ <a href="/board/listPage?num=${page.startPageNum - 1}"> 이전 </a>]
		</span>
	</c:if>

	<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
		<span>
			<c:if test="${select != num}">
				<a href="/board/listPage?num=${num}"> ${num} </a>
			</c:if>
			
			<c:if test="${select == num}">
				<strong> ${num} </strong>
			</c:if>
		</span>
	</c:forEach>
	
	<c:if test="${page.next}">
		<span>
			[ <a href="/board/listPage?num=${page.endPageNum + 1}"> 다음 </a> ]
		</span>
	</c:if>
</div>

</div>
</body>
</html>