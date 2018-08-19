<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Please sign in <br>
<form:form action="/clap/user/auth" modelAttribute="userAuth" method="POST">
	Email : 
	<br>
	<form:input path="email"/>
	<form:errors path="email"></form:errors><br>
	Password : <br>
	<form:hidden path="username" value="nousername" />
	<form:hidden path="dob" value="1996-11-13" />
	<form:hidden path="pass_hash" value="nohash"/>
	<input type="password" name="pass" />
	<input type="submit" value="sign in" />
</form:form>
<br>
<font color="red">${error }</font>
</body>
</html>