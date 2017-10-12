<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script>
	function menu_over(e) {
		e.setAttribute("class", "nav-item active");
	}
	function menu_out(e) {
		e.setAttribute("class", "nav-item");
	}
</script>
<style>
.container {
	padding-top: 30px;
}
</style>
<meta charset="utf-8">
<title>GG</title>
<%@ include file="menu.jsp" %>
</head>
<body>
<ul>
<li>탱구</li>
<li>써니</li>
<li>파니</li>
<li>효연</li>
<li>유리</li>
<li>수영</li>
<li>윤아</li>
<li>서현</li>
</ul>
<button onclick="window.open('http://girlsgeneration.smtown.com/')">공식 홈페이지</button>
</body>
</html>