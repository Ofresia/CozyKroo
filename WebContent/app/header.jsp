<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<style>

	h1, h2, h3, h4, a, p, li, div, input{
		font-family: 'Gowun Dodum', sans-serif !important;
	}
		
	li>a {
		font-size: 30px;
	}
	.headermenu{
		width:1000px !important;
	}
	.centersectiontitle{
		display: inline-block;
		width: 470px;
	}
	.wrapper{
		width: 450px;
		display: inline-block;
	}
	.twelve{
		width: 200px;
	}
	table {
	width: 112%;
}
	li{
		margin-right: 20px !important;
	}
	.loginBox{
		width: 240px;
		height: 150px;
		float: right;
		border: 0.5px solid #c6c6c6;
		background-color: #f9f9f9;
		text-align: center;
    	padding-top: 35px;
    	margin-right: -50px;
    	border-radius: 10%;
    	margin-top: 10px;
    	margin-bottom: 5px;
	}
	#icon{
		height: 100px;
	}
	#logo{
		margin-bottom: 7px;
		margin-top: 14px;
	}
	.logo{
		width: 1000px !important;
		margin-bottom: 10px;
		margin-top: 15px;
	}
	.headerlogo{
		width: 900px !important;
	}
	.cf{
		margin-top: 10px;
    	width: 1000px;
    	height: 180px;
		float:left;
	}
	.cf_img{
	object-fit: contain;
    width: inherit;
    height: inherit;
	}
	.info{
		float: right;
		margin-top: 86px;
    	font-size: 16px;
	}
</style>
<body>
<div class="row">
	<div class="headerlogo four columns">
		<div class="logo">
			<a href= "${pageContext.request.contextPath}/app/main2.jsp">
			<img id="icon" src="${pageContext.request.contextPath}/assets/images/CozyKRoo4.png">
			</a>
		<div class="info">
		<c:choose>
			<c:when test="${sessionId eq null}">
				<a href="${pageContext.request.contextPath}/members/MemberLogin.me">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="${pageContext.request.contextPath}/app/members/join.jsp">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="${pageContext.request.contextPath}/app/members/findInfo.jsp">ID/PW 찾기</a>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/members/logout.me">로그아웃</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="${pageContext.request.contextPath}/app/members/selfInfo.jsp">마이 페이지</a>
			</c:otherwise>
		</c:choose>
		</div>
		</div>
		
	</div>
	
</div>
<div class="clear">
</div>
<div id="subheader" class="subheadertext" style="padding:0px 0px !Important;">
	<div class="row">
		<div class="twelve columns" style="margin-left: 100px;">
			<div class="headermenu eight columns noleftmarg">
		<nav id="nav-wrap">
		<ul id="main-menu" class="nav-bar sf-menu">
			<li class="current">
			<a href="${pageContext.request.contextPath}/app/main2.jsp" style="font-size: 25px;">홈</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/boards/BoardsList.bo?type=1" style="font-size: 25px;">육아 노하우</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/boards/BoardsList.bo?type=2" style="font-size: 25px;">내 남편 자랑</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/boards/BoardsList.bo?type=3" style="font-size: 25px;">중고 물품 나눔</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/app/share/gov.jsp" style="font-size: 25px;">정부 지원</a>
			</li>
			<!-- 
			<li>
				<a href="#" style="font-size: 19px;">우리동네 산부인과</a>
			</li>
			<li>
				<a href="#" style="font-size: 19px;">우리동네 산후조리원</a>
			</li> 
			-->
		</ul>
		</nav>
	</div>
		</div>
	</div>
</div>
</body>
