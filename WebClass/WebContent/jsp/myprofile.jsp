<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<head>
<meta charset="utf-8">
<title>My Profile</title>
<%@ include file="menu.jsp" %>
</head>
<body>
<p>이름 : 이태근</p>
<p>생년월일 : 2000.04.19</p>
<p>장래희망 : 수의사/생명공학자</p>
<p>이메일 : dimixorms2324@naver.com</p>
<br>
<p>디미고 2학년 3반 24번</p>
<p>Code Bakery동아리원</p>
<p>Rendezvous동아리원</p>

</body>
</html>