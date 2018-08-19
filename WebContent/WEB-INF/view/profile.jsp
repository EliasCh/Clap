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
${currUser }

<br>
 	<form:form name="formProfile" action="/clap/user/update" modelAttribute="userProfile" method="POST">
 		<form:hidden path="pass_hash" value="ifdoifhoizh"/>
 		<form:hidden path="email" value="nouser@nouser.com"/>
     	<label>username </label>   
     	<form:input path="username" /> 
     	<form:errors path="username" cssClass="error" /> <br><br>
     	<label>Pass </label>   
     	<input type="password" name="pass" /><br><br>
     	<label>Date of birth </label>   
     	<input type="text" path="dob" class= "date" name = "dob" value = "<fmt:formatDate value="${userProfile.dob}" pattern="YYYY-MM-DD" />" />
    	<form:errors path="dob" cssClass="error" /> <br><br>
    	<input type="submit" value="Save" class="save" onclick="isValidDate(document.formProfile.dob)"/>
  	</form:form>
  	<font color="red">${error }</font>
  	<br>
  	<font color="green">${msg }</font>
  	<form:form action="/clap/user/delete">
  		<input type="submit" value="Delete account" class="save" />
  	</form:form>
</body>
</html>
