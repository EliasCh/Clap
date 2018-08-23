<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Home</title>
 <link rel="stylesheet" type="text/css" href="/WEB-INF/css/home.css">
 <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> 
<style>
html {
    position: relative;
    min-height: 100%;
}
body {
    margin: 0 0 100px; /* bottom = footer height */
    background-color: #f2f2f2 ;
}
footer {
    position: absolute;
    left: 0;
    bottom: 0;
    height: 60px;
    width: 100%;
    background-color:#eaecef;
}
.headHtml {
    position: absolute;
    left: 0;
    top: 0;
    height: 80px;
    width: 100%;
    background-color: #f2f2f2;
}
.formInput {
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

.formSubmit  {
    
    background-color: #0066A2;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.formUpvote  {    
    background-color: #008CBA;
    color: white;
    padding: 7px 10px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
.classiRight {
	position : absolute ;
	right: 5px;
	top : 5 px ;
	background-color: #0066A2;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
.classiLeft {
	position : absolute ;
	top : 5 px  ; 
	left : 5 px;
	background-color: #0066A2;
    color: white;
    padding: 14px 20px;
    margin: 8px 0px 8px 8px ;
    border: none;
    border-radius: 4px;
    cursor: pointer; 
}
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.username {
	position:absolute ;width:100%;left:50%;
}
</style>
</head>
<body>	

 <div class="headHtml">
 <c:choose>
  <c:when test="${sessionScope.currUser == null}">
	<form:form action="/clap/user/create">
		<div align=left ><input type="submit" class="classiLeft" value="Sign up" /></div>
	</form:form>
	<form:form action="/clap/user/signi" >
	<input type="submit" class="classiRight" value="Sign in" />
	</form:form>		
  </c:when>
  <c:otherwise>
 		
    <form action="/clap/solution/create">   
    	<input type="submit" class="classiLeft" value="Post solution" /> 
    </form>
    <form:form action="/clap/user/descon">
		<input type="submit" class="classiRight" value="Disconnect" />
	</form:form><br>
	<h4 align=center ><a style="color:#008CBA;" href="/clap/user/profile">${currUser.username }</a></h4>
  </c:otherwise>
</c:choose>
<br><br>
 <font color="green"> ${info }</font>
 </div>
 <div align=center>
 <br><br><br><br><br><br><br>
 <h2 style="color:#0066A2;"><b>Find your guide</b></h2><br>
  	<form:form action="/clap/topic/search" modelAttribute="topic" method="POST">
     	<form:input path="title" class="formInput" placeholder="Python,Javascript,..." /> 
     	-   
     	<form:input path="version" class="formInput" type="number" placeholder="Version" step="0.1" min="0"/>
     	&nbsp  
     	<input type="submit" class="formSubmit" value="Search"  /> <br>
     	<form:errors path="title" cssClass="error" /> 
     	<form:errors path="version" cssClass="error" /> <br><br>
    	
  	</form:form>
  	<br>
  	<font color="red" >${err }</font>
  	<br>
 	<font color="green">${upvote } </font>
  	<c:if test="${solutions != null  }">
 
  		<table align=center style="width:50%;" class="table">
  		<tr ><td style="text-align: center; vertical-align: middle;" >Solution url </td><td align=center  style="text-align: center; vertical-align: middle;" >Votes</td><td></td></tr>
	  	<c:forEach var="solution" items="${solutions }">
			<tr>
				<td style="text-align: center; vertical-align: middle;" width=80%  >
					<a href="${solution.url }" target="_blank" >
					<c:choose>
					<c:when test="${ solution.url.length() > 55 }">
						${solution.url.substring(0,55) }...
						</c:when>
						<c:otherwise>
						${solution.url }
						</c:otherwise>
						</c:choose>
					</a> 
				</td>
				<td width=40% style="text-align: center; vertical-align: middle;"  >
					${solution.vote } <br>
				</td>
				<td width=40% style="text-align: center; vertical-align: middle;" >
				<form action="/clap/solution/upvote" method="POST" >
					<input type="hidden" name="id" value="${solution.id }"/>
					<input type="submit" class="formUpvote" value="Upvote" />
				</form>
				</td>
			</tr>
		</c:forEach>
	  	</table>
  	</c:if>
  	</div>
  	 <footer> 
  	 	<span style="position:absolute;right:20px;text-align: center;vertical-align: middle;line-height: 60px;" >
  	 		<a style="color:grey;" href="https://www.linkedin.com/in/elyes-chine/"> © Elyes Chine </a>  
  	 	</span>
  	 </footer>
</body>
</html>