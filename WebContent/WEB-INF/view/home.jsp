<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Home</title>
</head>
<body>
 <a href="/clap/user/profile">${currUser.username }</a>
 <c:choose>
  <c:when test="${sessionScope.currUser == null}">
	<form:form action="/clap/user/create">
		<input type="submit" value="Sign up" />
	</form:form>
	<form:form action="/clap/user/signi" >
		<input type="submit" value="Sign in" />
	</form:form>		
  </c:when>
  <c:otherwise>
	<form:form action="/clap/user/descon">
		<input type="submit" value="Disconnect" />
	</form:form>
    <a href="/clap/solution/create">Post solution</a><br>
  </c:otherwise>
</c:choose>
 <font color="green">${info }</font>
 <h3>Find your guide</h3>
  
  	<form:form action="/clap/topic/search" modelAttribute="topic" method="POST">
     	<label>Topic :</label>   
     	<form:input path="title"/> 
     	<form:errors path="title" cssClass="error" /> <br><br>
     	<label>Version :</label>   
     	<form:input path="version" type="number" step="0.1" min="0"/> <br/>
     	<form:errors path="version" cssClass="error" /> <br><br>
    	<input type="submit" value="Search" class="save" />
  	</form:form>
  	<br>
  	${err }
  	<c:forEach var="solution" items="${solutions }">
		<a href="${solution.url }">${solution.url }</a> , ${solution.vote } <br>
	</c:forEach>

</body>
</html>