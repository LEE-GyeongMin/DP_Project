<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> 수 화면 임다</h1>
<div>
	<form action="/board/${board.id}/modify" method="post" enctype="multipart/form-data">
		 제목 : <input type="text" name="title" size=40 value="${board.title}"/> <br />
		<textarea name="contents" rows="10" cols="50">${board.contents}</textarea> <br />
		
		<input type="submit" value="수정하기">
	</form>
	
	<a href="/board/${board.id}">취소</a>
</div>

</body>
</html>