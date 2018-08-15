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
 	<form:form action="/clap/user/save" modelAttribute="user" method="POST">
 		<form:hidden path="pass_hash" value="ifdoifhoizheuhueihuierhuizhueihr"/>
     	<label>username </label>   
     	<form:input path="username"/> 
     	<form:errors path="username" cssClass="error" /> <br><br>
     	<label>mail </label>   
     	<form:input path="email" type="email" /> 
     	<form:errors path="email" cssClass="error" /> <br><br>
     	<label>Pass </label>   
     	<input type="password" name="pass"   required/><br><br>
     	<label>Date of birth </label>   
     	<input type="text" path="dob" class= "date" name = "dob" value = "<fmt:formatDate value="${user.dob}" pattern="YYYY-MM-DD" />" placeholder="yyyy-mm-dd"/>
    	<form:errors path="dob" cssClass="error" /> <br><br>
    	<input type="submit" value="Save" class="save" />
  	</form:form>
 	<font color="red" >${error }</font>
</body>
</html>