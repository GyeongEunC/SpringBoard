<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시물 조회 </title>
</head>
<body>
<h1> Board View </h1>

<label> 제목 </label>
${view.title} <br>

<label> 작성자 </label>
${view.writer} <br>

<label> 내용 </label>
${view.content} <br>

<div>
	<a href="/board/modify?bno=${view.bno}"> 게시물 수정 </a> <br>
	<a href="/board/listPage?num=1"> 게시물 목록 </a> <br>
	<a href="/board/delete?bno=${view.bno}"> 게시물 삭제 </a> <br>
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

</body>
</html>