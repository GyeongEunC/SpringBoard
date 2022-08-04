<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 게시물 작성 </title>
<link href="/resources/css/board.css" rel="stylesheet">
</head>
<body>

<div id="nav">
	<%@ include file="../include/nav.jsp" %>
</div>

<div id="wrap" align="center">
<h1> Board Write </h1>

<form method="post">

<label> 제 목 </label>
<input type="text" name="title"><br>

<label> 작성자 </label>
<input type="text" name="writer"><br>

<label> 내 용 </label>
<textarea rows="7" cols="30" name="content"></textarea><br>

<button type="submit"> 작 성 </button>

</form>

</div>
</body>
</html>