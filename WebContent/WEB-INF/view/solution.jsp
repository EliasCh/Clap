<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
${sessionScope.sessionTopic }
<form:form action="/clap/solution/save" modelAttribute="solutionTopic" method="POST" >
Title<br>
<form:input path="title"/>
<form:errors path="title"></form:errors><br>
Version <br>
<form:input path="version"/>
<form:errors path="version"></form:errors><br>
Full URL : <br>
<input type="text" name="url" /><br>
<input type="submit" value="submit" />
</form:form>
<font color="red">${error }</font>
</body>
</html>