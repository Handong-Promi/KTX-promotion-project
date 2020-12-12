<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
    <title>KTX 프로모션 Group 만들기</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <style>
    body{
	 	font-family: 'Noto Sans KR', sans-serif;
	 }
     input {
         width:200px;
         height:38px;
         font-size:15px;
         background-color: rgb(255, 240, 191);
         border: 1px solid rgb(252, 252, 252);
     }
     button{
         width:140px;
         height:35px;
         font-size:15px;
         background-color: rgb(231, 231, 229);
         border: 1px solid rgb(83, 83, 83);   
         border-radius: 5px;
         float: right;
     }
     table{
         font-size:20px;
         text-align:center;
         position: absolute; 
         left: 50%; 
         transform: translateX(-50%); 
         padding-top: 12px;
         border-spacing: 30px;
         border-radius: 20px;
	     border: 1px solid #000
     }
     .buttons{
	 	margin-right:5%;
	 }
    </style>
</head>
<body>
	<h1>KTX 프로모션 Group 만들기</h1>
	<form action="addok" method="post">
		<table id="add">
            <tr><td>출발지</td><td><input type="text" required name="departure"/></td></tr>
			<tr><td>도착지</td><td><input type="text" required name="arrival"/></td></tr>
			<tr><td>날짜</td><td><input type="date" required name="day" /></td></tr>
			<tr><td>출발시간</td><td><input type="time" required name="startTime"/></td></tr>
            <tr><td>도착시간</td><td><input type="time" required name="endTime"/></td></tr>
            <tr><td>정원</td><td><input type="number" required name="maxNum"/></td></tr>
            <tr><td>할인율</td><td><input type="number" step=0.1 required name="discountRate" min="0" max="100"/></td></tr>
            <tr><td>할인 전, 1인당 가격</td><td><input type="number" step=100 required name="originalPrice" min="0"/></td></tr>
            <tr><td>할인 후, 1인당 가격</td><td><input type="number" step=100 required name="discountPrice" min="0"/></td></tr>
        </table>
        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<div class="buttons">
			<button type="button" onclick="location.href='list'">게시판으로</button>
        	<br/><br/>
        	<button type="submit">Group 생성</button>
		</div>
		
	</form>
</body>
</html>