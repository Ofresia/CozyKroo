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
<title>Studio Francesca - Premium Theme by WowThemes.net</title>
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
		font-family: 'Gaegu', cursive !important;
	}
		
	.opener li:hover{
		display: block;
	}
	
</style>
<body>
<!-- HEADER-->
<jsp:include page="header.jsp"/>

<!-- article -->

<div class="row">
	<p style="text-align:center;margin-bottom: 0px;">
		<img src="${pageContext.request.contextPath}/assets/images/linkedin_banner_image_2.png" alt style="text-align: center;height: 500px;width: 1000px;" />
		<p style="text-align: center;font-size: 30px;">
			<strong>회원탈퇴 완료</strong><br>
			지금까지 저희 CozyKRoo를 이용해주시고 사랑해주셔서 감사합니다.<br> 더욱 더 노력하고 발전하는
			CozyKRoo가 되겠습니다.
		</p>
	<div style="text-align: center; margin-top: 60px; margin-bottom: 50px;">
	
		<input type="button" value="메인화면으로 이동" class="button primary" onclick="location.href='main2.jsp'" 
		style = "block-size: 50px; width: 200px; font-size: 18px;"/>
		<br>
		</div>
	
</div>



<!-- FOOOTER 
================================================== -->
<jsp:include page="footer.jsp"/>
<!-- JAVASCRIPTS 
================================================== -->
<!-- Javascript files placed here for faster loading -->
</body>
</html>