<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시물 조회 </title>
<link href="/resources/css/board.css" rel="stylesheet">
</head>
<body>

<div id="nav">
	<%@ include file="../include/nav.jsp" %>
</div>

<div id="wrap" align="center">

<h1> Board View </h1>

<table>
	<tr>
		<th> 제 목 </th>
		<td> ${view.title} </td>
		<th> 작성자 </th>
		<td> ${view.writer} </td>
		<th> 작성일 </th>
		<td> <fmt:formatDate value="${view.regDate}"/> </td>
	</tr>
	<tr>
		<th> 내 용 </th>
		<td colspan="5"> ${view.content} </td>
	</tr>
</table>
<br><br><br>

<div id = "btn">
	<a href="/board/modify?bno=${view.bno}"> 게시물 수정 </a> &nbsp;&nbsp;
	<a href="/board/listPage?num=1"> 게시물 목록 </a> &nbsp;&nbsp;
	<a href="/board/delete?bno=${view.bno}"> 게시물 삭제 </a>
</div>

<!-- 댓글 Part -->

<ul>
<!-- 	<li> -->
<!-- 		<div> -->
<!-- 			<p> 1st_replier </p> -->
<!-- 			<p> 1st_reply </p> -->
<!-- 		</div> -->
<!-- 	</li> -->
<!-- 	<li> -->
<!-- 		<div> -->
<!-- 			<p> 2nd_replier </p> -->
<!-- 			<p> 2nd_reply </p> -->
<!-- 		</div> -->
<!-- 	</li> -->
<!-- 	<li> -->
<!-- 		<div> -->
<!-- 			<p> 3rd_replier </p> -->
<!-- 			<p> 3rd_reply </p> -->
<!-- 		</div> -->
<!-- 	</li> -->
	
	<c:forEach items="${reply}" var="reply">
	<li>
		<div>
			<p>${reply.writer} / <fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd" /> </p>
			<p>${reply.content}</p>
		</div>
	</li>	
	</c:forEach>

</ul>

<div>
<form method="post" action="/reply/write">

	<p>
		<label> replier </label>
		<input type="text" name="writer">
	</p>
	<p>
		<textarea rows="5" cols="50" name="content"></textarea>
	</p>
	<p>
		<input type="hidden" name="bno" value="${view.bno}">
		<button type="button"> 댓글 작성 </button>
	</p>
	
</form>	
</div>

<!-- 댓글 END -->

</div>

</body>
</html>