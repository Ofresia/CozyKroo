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
	
	article{
		width: 300px;
	}
</style>
<body>
<!-- HEADER-->
<jsp:include page="../header.jsp"/>

<div class="row">
<!-- article -->
								<section style="display: flex; height: 800px;flex-direction: column; margin-left: 40px;">
									<header style="height: 140px;">
										<h2 style="margin-top: 10px;">Diary List</h2>
									</header>
										<div style="display: flex;flex-wrap: wrap; margin-top: -20px;">
											<c:choose>
											<c:when test="${diaryList != null and fn:length(diaryList) > 0}">
												<c:forEach var="diary" items="${diaryList}">
														<article>						<!-- 다이어리 이미지 -->
															<a href="#" class="image"><img src="${pageContext.request.contextPath}/assets/images/pic01.jpg" alt="" /></a>
																<!-- ㅁㅁㅁ의 다이어리 -->
															<h3>Interdum aenean</h3>
																<!-- 다이어리 미리보기 글 -->
															<p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
															<ul class="actions">
																	<!-- 더보기 버튼 -->
																<li><a href="<!-- ㅁㅁㅁ의 다이어리뷰  -->" class="button primary">More</a></li>
															</ul>
														</article>
													</c:forEach>
												</c:when>
												<c:otherwise>
														<p style="margin: 300px;margin-bottom: 420px;font-size: 25px;font-size: 25px;">등록된 다이어리가 없습니다......</p>
												</c:otherwise>
											</c:choose>
									</div>
 
 								<!-- 페이지 버튼 -->
									<ul class="pagination" style="margin-left: 311px;margin-top: 120px;">
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
								</section>
								




</div>



<!-- FOOOTER 
================================================== -->
<jsp:include page="../footer.jsp"/>
<!-- JAVASCRIPTS 
================================================== -->
<!-- Javascript files placed here for faster loading -->
</body>
</html>