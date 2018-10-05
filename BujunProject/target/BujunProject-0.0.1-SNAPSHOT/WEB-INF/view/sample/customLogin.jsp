<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<form method="post" action="/login">
		<input type="text" name="username" value="admin" /> <br />
		<input type="password" name="password" value="admin" /> <br />
		<input type="checkbox" name="remember-me" /> Remember me <br />
		
		<input type="submit" />
		
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />		
		
	</form>
	
	
</body>
</html>