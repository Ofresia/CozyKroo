<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ouf9d01mmk"></script>
<!--<![endif]-->
<head>
<meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width"/>
<title>복지 정보</title>
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

	h1, h2, h3, h4, a, p, li, div, input{
		font-family:'Gowun Dodum', sans-serif !important;
	}
		#search{
		width: 50%;
		height: 400px;
		display: inline-block;
	}
	.dataBox{
		overflow: auto;
		border: 1 solid #62d4e5;
		height: 300px;
	}
	.img{
		width: 100%;
	}
	.text{
		font-size: 20px;
	}
</style>
<body>
<!-- HEADER-->
<jsp:include page="../header.jsp"/>

<!-- article -->

<div class="row">
	<section>
		<header class="main">
			<h1 style="margin-top: 10px;">복지 정보</h1>
			<hr class="major" />
		</header>
		<div class="govContents">
			<a href="https://www.bokjiro.go.kr/ssis-teu/twataa/wlfareInfo/moveTWAT52005M.do" target="_blank">
			<div class="govContent">
				<img alt="이미지 없음" src="${pageContext.request.contextPath}/assets/images/bokjiro1.png" class="img">
			</div>
			</a>
			<br>
			<p class="text">사이트로 이동하시려면 위의 이미지를 클릭해주세요.</p>
		</div>
		<br><hr>
		<div class="govContents">
			<a href="https://www.childcare.go.kr/" target="_blank">
			<div class="govContent" style="height: 700px;">
				<img alt="이미지 없음" src="${pageContext.request.contextPath}/assets/images/childcare1.png" class="img">
			</div>
			</a>
			<br>
			<p class="text">사이트로 이동하시려면 위의 이미지를 클릭해주세요.</p>
		</div>
	</section>
</div>



<!-- FOOOTER 
================================================== -->
<jsp:include page="../footer.jsp"/>
<!-- JAVASCRIPTS 
================================================== -->
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