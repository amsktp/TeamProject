<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

<style type="text/css">
	
	table {
		border-top: 2px solid #B0B0B0;
		border-bottom: 2px solid #A0A0A0;
		border-collapse: collapse;
	}
	
	th {
		border-bottom: 2px solid #B0B0B0;
	}
	
	td {
		border-top : 1px solid #E0E0E0;
	}
	
	a {
		text-decoration: none;
		color : black;
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
	
	#mainContents {
		margin : 0px auto;
		width : 900px;
	}

	#tableHead {
		height: 40px;
		background-color: #F1F1F3; 
	
	}
	
	.tableContents {
		height: 40px;
	}
	
	.contentsTitle {
		padding : 2px 20px;
		width: 500px;
	
	}
	
	.contentsWriter {
		text-align : center;
		width: 150px;
	}
	
	.contentsDate {
		text-align: center;
		width: 120px;
	}
	
	.contentImg {
		width: 17px;
		height: 17px;
		vertical-align:middle;
	}
	
	#newContent {
		 color : red;
		 font-weight: bold;
	}
	
	.contentsViews{
		text-align: center;
		width: 120px;
	}
	
	.beforeNextBtn {
		border: 1px solid #BDBDBD;
		background-color: white;
		height: 25px;
		font-weight: bold;
		float: left;
	}
	#numberMove {
		list-style-type: none;
	}
	
	.numberBtnList{
		border: 1px solid #F8F8F8;
		background-color: white;
		font-weight: bold;
		float: left;
		margin: 2px;
	}
	
	.numberBtn{
		color:black;
		padding: 0px 5px;
		font-size: 15px;
	}
	
	#nextBtn, #beforeBtn{
		border: 1px solid #C0C0C0;
		padding-top : 2px;
		padding-bottom : 3px;
	
	}
	
	#replyContent {
		margin-left: 15px;
		vertical-align: middle;
		width: 20px;
		height: 20px;
	}

	#pageMove {
		margin : 20px 230px 0px 230px;
	}
	
</style>	

<script type="text/javascript">
	
	window.onload = function() {
		var pageLiList = document.getElementsByClassName('numberBtnList');
		
		for (var i = 1; i < pageLiList.length - 1; i++) {
			pageLiList[i].addEventListener('click', function() {clickPageNum(this);});
		}
		
	}
	
	function clickPageNum(thisPage) {
		var pageAList = document.getElementsByClassName('numberBtn');
		var pageLiList = document.getElementsByClassName('numberBtnList');
		
		for (var i = 1; i < pageLiList.length - 1; i++) {
			pageLiList[i].style.borderColor = '#F8F8F8'
			pageAList[i].style.color = 'black';
		}
		
		thisPage.style.borderColor = '#000000';
		thisPage.children[0].style.color = 'red';
	}
	
</script>

</head>

<body>

<!-- 페이지 전체 -->
<div>
	
	<!-- 헤더 -->
	<div id="header">
		<img id="logoImg" src="./img/logo.jpg">
	</div>

	<!-- 메인 -->
	<div id="mainContents">
		<div>
			<h1>감자 Talk</h1>
		</div>	
		
		<!-- 본문 테이블 -->
		<div id="boardList">
			<table>
				<tr id="tableHead">
					<th>제목</th>
					<th>글쓴이</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
				<tr class="tableContents">
					<td class="contentsTitle">
						<a href="#">게시판 제목이 들어갑니다 어떤 제목이 들어갈까요</a>
						<img class="contentImg" src="./img/image.jpg">
						<span id="newContent">
						[5]
						</span>
						<img class="contentImg" src="./img/new.jpg">	
					</td>
					<td class="contentsWriter">벤쿠버지사</td>
					<td class="contentsDate">2008/02/14</td>
					<td class="contentsViews">1234</td>
				</tr>			
				<tr class="tableContents">
					<td class="contentsTitle"><a href="#">게시판 제목이 들어갑니다 어떤 제목이 들어갈까요</a></td>
					<td class="contentsWriter">벤쿠버지사</td>
					<td class="contentsDate">2008/02/14</td>
					<td class="contentsViews">1234</td>
				</tr>				
				<tr class="tableContents">
					<td class="contentsTitle">
						<img id="replyContent" src="./img/reply.jpg">
						<a href="#">블로그 개편 답글</a>
					</td>
					<td class="contentsWriter">벤쿠버지사</td>
					<td class="contentsDate">2008/02/14</td>
					<td class="contentsViews">1234</td>
				</tr>				
				<tr class="tableContents">
					<td class="contentsTitle"><a href="#">게시판 제목이 들어갑니다 어떤 제목이 들어갈까요</a></td>
					<td class="contentsWriter">벤쿠버지사</td>
					<td class="contentsDate">2008/02/14</td>
					<td class="contentsViews">1234</td>
				</tr>				
				<tr class="tableContents">
					<td class="contentsTitle"><a href="#">게시판 제목이 들어갑니다 어떤 제목이 들어갈까요</a></td>
					<td class="contentsWriter">벤쿠버지사</td>
					<td class="contentsDate">2008/02/14</td>
					<td class="contentsViews">1234</td>
				</tr>				
				<tr class="tableContents">
					<td class="contentsTitle"><a href="#">게시판 제목이 들어갑니다 어떤 제목이 들어갈까요</a></td>
					<td class="contentsWriter">벤쿠버지사</td>
					<td class="contentsDate">2008/02/14</td>
					<td class="contentsViews">1234</td>
				</tr>				
				<tr class="tableContents">
					<td class="contentsTitle"><a href="#">게시판 제목이 들어갑니다 어떤 제목이 들어갈까요</a></td>
					<td class="contentsWriter">벤쿠버지사</td>
					<td class="contentsDate">2008/02/14</td>
					<td class="contentsViews">1234</td>
				</tr>				
				<tr class="tableContents">
					<td class="contentsTitle"><a href="#">게시판 제목이 들어갑니다 어떤 제목이 들어갈까요</a></td>
					<td class="contentsWriter">벤쿠버지사</td>
					<td class="contentsDate">2008/02/14</td>
					<td class="contentsViews">1234</td>
				</tr>				
				<tr class="tableContents">
					<td class="contentsTitle"><a href="#">게시판 제목이 들어갑니다 어떤 제목이 들어갈까요</a></td>
					<td class="contentsWriter">벤쿠버지사</td>
					<td class="contentsDate">2008/02/14</td>
					<td class="contentsViews">1234</td>
				</tr>				
				<tr class="tableContents">
					<td class="contentsTitle"><a href="#">게시판 제목이 들어갑니다 어떤 제목이 들어갈까요</a></td>
					<td class="contentsWriter">벤쿠버지사</td>
					<td class="contentsDate">2008/02/14</td>
					<td class="contentsViews">1234</td>
				</tr>				
			</table>
		</div>
			
		<!-- 페이지 넘기기 -->
		
		<div id="pageMove">
			<ol id="numberMove" >
				<li class="numberBtnList"><a id="beforeBtn" class="numberBtn" href="#">&lt; 이전</a></li>
				<li class="numberBtnList"><a class="numberBtn" href="#">1</a></li>
				<li class="numberBtnList"><a class="numberBtn" href="#">2</a></li>
				<li class="numberBtnList"><a class="numberBtn" href="#">3</a></li>
				<li class="numberBtnList"><a class="numberBtn" href="#">4</a></li>
				<li class="numberBtnList"><a class="numberBtn" href="#">5</a></li>
				<li class="numberBtnList"><a class="numberBtn" href="#">6</a></li>
				<li class="numberBtnList"><a class="numberBtn" href="#">7</a></li>
				<li class="numberBtnList"><a class="numberBtn" href="#">8</a></li>
				<li class="numberBtnList"><a class="numberBtn" href="#">9</a></li>
				<li class="numberBtnList"><a class="numberBtn" href="#">10</a></li>
				<li class="numberBtnList"><a id="nextBtn" class="numberBtn" href="#">다음 &gt;</a></li>
			</ol>
		</div>
	</div>
	
</div>
</body>
</html>
