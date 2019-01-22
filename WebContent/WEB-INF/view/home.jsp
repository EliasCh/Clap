<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Home</title>
 
     
 	<jsp:include page="css.jsp"></jsp:include>
 	<jsp:include page="js.jsp"></jsp:include>
    <link rel="shortcut icon" href="https://s3.eu-west-3.amazonaws.com/faviconicon/favicon3.ico?" type="image/x-icon">
  <link rel="icon" href="https://s3.eu-west-3.amazonaws.com/faviconicon/favicon3.ico?" type="image/x-icon">
</head>

<body>

<nav class="navbar navbar-light bg-light static-top" >
      <div class="container" >
      			
        <a class="navbar-brand" href="#">Findih - Find your next tutorial </a>
        	
			<c:choose>
	  		<c:when test="${sessionScope.currUser == null}">
	  		<div id="navbar container" >
	  		
		  		<a href="${pageContext.request.contextPath}/user/create" class="btn btn-primary" >Sign up</a>
		  		<a href="${pageContext.request.contextPath}/user/signi" class="btn btn-primary" >Sign in</a>
		  	
		  	</div>
			</c:when>
			<c:otherwise>
				<font color="green"> ${info }</font>
				<a href="${pageContext.request.contextPath}/user/profile" class="btn btn-primary" >${currUser.username }</a></li>
				<a href="${pageContext.request.contextPath}/solution/create" class="btn btn-primary" >Post solution</a></li>
				<a href="${pageContext.request.contextPath}/user/descon" class="btn btn-primary" >Disconnect</a></li>		
			</c:otherwise>
			</c:choose>			
	    
      </div>
    </nav>
<!-- Old 
				<h1><a href="${pageContext.request.contextPath}/" style="font-size:21px;" >Findih - <span> Find the best tutorials based on other geeks's votes  </span></a></h1>
				<br>
-->
    <!-- Masthead -->
    <header class="masthead text-white text-center">
      <div class="overlay"></div>
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
            <h1 class="mb-5">Type what interests you and find the BEST tutorials </h1>
          </div>
          <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
            
              <div class="form-row">
                <div class="col-12 col-md-9 mb-2 mb-md-0">              
                  	<form:form action="${pageContext.request.contextPath}/topic/search" modelAttribute="topic" method="POST">
     				<form:input  path="title" class="form-control form-control-lg" placeholder="Python, Javascript, ..." /> 
    				<br>
     				<form:input path="version" class="form-control form-control-lg" type="hidden" placeholder="Version (0 : any version)" value="0" step="0.1" min="0"/>
					<br>    
                </div>
                <div class="col-12 col-md-3">
                <input type="submit" class="btn btn-block btn-lg btn-primary formSubmit"  value="Find it!"  /> <br>
     				<form:errors path="title" style="color:#ff9900;" cssClass="error" /><br> 
     				<form:errors path="version" style="color:#ff9900;" cssClass="error" />     	
  					</form:form>
  					
                </div>
                
                <div style="color:#007bff" >${err }</div> 	 	
				<div style="color:green;" >${upvote }</div>
                  
               <c:if test="${solutions != null  }">
  		<table align=center style="width:50%;" class="table">
  		<tr ><td style="text-align: center; vertical-align: middle;" >Solution url </td><td align=center  style="text-align: center; vertical-align: middle;" >Votes</td><td></td></tr>
	  	<c:forEach var="solution" items="${solutions }">
			<tr>
				<td style="text-align: center; vertical-align: middle;" width=80%  >
					<a href="${solution.url }" style="color:white;decoration:none;" target="_blank" >
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
				<form action="${pageContext.request.contextPath}/solution/upvote" method="POST" >
					<input type="hidden" name="id" value="${solution.id }"/>
					<input type="submit" class="formUpvote" style="background-color:white;" value="Upvote" />
				</form>
				</td>
			</tr>
		</c:forEach>
	  		</table>
  		</c:if>
              </div>
          </div>
        </div>
      </div>
    </header>

		<!-- Banner -->
			
  	 <footer> 
  	 	<span style="position:absolute;right:20px;text-align: center;vertical-align: middle;line-height: 60px;" >
  	 		<a style="color:grey;" href="https://www.linkedin.com/in/elyes-chine/"> © Elyes Chine </a>  
  	 	</span>
  	 </footer>
</body>
</html>