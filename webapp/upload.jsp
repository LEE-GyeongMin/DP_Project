<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Upload Picture</title>
	</head>
	
	<body>
		<form action="/picture/" method="post">
			Title <br />
			<input type="text" name="title" size=80 /> <br />
			<textarea name="content" rows="24" cols="60">Input content</textarea> <br />
			<input type="text" name="file" /> <br />
			<input type="submit" value="Submit" />
		</form> 
	</body>
</html>