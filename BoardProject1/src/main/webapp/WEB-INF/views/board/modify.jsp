<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시물 수정 </title>
<link href="/resources/css/board.css" rel="stylesheet">
</head>
<body>

<div id="nav">
	<%@ include file="../include/nav.jsp" %>
</div>

<div id="wrap" align="center">

<h1> Board Update </h1>

<form method="post">

<label> 제목 </label>
<input type="text" name="title" value="${view.title}"><br>

<label> 작성자 </label>
<input type="text" name="writer" value="${view.writer}"><br>

<label> 내용 </label>
<textarea rows="5" cols="50" name="content">${view.content}</textarea><br>

<button type="submit"> 수정 </button>

</form>

</div>
</body>
</html>