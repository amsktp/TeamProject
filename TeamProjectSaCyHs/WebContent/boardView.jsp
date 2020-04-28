<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시물 작성</title>
<style type="text/css">
	table, tr, td {
		border: 1px solid black;
		border-collapse: collapse;
	}
	table {
		margin: auto;
	}
	div {
		text-align: center;
		margin: auto;
	}
	a {
		text-decoration: none;
	}
	p {
		font-weight: bold;
		margin-bottom: 10px;
	}
	.boardBtn:visited {
	  color: #1DDB16;
	}
	.boardBtn:hover {
	  color: #FF0000;
	}
	.boardBtn:active {
	  color: #0054FF;
	}
	#boardHeader {
		 background: -webkit-linear-gradient(left,#3faeeb,#3967d0 46%,#3846d0);
		 height: 100px;
		 line-height: 110px;
		 font-size: 30px;
	}
	.topBottom {
		background-color: #5CD1E5;
	} 
	.titleBox {
		width: 80px;
		background-color: #5CD1E5;
	}
	.textBox {
		width: 500px;
		background-color: #A4FFFF;
	}
</style>	
<script type="text/javascript">

window.onload = function() {
	
	var allUrl = decodeURIComponent(location.href);
	
	if(allUrl.indexOf('=') > 0) {
		if(allUrl.split('=').length > 3){
			viewCheck();
		}
	}
}

function viewCheck() { 
	
	var nameId = document.getElementById('nameValue'); 
	var titleId = document.getElementById('titleValue'); 
	var emailId = document.getElementById('emailValue'); 
	var textId = document.getElementById('textValue'); 
	var passwordId = document.getElementById('passwordValue'); 
	
	var allUrl = decodeURIComponent(location.href);
	
	var variableUrl = allUrl.substring(location.href.indexOf('?')+1);

	var splitUrl = variableUrl.split('&');
	
	var userName = splitUrl[0].substring(splitUrl[0].indexOf('=')+1);
	var titleName = splitUrl[1].substring(splitUrl[1].indexOf('=')+1);
	
	nameId.value = userName;
	titleId.value = titleName;
	emailId.value = 'jsc9285@gmail.com';
	textId.value = '하기실타';
}

</script>

</head>

<body>
		<!-- 헤더 부분 -->
	<div id='boardHeader'>
		<a href="" style="text-decoration: none;">
			<img src="./zum.PNG" alt='ZUM' width="222px" height="41px" style="line-height: 41px;">
		</a>
	</div>

	<!-- 본문 부분 -->
	<div id='contentId'>
		<p>글쓰기</p>
		<form action="./boardList.jsp">
			<table>
				<tr>
					<td class='topBottom' colspan="2" style="text-align: right;">
						<a href="./boardList.jsp">
							글목록	
						</a>
					</td>
				</tr>
				<tr>
					<td class='titleBox'>이 름</td>
					<td class='textBox'>
						<input id='nameValue' type="text" placeholder="이름" 
							name='userName' style="float: left; width: 120px;">
					</td>
				</tr>
				<tr>
					<td class='titleBox'>제 목</td>
					<td class='textBox'>
						<input id='titleValue' type="text" placeholder="제목"
							 name='titleName' style="float: left; width: 400px;">
					</td>
				</tr>
				<tr>
					<td class='titleBox'>Email</td>
					<td class='textBox'>
						<input id='emailValue' type="text" placeholder="이메일"
							 name='emailName' style="float: left; width: 400px;">
					</td>
				</tr>
				<tr>
					<td class='titleBox'>내 용</td>
					<td class='textBox'>
						<textarea rows="24" cols="60" id='textValue' 
							name='textName' style="float: left;"></textarea>
					</td>
				</tr>
				<tr>
					<td class='topBottom' colspan="2" style="background-color: #5CD1E5;">
						<a href="./board.jsp">
							<input type="button" class='boardBtn' value="수정">
						</a>
						<a href="./boardList.jsp">
							<input type="button" class='boardBtn' value="목록보기">
						</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>