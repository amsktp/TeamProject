<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MUZ - 게시물 작성</title>
	<link rel="shortcut icon" href="./img/favicon.ico">
<style type="text/css">
	body {
		margin: 0px;
	}
	
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
	#header {
		height: 100px;
		background: -webkit-linear-gradient(left,#3faeeb,#3967d0 46%,#3846d0);
		padding-top: 35px;
		box-sizing: border-box;
		text-align: center;
	}

	#logoImg {
		width:222px;
		cursor: pointer;
	}
	
	#unvisiblePersonName{
		display: none;
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
	//이름 받아오는 부분
	var allUrl = decodeURIComponent(location.href);
	var variableUrl = allUrl.substring(location.href.indexOf('?')+1);
	var splitUrl = variableUrl.split('&');
	var personName = splitUrl[splitUrl.length-1].substring(splitUrl[splitUrl.length-1].indexOf('=')+1);
	if(personName.indexOf('#') != -1) {
		personName = personName.substring(0, personName.length-1);
	}
	
	var nameId = document.getElementById('nameValue');
	nameId.value = personName;
	
	
	var unvisiblePersonName = document.getElementById('unvisiblePersonName');
	unvisiblePersonName.children[0].value = personName;
	
}


function writeCheck() { 
	
	var nameId = document.getElementById('nameValue'); 
	var titleId = document.getElementById('titleValue'); 
	var emailId = document.getElementById('emailValue'); 
	var textId = document.getElementById('textValue'); 
	var passwordId = document.getElementById('passwordValue'); 
	 
	//제목 유효성 검사
	if(titleId.value == '') { 
		alert("제목을 적어주세요"); 
		return false;
	}
	//이메일 유효성 검사
	else if(emailId.value == '') { 
		alert("이메일을 적어주세요"); 
		return false;
	}
	//내용 유효성 검사
	else if(textId.value == '') { 
		alert("내용을 적어주세요"); 
		return false;
	} 
	//비밀번호 유효성 검사
	else if(passwordId.value == '') { 
		alert("비밀번호를 적어주세요"); 
		return false;
	}
	//비밀번호 조건
	else if (passwordId.value.length < 4) {
		alert("비밀번호를 4자이상으로 적어주세요 ");
		return false;
	}else if (passwordId.value.length > 8) {
		alert("비밀번호를 8자 이하로 적어주세요");
		return false;
	}
	
}

/* 목록 클릭 시 주소 전달 */
function viewListFnc() {
	
	var allUrl = decodeURIComponent(location.href);
	var variableUrl = allUrl.substring(location.href.indexOf('?')+1);
	var splitUrl = variableUrl.split('&');
	
	var personName = splitUrl[splitUrl.length-1].substring(splitUrl[splitUrl.length-1].indexOf('=')+1);	
	if(personName.indexOf('#') != -1) {
		personName = personName.substring(0, personName.length-1);
	}
	
	hrefUrl = '';
	hrefUrl += 'http://localhost:8090/TeamProjectSaCyHs/boardList.jsp?';
	hrefUrl += 'personName=' + encodeURI(personName , "UTF-8");
	
	location.href = hrefUrl;
	
	
}

/* 다시 작성 클릭 시 주소 전달 */
function reWritingFnc() {
	
	var allUrl = decodeURIComponent(location.href);
	var variableUrl = allUrl.substring(location.href.indexOf('?')+1);
	var splitUrl = variableUrl.split('&');
	
	var personName = splitUrl[splitUrl.length-1].substring(splitUrl[splitUrl.length-1].indexOf('=')+1);	
	if(personName.indexOf('#') != -1) {
		personName = personName.substring(0, personName.length-1);
	}
	
	hrefUrl = '';
	hrefUrl += 'http://localhost:8090/TeamProjectSaCyHs/board.jsp?';
	hrefUrl += 'personName=' + encodeURI(personName , "UTF-8");
	
	location.href = hrefUrl;
	
}

/* 베너 클릭 시 주소 전달 */
function clickBannerFnc() {
	
	var allUrl = decodeURIComponent(location.href);
	var variableUrl = allUrl.substring(location.href.indexOf('?')+1);
	var splitUrl = variableUrl.split('&');
	
	var personName = splitUrl[splitUrl.length-1].substring(splitUrl[splitUrl.length-1].indexOf('=')+1);	
	if(personName.indexOf('#') != -1) {
		personName = personName.substring(0, personName.length-1);
	}
	
	hrefUrl = '';
	hrefUrl += 'http://localhost:8090/TeamProjectSaCyHs/boardList.jsp?';
	hrefUrl += 'personName=' + encodeURI(personName , "UTF-8");
	
	location.href = hrefUrl;
}

</script>

</head>

<body>
		<!-- 헤더 부분 -->
	<div id="header">
		<img onclick="clickBannerFnc();" id="logoImg" src="./img/logo_muz2.png">
	</div>

	<!-- 본문 부분 -->
	<div id='contentId'>
		<p>글쓰기</p>
		<form action="./boardList.jsp" onsubmit="return writeCheck();">
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
					<td class='titleBox'>비밀번호</td>
					<td class='textBox'>
						<input id='passwordValue' type="password" placeholder="4자 이상, 8자 이하"
							 name='passwordName' style="float: left; width: 120px;">
					</td>
				</tr>
				<tr>
					<td class='topBottom' colspan="2" style="background-color: #5CD1E5;">
						<a>
							<input type="submit" class='boardBtn' value="글쓰기"> 
						</a>
							<input onclick="reWritingFnc();" type="button" class='boardBtn' value="다시작성">
							<input onclick="viewListFnc();" type="button" class='boardBtn' value="목록보기">
					</td>
				</tr>
			</table>
			<div id="unvisiblePersonName">
				<input type="text" name="personName" value="">
			</div>
		</form>
	</div>
</body>
</html>