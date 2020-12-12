<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<style>
	body{
	 	font-family: 'Noto Sans KR', sans-serif;
	 }
</style>
<body>
<h1>
	Hello world!  
</h1>
<a href="promotion/list"> View Promotion </a>
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
