<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	#firstPage {
		color : red;
	}
	
	#firstPageLi {
		border-color: #000000;
	}
	
	#pageMove {
		margin : 20px 50px 0px 230px;
	}
	
	#writeBtn {
		float: right;
		cursor: pointer;
	}
	
</style>	

<script type="text/javascript">


// 	페이지 버튼에 onclick을 이벤트를 줌
	window.onload = function() {
		var pageLiList = document.getElementsByClassName('numberBtnList');
		for (var i = 1; i < pageLiList.length - 1; i++) {
			pageLiList[i].addEventListener('click', function() {clickPageNum(this);});
		}
		
		if(location.href != 'http://localhost:8090/TeamProjectSaCyHs/boardList.jsp?') {
			addboardFnc();
		}
	}
	
// 	페이지 버튼 클릭 시 보더와 칼라가 바뀌는 함수
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
	
	function nextPageFnc() {
		
		var pageAList = document.getElementsByClassName('numberBtn');
		var pageLiList = document.getElementsByClassName('numberBtnList');
		
		alert(pageAList[1].innerHTML)
		
		alert(pageAList[1].style.color);
		pageAList[1].style.color = 'red';
		alert(pageAList[1].style.color);
		
		for (var i = 1; i < pageLiList.length - 1; i++) {
			if(pageAList[i].style.color == 'red'){
				if(pageAList[i].innerHTML == '10'){
					return
				} else {
					pageAList[i].style.color = 'black';
					pageLiList[i].style.borderColor = '#F8F8F8';
	
					pageAList[i+1].style.color = 'red';
					pageLiList[i+1].style.borderColor = '#000000';
					return;
				}
			}
		}
	}

	function prePageFnc() {
		
		var pageAList = document.getElementsByClassName('numberBtn');
		var pageLiList = document.getElementsByClassName('numberBtnList');
		
		for (var i = 1; i < pageLiList.length - 1; i++) {
			if(pageAList[i].style.color == 'red'){
				if(pageAList[i].innerHTML == '1'){
					return
				} else {
					pageAList[i].style.color = 'black';
					pageLiList[i].style.borderColor = '#F8F8F8';
		
					pageAList[i-1].style.color = 'red';
					pageLiList[i-1].style.borderColor = '#000000';
					return;
				}
			}
		}
	}
	
	function addboardFnc() {
		
		var allUrl = decodeURIComponent(location.href);
		
		alert(allUrl);
		
		var splitUrl = allUrl.split('&');
		
		allUrl = location.href.substring(location.href.indexOf('?')+1);
		
		var userName = splitUrl[0].substring(splitUrl[0].indexOf('=')+1);
		var titleName = splitUrl[1].substring(splitUrl[1].indexOf('=')+1);		
		var emailName = splitUrl[2].substring(splitUrl[2].indexOf('=')+1);		
		var textName = splitUrl[3].substring(splitUrl[3].indexOf('=')+1);		
		var passwordName = splitUrl[4].substring(splitUrl[4].indexOf('=')+1);		
		
// 		alert(userName);
// 		alert(titleName);
// 		alert(emailName);
// 		alert(textName);
// 		alert(passwordName);
		
	
		
		var mainTable = document.getElementById('mainTable');
		
		var boardTbody = mainTable.children[0];
		
		alert(boardTbody.children[10]);
		
		boardTbody.removeChild(boardTbody.children[10]);
		
		var boardTr = boardTbody.children;
		
		var newTr = document.createElement('tr');
		newTr.setAttribute('class', 'tableContents');
		
		/* 제목 */
		
		var newTitleTd = document.createElement('td');
		newTitleTd.setAttribute('class', 'contentsTitle');
		
		var newATag = document.createElement('a');
		newATag.setAttribute('href', '#');
		newTitleTd.appendChild(newATag);
		
		newATag.innerHTML = titleName;
		
		newTr.appendChild(newTitleTd);
		
		/* 작성자 */
		
		var newWriterTd = document.createElement('td');
		newWriterTd.setAttribute('class', 'contentsWriter');
		
		newWriterTd.innerHTML = userName;
		
		newTr.appendChild(newWriterTd);
		
		
		/* 날짜 */
		
		var today = new Date();   
		var year = today.getFullYear(); // 년도
		var month = today.getMonth() + 1;  // 월
		var date = today.getDate();  // 날짜
		
		var todayDate = year + '-' + ((month<10)?'0' + month: month) + '-' + date;
		
		var newDateTd = document.createElement('td');
		newDateTd.setAttribute('class', 'contentsDate');
		
		newDateTd.innerHTML = todayDate;
		
		newTr.appendChild(newDateTd);
		
		/* 조회수 */
		
		var newViewsTd = document.createElement('td');
		newViewsTd.setAttribute('class', 'contentsViews');
		
		newViewsTd.innerHTML = '조회수';
		
		newTr.appendChild(newViewsTd);
		
		boardTbody.insertBefore(newTr, boardTbody.children[1]);
		
// 		<tr class="tableContents">
// 			<td class="contentsTitle"><a href="#">게시판 제목이 들어갑니다 어떤 제목이 들어갈까요</a></td>
// 			<td class="contentsWriter">벤쿠버지사</td>
// 			<td class="contentsDate">2008/02/14</td>
// 			<td class="contentsViews">1234</td>
// 		</tr>	
		
		
		
		
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
			<table id="mainTable">
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
		
		<div id="pageMove" class="clearfix">
			<ol id="numberMove">
				<li class="numberBtnList" onclick="prePageFnc();">
					<a id="beforeBtn" class="numberBtn" href="#">&lt; 이전</a>
				</li>
				<li class="numberBtnList" id="firstPageLi">
					<a class="numberBtn" id="firstPage" href="#">1</a>
				</li>
				<li class="numberBtnList">
					<a class="numberBtn" href="#">2</a>
				</li>
				<li class="numberBtnList">
					<a class="numberBtn" href="#">3</a>
				</li>
				<li class="numberBtnList">
					<a class="numberBtn" href="#">4</a>
				</li>
				<li class="numberBtnList">
					<a class="numberBtn" href="#">5</a>
				</li>
				<li class="numberBtnList">
					<a class="numberBtn" href="#">6</a>
				</li>
				<li class="numberBtnList">
					<a class="numberBtn" href="#">7</a>
				</li>
				<li class="numberBtnList">
					<a class="numberBtn" href="#">8</a>
				</li>
				<li class="numberBtnList">
					<a class="numberBtn" href="#">9</a>
				</li>
				<li class="numberBtnList">
					<a class="numberBtn" href="#">10</a>
				</li>
				<li class="numberBtnList" onclick="nextPageFnc();">
					<a id="nextBtn" class="numberBtn" href="#">다음 &gt;</a>
				</li>
			</ol>
		
			<input id="writeBtn" type="button" value="글쓰기">
		</div>
		
	</div>
	
</div>
</body>
</html>
