<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width"/>
<title>다이어리 보기</title>
<!-- CSS Files-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/style.css">

<!-- FONT Files-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/diary.css" />

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
		font-family: 'Gowun Dodum', sans-serif !important;
	}
	
	#main {
		width : 134px;
	}
	
	.dateSel div {
	  font-weight: bold;
	  color: #333;
	  min-height: 180px;
	  padding: 16px 20px;
	  border-radius: 10px;
	  border: 2px solid rgb(98, 212, 229);
	}
	
	img {
		width: 100px;
	}
	
</style>
<body>
<!-- HEADER-->
<jsp:include page="../header.jsp"/>

<!-- article -->

<div class="row">

							<header class="major" style="text-align:left; display: block;">
								<h2>Diary View</h2>
							</header>
								  <h2 class='date_text' style="text-align: center; padding: 2rem 0">2021년 04월</h2>

									  <div class='date_item rap'>
									
										    <div class="grid date_form date_head" id="main">
										      <div id="main">일</div>
										      <div id="main">월</div>
										      <div id="main">화</div>
										      <div id="main">수</div>
										      <div id="main">목</div>
										      <div id="main">금</div>
										      <div id="main">토</div>
										    </div>
									
									  	<div class="grid date_form dateSel" id="main"><!-- 여기에 들어가는거 같아 --></div>
									  
									  </div>

</div>



<!-- FOOOTER 
================================================== -->
<jsp:include page="../footer.jsp"/>
<!-- JAVASCRIPTS 
================================================== -->
<!-- Javascript files placed here for faster loading -->
<script src="${pageContext.request.contextPath}/assets/javascripts/diaryView.js"></script>
</body>
</html>