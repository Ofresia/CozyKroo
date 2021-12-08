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

</head>
<style>

	h1, h2, h3, h4, a, p, li, div, input{
		font-family: 'Gowun Dodum', sans-serif !important;
	}
</style>
<body>
<!-- HEADER-->
<jsp:include page="../header.jsp"/>


<div class="row">
<!-- article -->
							<section>
								<header id="header" style="text-align:left; display: block; padding-top: 5%;">
										<h2 style="text-align: left;margin-top: -3%;margin-left: 40px;">ㅁㅁㅁ의 다이어리 ${diary.getDiary_title()}</h2>
										<p style="text-align:left;margin: auto; font-family: 'Gaegu', cursive; text-align: right; padding-right: 20%;"> 날짜 : ${diary.getDiary_date()}</p>
										<p style="text-align:left;margin: auto; font-family: 'Gaegu', cursive; text-align: right; padding-right: 20%;"> 좋아요 : ${diary.getDiary_like()}</p>
										<p style="text-align:left;margin: auto; font-family: 'Gaegu', cursive; text-align: right; padding-right: 20%; border-bottom: 1px solid #62d4e5;"> 조회수 : ${diary.getDiary_viewNum()}</p>
								</header>
								
								<!-- content -->
								<h3>
									<pre><!-- 게시글 내용들어갈곳 --></pre>
								</h3>

								<form style="text-align: right; margin-top: 100px;">
									<input type="button" value="좋아요" style="margin-top: 20%;background: #62d4e5;border: none;">
								</form>
							<hr style="border: solid 1px;border-color: #62d4e5;">
							</section>

</div>



<!-- FOOOTER 
================================================== -->
<jsp:include page="../footer.jsp"/>
<!-- JAVASCRIPTS 
================================================== -->

</body>
</html>