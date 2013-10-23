<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" media="screen" type="text/css" href="/stylesheets/reset.css" />
<link rel="stylesheet" media="screen" type="text/css" href="/stylesheets/form.css" />
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

		<a id="toList" class="button" href="/board">취소</a>
	</div>
</div>
</body>
</html>