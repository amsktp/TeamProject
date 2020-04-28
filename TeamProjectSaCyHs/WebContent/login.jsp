<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");

String userId = request.getParameter("id");
String userPwd = request.getParameter("password");

%>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

<style type="text/css">

	.clearfix:after {
		display: block;
		content: '';
		clear: both;
	}

	#header {
		height: 52px;
		background: -webkit-linear-gradient(left,#3faeeb,#3967d0 46%,#3846d0);
		padding-top: 28px;
		text-align: center;
		padding-bottom : 30px;
	}

	#logoImg {
		width:222px;
		height:41px;
	}

	#loginContent {
		width: 410px;
		height: 600px;
		border : 1px solid #E0E0E0;
		padding : 60px 65px 20px 75px;
		margin: 40px auto 0px auto;
	}
	
	#loginTitle {
		border-bottom: 1px solid #E0E0E0;	
		margin-bottom: 30px;
	
	}
	
	#loginStart {
		font-size: 20px;
		font-weight: bold;	
	}
	
	#security {
		float: right;
		margin-bottom: 30px;
		
	}	
	
	#securityBtn {
		text-decoration: none;
		font-size: 13px;
		color : black;
	}
	
	#securityOnOff{
		color: blue;
		font-weight: bold;
		background: white;
		outline: none;
	}
	
	#loginBtn {
		border : none;
		border-radius: 40px;
		height: 50px;
		width : 400px;
		text-align: center;
		background-color: #1B52ED;
		color : white;
		outline: none;
		margin-bottom: 20px;
		font-size: 20px;
		margin-top : 20px;
		cursor: pointer;

	}

	#idText, #pwdText {
		border : 1px solid #E0E0E0;
		background-color : #F8F8F8;
		border-radius: 40px;
		height: 35px;
		width : 380px;
		padding: 5px 0px 5px 15px;	
		color: black;
		outline: none;
		font-size: 15px;
		
	}
	
	#idText{
		margin-bottom: 20px;
	}
	
	.deleteTextBtn {
		display:none;
		border:none;
		border-radius: 20px;
		color: white;
		width:22px;
		height: 22px;
		text-align: center;
      	margin-left: -60px;
		background-color: #E6E6E6;
		padding-top:1px;
		outline: none;
		
	}
	
	#loginFail {
		font-size: 12px;
		color : #B92D00;
	}
	
	#loginMaintain {
		margin-bottom: 20px;
	}
	#loginMaintainText {
		font-size: 15px;
	}
	
	#signUpDiv, #searchPwdDiv, #searchIdDiv {
		width: 33%;
		float: left;
		text-align: center;
		margin-bottom: 30px;
			
	}
	#searchIdDiv, #searchPwdDiv {
		border-right: 1px solid #E0E0E0;
	}

	#signUp, #searchPwd, #searchId {
		text-decoration: none;
		color: black;
		font-size: 15px;
			
	}
	
	#fbLoginBtn, #twLoginBtn, #kkLoginBtn {
		border-radius: 40px;
		height: 18px;
		width : 380px;
		background-color: white;
		outline: none;
		border: 1px solid #E0E0E0;
		padding : 13px 0px 19px 20px;
		margin-bottom: 10px;
		font-weight: bold;
		display: block;
		text-decoration: none;
		
	}
	
	#fbLoginBtn {
		color : #365097;
	}
	
	#twLoginBtn{
		color : #1CA0F3;
	}
	
	#kkLoginBtn{
		color : #F5C500;
	}
	
	.otherLogin {
		float: right;
		margin-right : 20px;
		color: #E0E0E0;
	}
	
</style>
	
<script type="text/javascript">
	
	/* security 버튼 */
	function securitySwitchFnc() {
		var onOffSwitch = document.getElementById('securityOnOff');
		if(onOffSwitch.innerHTML == 'ON') {
			onOffSwitch.style.color = 'black';
			onOffSwitch.innerHTML = 'OFF';
		} else {
			onOffSwitch.style.color = 'blue';
			onOffSwitch.innerHTML = 'ON';
		}
	}
	
	/* 밑줄 추가 */
	function addUnderLineFnc(hrefText) {
		hrefText.style.textDecoration = 'underline';
	}

	function removeUnderLineFnc(hrefText) {
		hrefText.style.textDecoration = 'none';
	}
	
	/* 아이디 비밀번호 입력창 */	
	function inputTextFocusOnFnc(inputText) {
		inputText.style.backgroundColor = '#FFFFFF';
		inputText.placeholder = '';
	}

	function inputTextFocusOutFnc(inputText) {
		inputText.style.backgroundColor = '#F8F8F8';

		if(inputText.id == 'idText') {
			inputText.placeholder = '아이디 입력';			
		} else {
			inputText.placeholder = '비밀번호 입력';			
		}
	}
	
	/* 글자가 쳐질때마다 X를 띄우기*/
	function inputTextDeleteButtonFnc(inputText) {
		if(inputText.value != '') {
			inputText.parentNode.children[1].style.display = 'inline-block';
		} else {
			inputText.parentNode.children[1].style.display = 'none';
		}		
	}
	
	function deleteTextFnc(inputText) {
		inputText.style.display = 'none';
		inputText.parentNode.children[0].value = '';
		inputText.parentNode.children[0].focus();
	}
	
	/* 로그인 유지 체크박스 */
	function loginMaintainFnc(loginMaintainCheckBox) {
		var onOffSwitch = document.getElementById('securityOnOff');
		
		if(loginMaintainCheckBox.checked) {
			onOffSwitch.style.color = 'black';
			onOffSwitch.innerHTML = 'OFF';
		} else{
			onOffSwitch.style.color = 'blue';
			onOffSwitch.innerHTML = 'ON';
		}
	}
	
	/* 다른 로그인 버튼에 마우스 올렸을 때 테두리 변경 */
	function otherLoginFocusOnFnc(otherLoginBtn) {

		if(otherLoginBtn.id == 'fbLoginBtn') {
			otherLoginBtn.style.borderColor = '#365097';
		}else if(otherLoginBtn.id == 'twLoginBtn') {
			otherLoginBtn.style.borderColor = '#1CA0F3';
		}else if(otherLoginBtn.id == 'kkLoginBtn') {
			otherLoginBtn.style.borderColor = '#F5C500';
		}
	}

	function otherLoginFocusOutFnc(otherLoginBtn) {
		otherLoginBtn.style.borderColor = '#E0E0E0';
	}
	
	
	/* 로그인 유효성 검사 */
	
	function loginBtnClickFnc() {
		var idTextBox = document.getElementById('idText');
		var pwdTextBox = document.getElementById('pwdText');
		var loginFailDiv = document.getElementById('loginFail');
		
		var userId = "<%=userId%>";
		var userPwd = "<%=userPwd%>";
		
		if(idTextBox.value == ''){
			alert('아이디를 입력하세요');
			idTextBox.focus();
			return false;
		} else if(pwdTextBox.value == '') {
			alert('비밀번호를 입력하세요');
			pwdTextBox.focus();
			return false;
		} else if(idTextBox.value != userId || pwdTextBox.value != userPwd) {
			loginFailDiv.innerHTML = '└ 아이디 혹은 비밀번호가 일치하지 않습니다.';
			idTextBox.value = '';
			pwdTextBox.value = '';
			return false;
		}
		
	}
	
	
</script>

</head>

<body>

<div>

	<!-- 헤더 -->
	<div id="header">
		<img id="logoImg" src="./img/logo.jpg">
	</div>
	
	<div id="main">
		<div id="loginContent">
			<!-- 로그인하기 -->
			<div id="loginTitle" class="clearfix">
				<span id="loginStart">
					로그인 하기 
				</span>
				<span id="security">
					<a id="securityBtn" href="#" onclick="securitySwitchFnc();"
					onmouseenter="addUnderLineFnc(this);"
					onmouseleave="removeUnderLineFnc(this);">
						IP보안 <span id="securityOnOff">ON</span>
					</a>
				</span>
			</div>
			
			<!-- 아이디 입력 ~ 로그인 상태 유지 -->
			<div>
				<form action="./boardList.jsp" onsubmit="return loginBtnClickFnc();">
					<div>
						<input id="idText" type="text" placeholder="아이디 입력" name="id"
							 onfocus='inputTextFocusOnFnc(this);'
							 onblur='inputTextFocusOutFnc(this);'
							 onkeyup='inputTextDeleteButtonFnc(this);'>
							 
						<input class="deleteTextBtn" type="button" value="X"
							onclick='deleteTextFnc(this);'>

					</div>
					<div>
						<input id="pwdText" type="password" placeholder="비밀번호 입력" name="pwd"
							 onfocus='inputTextFocusOnFnc(this);'
							 onblur='inputTextFocusOutFnc(this);'
							 onkeyup='inputTextDeleteButtonFnc(this);'>			
						<input class="deleteTextBtn" type="button" value="X"
							onclick='deleteTextFnc(this);'>
						
						<div id="loginFail">
						
						</div>
						
					</div>
					<div>
						<input id="loginBtn" type="submit" value="로그인">
					</div>
					<div>
						<input id="loginMaintain" type="checkbox"
							onclick="loginMaintainFnc(this);">
						<span id="loginMaintainText">
							로그인 상태 유지
						</span>
					</div>				
				</form>
			</div>
		
			<!-- 아이디 찾기 ~ 회원가입 -->
			<div class="clearfix">
				<div id="searchIdDiv" 
					onmouseenter="addUnderLineFnc(this);"
					onmouseleave="removeUnderLineFnc(this);">
					<a id="searchId" href="#">아이디 찾기</a>	
					
				</div>
				
				<div id="searchPwdDiv" 
					onmouseenter="addUnderLineFnc(this);"
					onmouseleave="removeUnderLineFnc(this);">
					<a id="searchPwd" href="#">비밀번호 찾기</a>
				</div>
				
				<div id="signUpDiv" 
					onmouseenter="addUnderLineFnc(this);"
					onmouseleave="removeUnderLineFnc(this);">
					<a id="signUp" href="#">회원가입</a>
				</div>
	
			</div>
		
			<!-- 소셜네트워크 로그인 버튼 -->
			<div>
				<div class="clearfix">
					<div>
						<a href="#" id="fbLoginBtn" 
							onmouseenter="otherLoginFocusOnFnc(this);"
							onmouseleave="otherLoginFocusOutFnc(this);">
							● facebook 로그인 
							<span class="otherLogin">
								>
							</span>
						</a>	
					</div>
					<div>
						<a href="#" id="twLoginBtn"
							onmouseenter="otherLoginFocusOnFnc(this);"
							onmouseleave="otherLoginFocusOutFnc(this);">
							● twitter 로그인
							<span class="otherLogin">
								>
							</span>
						</a>
					</div>
					<div>
						<a href="#" id="kkLoginBtn" 
							onmouseenter="otherLoginFocusOnFnc(this);"
							onmouseleave="otherLoginFocusOutFnc(this);">
							● kakao 로그인 
							<span class="otherLogin">
								>
							</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>	
</div>		
	
</body>
</html>