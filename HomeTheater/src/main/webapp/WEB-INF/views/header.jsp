<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap" rel="stylesheet"><meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="css/board.css" rel="stylesheet" type="text/css">
<title>header</title>
<style>
*{
	font-family: 'Noto Serif KR', serif;

}
.container{
	text-align: center;
	width: 1000px;
}
.btn{
	background-color: white;
	border-color: black;
	border: 1px solid black;
    border-radius: 10px;
    font-size: 12px;
}
a{
	color: black;
	border-radius: 5px;
	font-size: 15px;
}
.logo{
	text-align: left;
	margin-bottom: -20px;
}
.top_menu{
	text-align: center;
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	margin-top: 10px;
	padding-top: 10px;
}
li{
	list-style: none;
	display: inline-block;
	margin: auto 10px;
}
a:hover{
	color: black;
	background-color: #D5D5D5;
}
.menuLink{
	width: 100px;
	display: block;
}
.menuLink:hover{
	color: black;
	background-color: #D5D5D5;
}
.login_logout{
	text-align: right;
}
</style>
</head>
<body>
<!-- 외장 톰켓 고유주소 -->
<%
	String context = request.getContextPath();
%>

<div class="logo">
	<a href="<%=context%>/main">
		<img src="img/logo1.png" style="" width="250px" height="100">
	</a>
</div>
<div class="login_logout">
<!--  	<i class="far fa-smile" style="font-size: 16px;"></i>&nbsp;	-->
		<a href="#">Login </a>&nbsp;|&nbsp; 
		<a href="#">Join</a>
	</div>	

<nav class="top_menu">
	<ul>
		<li><a class="menuLink" href="#">영화</a></li>
		<li><a class="menuLink" href="#">추천영화</a></li>
		<li><a class="menuLink" href="<%=context%>/YM_views/mainNotice">공지사항</a></li>
		<li><a class="menuLink" href="#">고객센터</a></li>
		<li><i class="fas fa-search" style="font-size: 15px;"></i>&nbsp;
		<form action="SearchMovieList">
			<input type="search" name="mo_title" style="width: 100px;" placeholder="검색"></li>
			<input type="submit" value="검색">
		</form>
	</ul>
</nav>
</body>
</html>