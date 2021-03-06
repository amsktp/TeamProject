<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MUZ - 게시물 확인</title>
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
		margin: auto;
	}
	a {
		text-decoration: none;
	}
	p {
		font-weight: bold;
		margin: 40px 0px 10px;
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
	#logoutBtn {
		border:none;
		background: none;
		font-size: 14px;
		cursor: pointer;
		color: white;
		padding: 0px;
	}
	
	/* header */
	#header {
		height: 100px;
		background: -webkit-linear-gradient(left,#3faeeb,#3967d0 46%,#3846d0);
		padding-top: 36px;
		box-sizing: border-box;
	}
	#header_in {
		width: 900px;
		margin: 0px auto;
	}
	#userLogout {
		float: right;
		padding-top: 1px;
	}
	#userLogout img {
		width: 20px;
		vertical-align: -4px;
	}
	
	#logoImg {
		cursor: pointer;
		width: 222px;
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
	.textBox textarea {
		resize: none;
	}
	#userName {
      display: inline-block;
      position: relative;
      padding-right: 16px;
      color: #fff;
      font-size: 14px;
   }
   #userName:after {
      display: block;
      content: '';
      position: absolute;
      right: 5px;
      top: 3px;
      width: 1px;
      height: 15px;
      background: #fff;
   }
   
</style>	
<script type="text/javascript">

window.onload = function() {
	
	var allUrl = decodeURIComponent(location.href);

	if (allUrl != 'http://localhost:8090/TeamProjectSaCyHs/boardView.jsp?') {
		viewCheck();
	}
	
	var allUrl = decodeURIComponent(location.href);
	var variableUrl = allUrl.substring(location.href.indexOf('?')+1);
	var splitUrl = variableUrl.split('&');
	var personName = splitUrl[splitUrl.length-1].substring(splitUrl[splitUrl.length-1].indexOf('=')+1);	
	if(personName.indexOf('#') != -1) {
		personName = personName.substring(0, personName.length-1);
	}
	
	var userNameLabel = document.getElementById('userName');
	
	userNameLabel.innerHTML = personName;
	
}


/*  */

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

/* 수정버튼 눌렀을 때 주소 전달 */
function modifingFnc() {
	
	var modifingBtn = document.getElementsByClassName('boardBtn')[0];

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

/* 목록 버튼 클릭 시 주소 전달 */
function viewListFnc() {
	
	var viewListBtn = document.getElementsByClassName('boardBtn')[1];

	var allUrl = decodeURIComponent(location.href);
	var variableUrl = allUrl.substring(location.href.indexOf('?')+1);
	var splitUrl = variableUrl.split('&');
	
	var userName = splitUrl[0].substring(splitUrl[0].indexOf('=')+1);
	var titleName = splitUrl[1].substring(splitUrl[1].indexOf('=')+1);		
	
	var personName = splitUrl[splitUrl.length-1].substring(splitUrl[splitUrl.length-1].indexOf('=')+1);	
	if(personName.indexOf('#') != -1) {
		personName = personName.substring(0, personName.length-1);
	}
	
	hrefUrl = '';
	hrefUrl += 'http://localhost:8090/TeamProjectSaCyHs/boardList.jsp?';
	
	hrefUrl += 'userName=' + encodeURI(userName , "UTF-8") + '&';
	hrefUrl += 'titleName=' + encodeURI(titleName , "UTF-8") + '&';
	hrefUrl += 'personName=' + encodeURI(personName , "UTF-8");
	
	location.href = hrefUrl;
	
}

/* 로그아웃 버튼 클릭 시 주소 전달 */
function logoutFnc() {
	
	
	var allUrl = decodeURIComponent(location.href);
	var variableUrl = allUrl.substring(location.href.indexOf('?')+1);
	var splitUrl = variableUrl.split('&');
	
	var personName = splitUrl[splitUrl.length-1].substring(splitUrl[splitUrl.length-1].indexOf('=')+1);	
	if(personName.indexOf('#') != -1) {
		personName = personName.substring(0, personName.length-1);
	}
	
	hrefUrl = '';
	hrefUrl += 'http://localhost:8090/TeamProjectSaCyHs/logout.jsp?';
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
		<div id='header_in' class='clearfix'>
			<img onclick="clickBannerFnc();" id="logoImg" src="./img/logo_muz2.png">
			<div id='userLogout'>
				<img alt="사용자 아이콘" src="./img/icon_user.png">
				<label id="userName"></label>
				<input id="logoutBtn" type="button" value="로그아웃" onclick="logoutFnc();">
			</div>
		</div>
	</div>

	<!-- 본문 부분 -->
	<div id='contentId'>
		<p style="text-align: center;">글쓰기</p>
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
							<input onclick="modifingFnc();" type="button" class='boardBtn' value="수정">
							<input onclick="viewListFnc();" type="button" class='boardBtn' value="목록보기">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>