<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MUZ - 회원가입</title>
<link rel="shortcut icon" href="./img/favicon.ico">
<style type="text/css">
	/* common */
	body {
		background-color: #f1f1f1;
	}
	#wrap {
		padding-bottom: 50px;
	}
	* {
		margin: 0px;
		padding: 0px;
	}
	.clearfix:after {
		display: block;
		content: '';
		clear: both;
	}
	li {
		list-style-type: none;
	}
	
	/* header */
	#header {
		height: 100px;
		background: -webkit-linear-gradient(left,#3faeeb,#3967d0 46%,#3846d0);
		padding-top: 35px;
		box-sizing: border-box;
		text-align: center;
	}
	#logoImg {
		width: 222px;
	}
	
	/* container */
	#container {
		width: 700px;
		margin: 40px auto 0px;
		background-color: #fff;
		box-shadow: 0px 3px 10px rgba(0,0,0,0.3);
	}
	
	/* joinForm */
	#pageTitle {
		width: 610px;
		margin: 0px auto;
		font-size: 18px;
		padding: 30px 30px 15px;
		box-sizing: border-box;
		border-bottom: 1px solid #f1f1f1;
	}
	#joinForm p {
		display: inline-block;
		font-size: 16px;
		margin: 10px 0px;
	}
	.formTagSectors {
		position: relative;
		width: 610px;
		margin: 0px auto 8px;
		padding: 0px 30px;
		box-sizing: border-box;
	}
	.inputTextWrap:after {
		display: none;
		content: '';
		position: absolute;
		right: 15px;
		top: 3px;
		width: 30px;
		height: 30px;
		background: url('./img/icon_alert2.png') no-repeat center;
		background-size: 30px;
	}
	.inputTextWrap {
		position: relative;
	}
	.required.alert1 .inputTextWrap:after, .required.alert2 .inputTextWrap:after {
		display: block;
	}
	.required.checked .inputTextWrap:after {
		display: block;
		background-image:url('./img/icon_chk.png');
		background-size: 28px;
	}
	.required.checked .inputText {
		background-color: #fff;
	}
	.required .label {
		position: relative;
	}
	.required .label:after {
		display: inline-block;
		content: '';
		position: absolute;
		right: -7px;
		top: 5px;
		width: 3px;
		height: 3px;
		background-color: #b92d00;
	}
	.formTags {
		width: 100%;
		height: 38px;
		border-radius: 20px;
		border: 1px solid #f1f1f1;
		padding: 0px 20px;
		box-sizing: border-box;
		font-size: 16px;
		background-color: #f8f8f8;
	}
	.inputText::placeholder {
		color: #bfbfbf;
	}
	.inputText::-ms-input-placeholder {
		color: #bfbfbf;
	}
	.inputText:-ms-input-placeholder {
		color: #bfbfbf;
	}
	.inputText:focus {
		outline: none;
		background-color: #fff;
	}
	.required.alert1 .inputText, .required.alert2 .inputText {
		border-color: #b92d00;
	}
	.required .alertMsg {
		display: none;
		position: relative;
		padding: 4px 0px 0px 10px;
		font-size: 12px;
		color: #b92d00;
	}
	.required.alert1 .alertMsg1, .required.alert2 .alertMsg2 {
		display: block;
	}
	.required .alertMsg:before {
		display: none;
		content: '';
		position: absolute;
		left: 0px;
		top: 8px;
		width: 5px;
		height: 5px;
		border-left: 1px solid #b92d00;
		border-bottom: 1px solid #b92d00;
	}
	.required.alert1 .alertMsg1:before, .required.alert2 .alertMsg2:before {
		display: block;
	}
	/* 생년월일 */
	.selectWrap {
		font-size: 0px;
	}
	.selectWrap select {
		display: block;
		float: left;
		background: url('./img/select_arr.png') no-repeat 90% 50%;
		background-color: #f8f8f8;
		background-size: 15px;
		-moz-appearance:none; /* Firefox */
	    -webkit-appearance:none; /* Safari and Chrome */
	    appearance:none;
		color: #bfbfbf;
		outline: none;
	}
	.selectWrap select::-ms-expand {
		display: none;
	}
	#selectYear {
		width: 40.6%;
	}
	.selectMD {
		width: 27.4%;
		margin-left: 2.3%
	}
	.selectWrap option {
		color: #000;
	}
	/* 성별 */
	.genderRadio {
		float: left;
		margin-right: 10px;
	}
	.radioWrap input[type="radio"] {
		position: absolute;
		width: 1px;
		height: 1px;
		z-index: -1px;
		opacity: 0;
	}
	.radioWrap label {
		display: block;
		position: relative;
		padding-left: 25px;
	}
	.radioWrap label:before {
		display: block;
		content: '';
		position: absolute;
		left: 0px;
		top: 2px;
		width: 19px;
		height: 19px;
		background: url('./img/radio_off.png') no-repeat center
	}
	.radioWrap input:checked ~ label:before {
		background-image: url('./img/radio_on.png');
	}
	#authenSector {
		margin-top: 10px;
		padding: 0px;
	}
	.authLabelArea {
		border-bottom: 1px solid #f1f1f1;
		padding: 15px 30px;
		box-sizing: border-box;
	}
	.authRadio label{
		font-size: 16px;
		font-weight: bold;
		cursor: pointer;
	}
	.authRadio i {
		font-style: normal;
		color: #1b52ed;
	}
	.authInputWrap {
		padding: 15px 30px;
		border-bottom: 1px solid #f1f1f1;
	}
	.authInputArea {
		position: relative;
		width: 505px;
		height: 38px;
		border-radius: 20px;
		border: 1px solid #f1f1f1;
		box-sizing: border-box;
		font-size: 16px;
		background-color: #f8f8f8;
	}
	.authInputArea:before {
		display: block;
		content: '';
		position: absolute;
		left: 95px;
		top: 10px;
		width: 1px;
		height: 15px;
		background: #ddd;
	}
	.authInputArea select {
		width: 90px;
		height:100%;
		border: 0;
		background: url('./img/select_arr.png') no-repeat 95% 50%;
		background-size: 15px;
		-moz-appearance:none; /* Firefox */
	    -webkit-appearance:none; /* Safari and Chrome */
	    appearance:none;
		padding-left: 20px;
		box-sizing: border-box;
		font-size: 16px;
		color: #bfbfbf;
	}
	.authInputArea select::-ms-expand {
		display: none;
	}
	.authInputArea input {
		width: 360px;
		height: 100%;
		padding: 0px 20px;
		box-sizing: border-box;
		border: 0;
		background: none;
		font-size: 16px;
	}
	.authInputArea input::placeholder {
		color: #bfbfbf;
	}
	.authInputArea input:-ms-input-placeholder {
		color: #bfbfbf;
	}
	.authInputArea input::-ms-input-placeholder {
		color: #bfbfbf;
	}
	#authBtn {
		position: absolute;
		right: -50px;
		top: 0px;
		width: 40px;
		height: 40px;
		border: 1px solid #e0e0e0;
		border-radius: 50%;
		box-sizing: border-box;
		background: none;
		font-size: 14px;
		cursor: pointer
	}
	.required.alert .authInputArea {
		border-color: #b92d00;
	}
	
	#submitBtn {
		display: block;
		width: 180px;
		height: 45px;
		margin: 30px auto 40px;
		border-radius: 24px;
		background-color: #1b52ed;
		border: 0;
		font-size: 18px;
		color: #fff;
		cursor: pointer;
	}
	
	/* footer */
	footer {
		border-top: 1px solid #f1f1f1;
		padding:20px 0px 50px;
	}
	#footerRights {
		font-size: 0;
		text-align: center;
	}
	#footerRights li {
		display: inline-block;
		position: relative;
		margin: 0 8px;
	}
	#footerRights li:after {
		display: block;
		content: '';
		position: absolute;
		right: -8px;
		top: 3px;
		width: 1px;
		height: 15px;
		background: #ddd;
	}
	#footerRights li:last-child:after {
		display: none;
	}
	#footerRights a{
		font-size: 14px;
		color: #999;
		text-decoration: none;
	}
	#footerRights li:nth-child(2) a{
		font-weight: bold;
	}
</style>

<script type="text/javascript">
	/* 필수 입력 확인 */
	function checkRequiredFnc() {
		var idNm = document.getElementById('idNm');
		var pwd = document.getElementById('pwd');
		var paswd =  /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
		var pwdChk = document.getElementById('pwdChk');
		var nm = document.getElementById('nm');
		var year = document.getElementById('selectYear');
		var month = document.getElementById('mnth');
		var day = document.getElementById('day');
		var email = document.getElementById('emailInput');
		var gndMale = document.getElementById('male');
		var gndFemale = document.getElementById('female');
		
		if(idNm.value.length == 0) {
			alert('아이디를 입력해 주시기 바랍니다.');
			idNm.focus();
			return false;
		} else if(idNm.value.length > 0 && idNm.value.length < 6){
			alert('6~12자의 영문 소문자와 숫자를 사용해주세요.');
			idNm.focus();
			return false;
		}
		
		if(pwd.value.length == 0) {
			alert('비밀번호를 입력해주십시오.');
			pwd.focus();
			return false;
		} else if(!(pwd.value.match(paswd))){
			alert('8자 이상의 대·소문자, 숫자, 특수문자의 조합을 사용하세요.');
			pwd.focus();
			return false;
		}
		
		if(pwdChk.value.length == 0) {
			alert('비밀번호를 한번 더 입력해주십시오.');
			pwdChk.focus();
			return false;
		} else if(pwdChk.value != pwd.value){
			alert('비밀번호와 동일하게 입력하세요.');
			pwdChk.focus();
			return false;
		}
		
		if(nm.value.length == 0) {
			alert('이름을 입력해 주시기 바랍니다.');
			nm.focus();
			return false;
		}
		
		if(year.value == ''){
			alert('생년월일을 입력해주세요');
			year.parentNode.parentNode.classList.add('alert1');
			year.focus();
			return false;
		}
		if(mnth.value == ''){
			alert('생년월일을 입력해주세요');
			mnth.parentNode.parentNode.classList.add('alert1');
			year.focus();
			return false;
		}
		if(day.value == ''){
			alert('생년월일을 입력해주세요');
			day.parentNode.parentNode.classList.add('alert1');
			year.focus();
			return false;
		}
		
		if(gndMale.checked == false && gndFemale.checked == false){
			alert('성별을 선택해 주시기 바랍니다.');
			gndMale.focus();
			gndMale.parentNode.parentNode.classList.add('alert1');
			return false;
		}
		
		if(email.value.length == 0){
			alert('이메일을 입력해 주시기 바랍니다.');
			email.focus();
			return false;
		} else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value))){
			alert('이메일 형식이 잘못되었습니다');
			email.focus();
			return false;
		}
		
		alert('회원가입이 완료 되었습니다.');
	}	
	
	/* 아이디 확인 */
	function checkIdFnc(str) {
		if(str.value.length == 0) {
			str.parentNode.parentNode.classList.add('alert1');
			str.parentNode.parentNode.classList.remove('checked');
			str.parentNode.parentNode.classList.remove('alert2');
			return false;
		} else if(str.value.length > 0 && str.value.length < 6){
			str.parentNode.parentNode.classList.add('alert2');
			str.parentNode.parentNode.classList.remove('checked');
			str.parentNode.parentNode.classList.remove('alert1');
			return false;
		} else{
			str.parentNode.parentNode.classList.add('checked');
			str.parentNode.parentNode.classList.remove('alert1');
			str.parentNode.parentNode.classList.remove('alert2');
			return true;
		}
	}
	
	/* 비밀번호 확인 */
	function checkPwdFnc(str){
		var paswd =  /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/;
		if(str.value.match(paswd)) { 
			str.parentNode.parentNode.classList.add('checked');
			str.parentNode.parentNode.classList.remove('alert1');
			str.parentNode.parentNode.classList.remove('alert2');
			return true;
		} else if(str.value.length == 0){ 
			str.parentNode.parentNode.classList.add('alert1');
			str.parentNode.parentNode.classList.remove('checked');
			str.parentNode.parentNode.classList.remove('alert2');
			return false;
		} else{
			str.parentNode.parentNode.classList.add('alert2');
			str.parentNode.parentNode.classList.remove('checked');
			str.parentNode.parentNode.classList.remove('alert1');
			return false;
		}
	}
	
	/* 비밀번호 재확인 */
	function checkSamePwdFnc(str) {
		var pwd = document.getElementById('pwd');
		
		if(str.value.length == 0) {
			str.parentNode.parentNode.classList.add('alert1');
			str.parentNode.parentNode.classList.remove('checked');
			str.parentNode.parentNode.classList.remove('alert2');
			return false;
		} else if(str.value == pwd.value){
			str.parentNode.parentNode.classList.add('checked');
			str.parentNode.parentNode.classList.remove('alert1');
			str.parentNode.parentNode.classList.remove('alert2');
			return true;
		} else{
			str.parentNode.parentNode.classList.add('alert2');
			str.parentNode.parentNode.classList.remove('alert1');
			str.parentNode.parentNode.classList.remove('checked');
			return false;
		}
	}
	
	/* 이름 확인 */
	function checkNameFnc(str) {
		if(str.value.length == 0) {
			str.parentNode.parentNode.classList.add('alert1');
			str.parentNode.parentNode.classList.remove('checked');
			return false;
		} else{
			str.parentNode.parentNode.classList.add('checked');
			str.parentNode.parentNode.classList.remove('alert1');
			return true;
		}
	}
	
	/* 생년원일 확인 */
	function checkDOBFnc(str) {
		var year = document.getElementById('selectYear');
		var month = document.getElementById('mnth');
		var day = document.getElementById('day');
		
		if(str.value == '') {
			str.parentNode.parentNode.classList.add('alert1');
			return false;
		}
		if(year.value != '' && mnth.value != '' && day.value == ''){
			day.parentNode.parentNode.classList.remove('alert1');
		}
	}
	/* 미성년자 확인 */
	function checkAdultFnc(year) {
		if(year.value > 2006) {
			alert('만 14세 미만으로 보호자 인증이 필요합니다.');
			return false;
		}
	}
	
	/* 휴대폰 인증하기 */
	function phoneAuthFnc() {
		var phoneInputBox = document.getElementById('phoneAuthInput');
		
		phoneInputBox.style.display = 'block';
	}
	
	/* 이메일 확인 */
	function checkEmailFnc(str) {
		if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(str.value)){
			str.parentNode.parentNode.classList.add('checked');
			str.parentNode.parentNode.classList.remove('alert1');
			str.parentNode.parentNode.classList.remove('alert2');
  			return true;
		} else if(str.value.length == 0){
			str.parentNode.parentNode.classList.add('alert1');
			str.parentNode.parentNode.classList.remove('checked');
			str.parentNode.parentNode.classList.remove('alert2');
			return false;
		} else{
			str.parentNode.parentNode.classList.add('alert2');
			str.parentNode.parentNode.classList.remove('checked');
			str.parentNode.parentNode.classList.remove('alert1');
			return false;
		}
	}
	
	/* 이메일 인증하기 */
	function emailAuthFnc() {
		var emailInput = document.getElementById('emailInput');
		emailInput.focus();
		
		emailInput.parentNode.parentNode.classList.add('alert1');
		emailInput.parentNode.parentNode.classList.remove('checked');
		emailInput.parentNode.parentNode.classList.remove('alert2');
		return false;
	}
	
	function changeBgSelectFnc() {
		var selectYr = document.getElementById('selectYear');
		var selectMth = document.getElementById('mnth');
		var selectDy = document.getElementById('day');
		
		if(selectYr.value.length > 0) {
			selectYr.setAttribute
				('style', 'background-color: #fff; border-color: #e0e0e0; color: #000;');
		}
		if(selectMth.value.length > 0) {
			selectMth.setAttribute
				('style', 'background-color: #fff; border-color: #e0e0e0; color: #000;');
		}
		if(selectDy.value.length > 0) {
			selectDy.setAttribute
				('style', 'background-color: #fff; border-color: #e0e0e0; color: #000;');
		}
	}
	
	window.onload = function(){
		var selectYr = document.getElementById('selectYear');
		var selectMth = document.getElementById('mnth');
		var selectDy = document.getElementById('day');
		
		selectYr.addEventListener('change', changeBgSelectFnc);
		selectMth.addEventListener('change', changeBgSelectFnc);
		selectDy.addEventListener('change', changeBgSelectFnc);
	}
</script>
</head>

<body>

	<div id='wrap'>
		<!-- header start -->
		<div id="header">
			<a href="./index.jsp"><img id="logoImg" src="./img/logo_muz2.png"></a>
		</div>
		<!-- //header end -->
		
		<div id='container'>
			<!-- joinForm start -->
			<div id='joinForm'>
				<form action="./index.jsp" onsubmit="return checkRequiredFnc();">
					<h2 id='pageTitle'>가입 정보 입력하기</h2>
					<!-- 아이디 start -->
					<div class='formTagSectors required'>
						<p class='label'>아이디</p>
						<div class='inputTextWrap'>
							<input type="text" id='idNm' class='inputText formTags' 
								placeholder="6-12자의 영문 소문자와 숫자" name="id"
								onblur="checkIdFnc(this);" maxlength='12'>
						</div>
						<span class='alertMsg alertMsg1'>아이디를 입력해 주시기 바랍니다.</span>
						<span class='alertMsg alertMsg2'>6~12자의 영문 소문자와 숫자를 사용해주세요.</span>
					</div>
					<!-- //아이디 end -->
					<!-- 비밀번호 start -->
					<div class='formTagSectors required'>
						<p class='label'>비밀번호</p>
						<div class='inputTextWrap'>
							<input type="password" id='pwd' class='inputText formTags' 
								placeholder="8자 이상, 대/소문자, 숫자, 특수문자" name="password" 
								onblur="checkPwdFnc(this);">
						</div>
						<span class='alertMsg alertMsg1'>비밀번호를 입력해주십시오.</span>
						<span class='alertMsg alertMsg2'>8자 이상의 대&middot;소문자, 숫자, 특수문자의 조합을 사용하세요.</span>
					</div>
					<!-- //비밀번호 end -->
					<!-- 비밀번호  재확인 start -->
					<div class='formTagSectors required'>
						<p class='label'>비밀번호 재확인</p>
						<div class='inputTextWrap'>
							<input type="password" id='pwdChk' class='inputText formTags' 
								placeholder="비밀번호를 한번 더 입력해주세요." name="passwordCheck" 
								onblur="checkSamePwdFnc(this);">
						</div>
						<span class='alertMsg alertMsg1'>비밀번호를 한번 더 입력해주십시오.</span>
						<span class='alertMsg alertMsg2'>비밀번호와 동일하게 입력하세요.</span>
					</div>
					<!-- //비밀번호 재확인 end -->
					<!-- 이름 start -->
					<div class='formTagSectors required'>
						<p class='label'>이름</p>
						<div class='inputTextWrap'>
							<input type="text" id='nm' class='inputText formTags' 
								placeholder="이름을 적어주세요." name="nameOfUser" 
								onblur="checkNameFnc(this);">
						</div>
						<span class='alertMsg alertMsg1'>이름을 입력해 주시기 바랍니다.</span>
					</div>
					<!-- //이름 end -->
					<!-- 생년월일 start -->
					<div class='formTagSectors required'>
						<p class='label'>생년월일</p>
						<div class='selectWrap clearfix'>
							<select id='selectYear' class='formTags' 
								onchange="checkAdultFnc(this);" name="yearOfBirth">
								<option value="">년</option>
								<option value="2020">2020</option>
								<option value="2019">2019</option>
								<option value="2018">2018</option>
								<option value="2017">2017</option>
								<option value="2016">2016</option>
								<option value="2015">2015</option>
								<option value="2014">2014</option>
								<option value="2013">2013</option>
								<option value="2012">2012</option>
								<option value="2011">2011</option>
								<option value="2010">2010</option>
								<option value="2009">2009</option>
								<option value="2008">2008</option>
								<option value="2007">2007</option>
								<option value="2006">2006</option>
								<option value="2005">2005</option>
								<option value="2004">2004</option>
								<option value="2003">2003</option>
								<option value="2002">2002</option>
								<option value="2001">2001</option>
								<option value="2000">2000</option>
								<option value="1999">1999</option>
								<option value="1998">1998</option>
								<option value="1997">1997</option>
								<option value="1996">1996</option>
								<option value="1995">1995</option>
								<option value="1994">1994</option>
								<option value="1993">1993</option>
								<option value="1992">1992</option>
								<option value="1991">1991</option>
								<option value="1990">1990</option>
								<option value="1989">1989</option>
								<option value="1988">1988</option>
								<option value="1987">1987</option>
								<option value="1986">1986</option>
								<option value="1985">1985</option>
								<option value="1984">1984</option>
								<option value="1983">1983</option>
								<option value="1982">1982</option>
								<option value="1981">1981</option>
								<option value="1980">1980</option>
							</select>
							<select id='mnth' class='formTags selectMD' 
								onblur="checkDOBFnc(this);" name="monthOfBirth">
								<option value="">월</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
							<select id='day' class='formTags selectMD' 
								onblur="checkDOBFnc(this);" name="dayOfBirth">
								<option value="">일</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select>
						</div>
						<span class='alertMsg alertMsg1'>생년월일을 입력해주세요</span>
					</div>
					<!-- //생년월일 end -->
					<!-- 성별 start -->
					<div class='formTagSectors'>
						<p class='label'>성별</p>
						<div class='radioWrap required clearfix'>
							<div class='genderRadio'>
								<input type="radio" id='male' class='gnd' name="gender">
								<label for='male' class='gender'>남자</label>
							</div>
							<div class='genderRadio'>
								<input type="radio" id='female' class='gnd' name="gender">
								<label for='female' class='gender'>여자</label>
							</div>
							<span class='alertMsg alertMsg1' style="clear: both;">성별을 선택해주시기 바랍니다.</span>
						</div>
					</div>
					<!-- //성별 end -->
					<!-- 이메일 start -->
					<div class='formTagSectors required'>
						<p class='label'>이메일</p>
						<div class='inputTextWrap'>
							<input type="text" id='emailInput' class='inputText formTags' 
								placeholder="이메일 주소를 입력하세요" name="email" 
								onblur="checkEmailFnc(this);">
						</div>
						<span class='alertMsg alertMsg1'>이메일을 입력해 주시기 바랍니다.</span>
						<span class='alertMsg alertMsg2'>이메일 형식이 잘못되었습니다</span>
					</div>
					<!-- //이메일 end -->
					<!-- 인증하기 start -->
					<div id='authenSector' class='formTagSectors required'>
						<ul class='radioWrap clearfix'>
							<li class='authRadio'>
								<div class='authLabelArea'>
									<input type="radio" id='authPhone' name="authentication"
									onclick="phoneAuthFnc();">
									<label for='authPhone' class='authentication'>
										<i>휴대전화</i> 번호로 인증하기
									</label>
								</div>
								<div id='phoneAuthInput' class='authInputWrap' style="display: none;">
									<div class='authInputArea'>
										<select>
											<option value="+82">+82</option>
										</select>
										<input type="text" placeholder="휴대전화번호">
										<button id='authBtn' type="button">인증</button>
									</div>
									<span class='alertMsg'>휴대전화번호 입력 후 인증 버튼을 눌러주세요.</span>
								</div>
							</li>
							<li class='authRadio'>
								<div class='authLabelArea'>
									<input type="radio" id='authEmail' name="authentication"
										onclick="emailAuthFnc();">
									<label for='authEmail' class='authentication'><i>이메일</i>로 인증하기</label>
								</div>
							</li>
						</ul>
					</div>
					<!-- //인증하기 end -->
					<input type="submit" id='submitBtn' value="가입하기">
				</form>
			</div>
			<!-- //joinForm end -->
			<footer>
				<ul id='footerRights'>
					<li><a href="#none">이용약관</a></li>
					<li><a href="#none">개인정보처리방침</a></li>
					<li><a href="#none">&copy;ZUMinternet</a></li>
				</ul>
			</footer>
		</div>
	</div>

</body>
</html>