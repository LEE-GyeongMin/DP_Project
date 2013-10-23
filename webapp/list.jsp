<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>List</title>
	<link rel="stylesheet" media="screen" content="text/css" href="/stylesheets/reset.css" />
	<link rel="stylesheet" media="screen" content="text/css" href="/stylesheets/form.css" />
	<link rel="stylesheet" media="screen" content="text/css" href="/stylesheets/show.css" />
</head>

<body>
<div id="wrap">
	<header>
		<h1>사진 올리기</h1>
	</header>
	<div id="formArea">
		<form action="/board" method="post" enctype="multipart/form-data">
			제목 : <input type="text" name="title" /> <br />
			<textarea name="contents" ></textarea> <br />
			<input type="file" name="file" />
			<input type="submit" class="button" value="보내기"> <br />
		</form>

		<!-- <a id="toList" class="button" href="/board">취소</a> -->
	</div>
</div>

<c:forEach items="${boards}" var="board">
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
			
			<%-- <a class="button" href="/board">목록</a> <a class="button" href="/board/${board.id}/delete">삭제</a> --%>
		</div>
	</div>
</c:forEach>

</body>
</html>