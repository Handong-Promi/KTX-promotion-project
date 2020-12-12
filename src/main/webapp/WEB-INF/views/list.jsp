<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>KTX Promotion</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        #list {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
        }
        #list td, #list th {
        border: 1px solid black;
        padding: 8px;
        text-align:center;
        }
        #list tr:nth-child(even){background-color: #ffffff;}
        #list tr:hover {background-color: rgb(255, 255, 255);}
        #list th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #ffffff;
        color: black;
        }
    </style>
</head>
<body>
  	
  	<h1>KTX 프로모션 Group 리스트</h1>
  	
    <table id="list" width="90%">
        <tr>
            <th>출발지</th>
            <th>도착지</th>
            <th>날짜</th>
            <th>출발시간</th>
            <th>도착시간</th>
            <th>인원</th>
            <th>정원</th>
            <th>할인적용 : 1인당 가격</th>
            <th>할인율</th>
            <th>입장하기</th>
            <th>상세보기</th>
        </tr>
        
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.departure}</td>
                <td>${u.arrival}</td>
                <td>${u.day}</td>
                <td>${u.startTime}</td>
                <td>${u.endTime}</td>
                <td>${u.currentNum}명</td>
                <td>${u.maxNum}명</td>
                <td>${u.discountPrice}원</td>
                <td>${u.discountRate}%</td>
                <td><a href="">입장하기</a></td>
                <td><a href="detail/${u.seq}">상세보기</a></td>
            </tr>
        </c:forEach>
    </table>
    <div>
        <br/><br/>
        <button type="button" href="">개인정보 수정</button>
        <button type="button" onclick="location.href='add'">Group 생성</button>
    </div>
    
</body>
</html>