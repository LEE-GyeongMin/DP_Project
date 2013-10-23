<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" media="screen" type="text/css" href="/stylesheets/reset.css" />
<link rel="stylesheet" media="screen" type="text/css" href="/stylesheets/show.css" />
<title>Insert title here</title>
</head>

<body>
<div id="wrap">
	<div id="contents">
		<h1>${board.title}</h1>
		<c:if test="${not empty board.fileName}">
			<img src="/images/${board.fileName}" />
			<br />
		</c:if>
		${board.contents} <br />

		<div id="commentArea">
			<div id="comment">
				<c:forEach items="${board.comments}" var="comment">
					<p>${comment.contents}</p>
				</c:forEach>
			</div>
	
			<form action="/board/${board.id}/comment" method="post">
				<textarea name="contents" placeholder="댓글 달기..."></textarea> <br />
				<input class="button" type="submit" value="댓글 쓰기"> <br />
			</form>
		</div>
		<div id="menu">	
			<a class="button" href="/board">목록</a>
		</div>		
	</div>
</div>
</body>
</html>