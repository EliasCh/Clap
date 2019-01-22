<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up </title>
<link rel="shortcut icon" href="https://s3.eu-west-3.amazonaws.com/faviconicon/favicon3.ico?" type="image/x-icon">
  <link rel="icon" href="https://s3.eu-west-3.amazonaws.com/faviconicon/favicon3.ico?" type="image/x-icon">
</head>

<body>
<header id="header" class="alt skel-layers-fixed">
				<h1><a href="${request.contextPath}/" style="font-size:21px;" >Findih - <span> Find the best tutorials based on other geeks's votes  </span></a></h1>
				<br>
				<nav id="nav">
					<ul>
						 <c:choose>
	  					 	<c:when test="${sessionScope.currUser == null}">
		  					 	<li><a href="${request.contextPath}/user/signi" style="font-family:Georgia;font-size:21px;">Sign in</a></li>
							</c:when>
						</c:choose>
					</ul>
				</nav>
			</header>
		<!-- Banner -->
			<section id="banner">
				<div class="inner" align=center >
					Sign up 
					<font color="#ff9900" ><i> ${error } </i></font> 	
  	<form:form action="${request.contextPath}/user/save" modelAttribute="user" method="POST">
 		<form:hidden path="pass_hash" value="ifdoifhoizheuhueihuierhuizhueihr"/>
     	<label style="font-family:Georgia;font-size:21px;" >Username </label>   
     	<form:input path="username" minLength="5" maxLength="20" /> 
     	<form:errors path="username" style="color:#ff9900;" cssClass="error" /> <br>
     	<label style="font-family:Georgia;font-size:21px;" >Mail </label>   
     	<form:input path="email" type="email" /> 
     	<form:errors path="email" cssClass="error" /> <br>
     	<label style="font-family:Georgia;font-size:21px;" >Pass </label>   
     	<input type="password" name="pass"   required/><br>
     	<label style="font-family:Georgia;font-size:21px;" >Date of birth </label>   
     	<input type="text" path="dob" class= "date" name = "dob" value = "<fmt:formatDate value="${user.dob}" pattern="YYYY-MM-DD" />" placeholder="yyyy-mm-dd"/>
    	<form:errors path="dob" cssClass="error" /> <br>
    	<input type="submit" value="Save" class="formSubmit" style="background-color:white;" class="save" />
  	</form:form>
				</div>
			</section>


  	 <footer> 
  	 	<span style="position:absolute;right:20px;text-align: center;vertical-align: middle;line-height: 60px;" >
  	 		<a style="color:grey;" href="https://www.linkedin.com/in/elyes-chine/"> © Elyes Chine </a>  
  	 	</span>
  	 </footer>

 	
</body>
</html>