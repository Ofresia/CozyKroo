<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ouf9d01mmk"></script>
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width" />
<title>우리동네 산부인과</title>
<!-- CSS Files-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/style.css">

<!-- FONT Files-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/skins/blue.css">
<!-- skin color -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/responsive.css">
<!-- IE Fix for HTML5 Tags -->
<!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>
<style>
h1, h2, h3, h4, a, p, li, div, input {
	font-family:'Gowun Dodum', sans-serif !important;
}

#search {
	width: 50%;
	height: 400px;
	display: inline-block;
}

.dataBox {
	overflow: auto;
	border: 1 solid #62d4e5;
	height: 300px;
}

.review {
	border-bottom: 1 solid #62d4e5;
	padding: 15px 30px;
}

.reviewBox {
	height: 200px;
	background-color: lightblue;
}

.textarea {
	resize: none;
	width: 90%;
	height: 100px;
	float: left;
	margin: 0;
}

#signUp {
	width: 9%;
	height: 100px;
	background: #62d4e5;
	font-weight: bold;
	float: right;
	padding: 0;
	font-size: 30px;
}

.reviewDate {
	display: inline-block;
	height: 30px;
	font-size: 15px;
	margin: 0;
}

.reviewContent {
	height: 110px;
}

.reviewInfo {
	font-size: 15px;
}

.reviewList {
	border-bottom: 1px solid lightgray;
}

.reviewAlter {
	height: 38px;
}

.paging {
	height: 50px;
	margin-left: 320px;
}
</style>
<body>
	<!-- HEADER-->
	<jsp:include page="../header.jsp" />

	<!-- article -->

	<div class="row">
		<div id="wrapper">

			<!-- Main -->
			<div id="main">
				<div class="inner">
					<!-- Content -->
					<section>
						<header class="main">
							<h1 style="margin-top: 20px;">우리동네 산부인과</h1>
						</header>
						<hr class="major" />
						<div id="search">
							<input type="text" name="centerName" placeholder="Search"
								onkeyup="enterKey()" style="height: 40px;" /> <br>
							<div class="dataBox">
								<div class="data">
									<c:choose>
										<c:when test="${dataList.length == 0}">
														검색된 결과가 없습니다.
														<c:set var="chech" value="false" />
										</c:when>
										<c:when test="${dataList == null}">검색해주세요.</c:when>
										<c:when test="${dataList != null }">
											<c:if test="${dataList.length > 5}">
												<c:set var="chech" value="true" />
											</c:if>
										</c:when>
									</c:choose>
								</div>
							</div>
						</div>
						<div style="height: 400px; width: 45%; float: right;">
							<div id="map" style="width: 100%; height: 400px;"></div>
						</div>
						<br>
						<br>
						<div class="reviewBox">
							<div class="review">
								<div class="reviewInfo">사용자 닉네임,(사용자 아이디)</div>
								<div class="reviewContent">
									<textarea rows="10" cols="100" class="textarea">리뷰 내용</textarea>
									<input type="button" class="button primary" id="signUp"
										onclick="signUp()" value="등록">
								</div>
								<div class="reviewDate">리뷰 작성 날짜</div>
							</div>
						</div>
						<div class="reviewList">
							<div class="review">
								<div class="reviewInfo">사용자 닉네임,(사용자 아이디)</div>
								<div class="reviewContent">
									<textarea rows="10" cols="100" readonly class="textarea">리뷰 내용</textarea>
									<input type="button" class="button primary" class="reviewAlter"
										onclick="reviewAlter()" value="수정"> <input
										type="button" class="button primary" class="reviewDrop"
										onclick="reviewDrop()" value="삭제"> <input
										type="button" class="button primary" class="report"
										onclick="report()" value="신고">
								</div>
								<div class="reviewDate">리뷰 작성 날짜</div>
							</div>
						</div>
						<div class="paging" style="text-align: center;">
							<ul class="pagination">
								<li class="arrow unavailable"><a href="">&laquo;</a></li>
								<li class="current"><a href="">1</a></li>
								<li><a href="">2</a></li>
								<li><a href="">3</a></li>
								<li><a href="">4</a></li>
								<li class="unavailable"><a href="">&hellip;</a></li>
								<li><a href="">12</a></li>
								<li><a href="">13</a></li>
								<li class="arrow"><a href="">&raquo;</a></li>
							</ul>
						</div>
					</section>

				</div>
			</div>
		</div>
	</div>

		<!-- FOOOTER 
================================================== -->
		<jsp:include page="../footer.jsp" />
		<!-- JAVASCRIPTS 
================================================== -->
		<script>
			var mapOptions;
			navigator.geolocation.getCurrentPosition(function(pos) {
				mapOptions = {
					center : new naver.maps.LatLng(pos.coords.latitude,
							pos.coords.longitude),
					scaleControl : true,
					logoControl : true,
					mapDataControl : true,
					zoomControl : true,
					minZoom : 6,
					zoom : 10
				}
			});
			var map = new naver.maps.Map('map', mapOptions);

			function enterKey() {
				var input = $("input[id='query']").val();
				if (window.event.keyCode == 13) { // 엔터키가 눌렸을 때 }
					naver.maps.Service.geocode({
						query : input
					}, function(status, response) {
						if (status !== naver.maps.Service.Status.OK) {
							return alert('Something wrong!');
						}

						var result = response.v2, // 검색 결과의 컨테이너
						items = result.addresses; // 검색 결과의 배열

						// do Something
					});
				}
			}
		</script>
		<!-- Javascript files placed here for faster loading -->
		<script src="${pageContext.request.contextPath}/assets/javascripts/foundation.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/javascripts/jquery.easing.1.3.js"></script>
		<script src="${pageContext.request.contextPath}/assets/javascripts/elasticslideshow.js"></script>
		<script src="${pageContext.request.contextPath}/assets/javascripts/jquery.carouFredSel-6.0.5-packed.js"></script>
		<script src="${pageContext.request.contextPath}/assets/javascripts/jquery.cycle.js"></script>
		<script src="${pageContext.request.contextPath}/assets/javascripts/app.js"></script>
		<script src="${pageContext.request.contextPath}/assets/javascripts/modernizr.foundation.js"></script>
		<script src="${pageContext.request.contextPath}/assets/javascripts/slidepanel.js"></script>
		<script src="${pageContext.request.contextPath}/assets/javascripts/scrolltotop.js"></script>
		<script src="${pageContext.request.contextPath}/assets/javascripts/hoverIntent.js"></script>
		<script src="${pageContext.request.contextPath}/assets/javascripts/superfish.js"></script>
		<script src="${pageContext.request.contextPath}/assets/javascripts/responsivemenu.js"></script>
</body>
</html>