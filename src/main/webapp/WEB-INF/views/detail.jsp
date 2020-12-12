<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <style>
    	body{
    		font-family: 'Noto Sans KR', sans-serif;
    		box-sizing: border-box;
    		margin: auto;
    		width: 90%;
    	}
        table{
            font-size:15px;
            background-color: rgb(255, 240, 191);
            border-spacing: 30px;
            border-radius: 20px;
            border: 1px solid #000000
        }
        .box{
            width:70%;
            overflow:auto;
            margin: auto;
            margin-top:5%;
            box-sizing: border-box;
            text-align: center;
        }
        #promotion{
            width:40%;
            margin-left: 10%;
            float:left;
            display:inline-block;
        }
        #cru{
            width:50%;
            display: inline-block;
        }
        box::after {  
            clear: both;
        }
        .buttons{
            width:60%;
            overflow:auto;
            margin:0 auto;
            box-sizing: border-box;
        }
        button{
            float: right;
            margin:10px;
        }
    </style>
    <script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='../deleteok/' + id;
	}
	</script>
</head>
<body>

       <h1>View Form</h1>

       <div class="box">
            <div id="promotion">
                <table>
                    <tr><td>출발지역</td><td>${command.departure}</td></tr>
                    <tr><td>도착지역</td><td>${command.arrival}</td></tr>
                    <tr><td>날짜</td><td>${command.day}</td></tr>
                    <tr><td>출발시간</td><td>${command.startTime}</td></tr>
                    <tr><td>도착시간</td><td>${command.endTime}</td></tr>
                    <tr><td>Group 현재 정원</td><td>${command.currentNum}명</td></tr>
                    <tr><td>Group 정원</td><td>${command.maxNum}명</td></tr>
                    <tr><td>할인율</td><td>${command.discountRate}%</td></tr>
                    <tr><td>할인 전, 1인당 가격</td><td>${command.originalPrice}원</td></tr>
                    <tr><td>할인 후, 1인당 가격</td><td>${command.discountPrice}원</td></tr>
                </table>    
            </div>
    
            <div id="cru">
                <table>
                    <tr>
                        <th>이름</th>
                        <th>계좌번호</th>
                        <th>전화번호</th>
                    </tr>
                    <tr>
                        <td>권주은</td>
                        <td>010-xxxx-xxxx 기업</td>
                        <td>010-xxxx-xxxx</td>
                    </tr>
                    <tr>
                        <td>이원빈</td>
                        <td>3333-xx-xxxxxxx 카카오뱅크</td>
                        <td>010-xxxx-xxxx</td>
                    </tr>
                </table>    
            </div>
        </div>    
        <div class="buttons">
            <button type="button" onclick="history.back()">게시판</button>
            <button type="button">Chatting</button>
            <button type="button" onclick="location.href='../editform/${command.seq}'">Group 정보수정</button>
            <button type="button" onclick="javascript:delete_ok('${command.seq}')">Group 삭제</button>
        </div>
</body>
</html>
