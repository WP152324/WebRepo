<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<a class="navbar-brand" href="/WebClass/jsp/myblog.jsp">TG블로그</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
			<a class="nav-link" href="/WebClass/jsp/profile.jsp"> <span class="sr-only"></span></a>
			</li>
			<li class="nav-item" onmouseover="menu_over(this);"onmouseout="menu_out(this);">
			<a class="nav-link" href="/WebClass/jsp/myprofile.jsp">프로필 <span class="sr-only"></span></a>
			</li>
			<li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
			<a class="nav-link" href="/WebClass/jsp/GG.jsp">10주년</a>
			</li>
			<li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
			<a class="nav-link " href="/WebClass/jsp/star.jsp">마지막</a>
			</li>
		</ul>
	<% UserVO U = (UserVO)session.getAttribute("user"); 
	if(U == null) { %>
    <%-- 세션이 없는 경우 --%>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/jsp/login2.jsp">Sign in</a>		
    <% } 
	else { %>
    <%-- 세션이 있는 경우 --%>
	     <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%= U.getName() %>님
	      </a>
	      <div class="dropdown-menu" aria-labelledby="bd-versions">
	      	<form action="/WebClass/bloglogout" method="post">
		      	<button type="submit" class="dropdown-item">Sign out</button>
	      	</form>
	      </div>
	    </li>
	    </ul>
	 <% } %>
	</div>
	<div>
  </div>	
</nav>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
