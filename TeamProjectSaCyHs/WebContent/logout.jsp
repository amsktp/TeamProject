<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그아웃</title>
<style type="text/css">
	div {
/* 		width: 1024px; */
		text-align: center;
		margin: auto;
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
	}
	#logoutContent {
		width: 1024px;
		margin-top:50px;
		height: 200px;
		line-height: 200px;
		color: #FFFFFF;
		background: -webkit-linear-gradient(left,#3faeeb,#3967d0 46%,#3846d0);
		font-size: 30px;
	}
</style>	
<script type="text/javascript">
	
</script>

</head>

<body>
	<div id="header">
		<a href="./boardList.jsp"><img id="logoImg" src="./img/logo_muz2.png"></a>
	</div>
	
	<div id='logoutContent'>
		줌을 시작페이지로  ∣ <span id='userName'>박상아님</span>
		<a href="./index.jsp" style="text-decoration: none; color: #FFFFFF;">로그아웃</a>
	</div>
</body>
</html>