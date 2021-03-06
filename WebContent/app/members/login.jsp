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
<title>코지크루 로그인</title>
<!-- CSS Files-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/style.css">

<!-- FONT Files-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/skins/blue.css">
<!-- skin color -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/responsive.css">
  <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
</head>
<style>
	input[type='button'], input[type='submit']{border-radius:0;}
	textarea{resize:none;}
	label{margin-top:3%;}
	div.preview{overflow:hidden;}
	div.preview img{width:90%; object-fit:cover; margin-left:10%;}
	h1, h2, h3, a, p, li{
		font-family: 'Gowun Dodum', sans-serif !important;
	}
	
	h1, h2, h3, h4, a, p, li, div, input{
		font-family: 'Gowun Dodum', sans-serif;
	}
	
	.content{
		font-size: 25px;
		text-align: left;
	}
	
	.login{
		
	}
	

</style>
<!-- 카카오 로그인 api -->
<!-- <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script>kakao.init('6924873098d8302c21d4dc5ba6ecaf04')
console.log(Kakao.isInitialized());
</script> -->
<body class="is-preload">
	<c:if test="${param.code eq 1}">
		<script>
			alert("아이디 또는 비밀번호를 다시 확인해주세요.");
		</script>
	</c:if>
	<c:if test="${param.code eq 2}">
		<script>
			alert("탈퇴된 회원입니다. 1:1문의를 통하여 복구해주세요.");
		</script>
	</c:if>
<!-- HEADER-->
<jsp:include page="../header.jsp"/>

<!-- article -->

<div class="row">
	<section id="login">
		<div class="content">
			<header>
				<h3 style="margin-top: 30px; margin-bottom: 30px; text-align: left; margin-right: 370px;">
				반갑습니다.<br>CozyKRoo입니다.
				
				</h3>
				<hr>
				<form method="post" action="${pageContext.request.contextPath}/members/MemberLoginOkAction.me" name="loginForm">
		<div style="display:flex; justify-content:space-evenly;">
			<div style="width:40%">
					<div>
						<div class="col-6 col-12-xsmall" style="width:100%">
							<!-- <p class=content style="margin:0;">아이디 </p> -->
							<input type="text" class="login" name="member_id" id="member_id" value="" placeholder="아이디를 입력해주세요." style="border: solid 1px black; height: 45px; font-size: 20px; margin-top: 50px;"/>
					
							<!-- <p class=content style="margin:0;">비밀번호</p> -->
							<input type="password" class="login" name="member_pw" id="member_pw" value="" placeholder="비밀번호를 입력해주세요." style="border: solid 1px black;height: 45px; font-size: 20px;"/>
							<div style="text-align:center;font-size: 15px;">
								<a href="findInfo.jsp">아이디 찾기 | 비밀번호 찾기</a><span><a href="join.jsp"> | 회원가입</a></span>
							</div>
						</div>
					</div>
					<div class="col-12">
						<ul class="actions" style="text-align:center; margin-top:9%">
							<li style="text-align: left;"><input type="button" value="로그인" class="button primary" style="width:100%; font-size:18px; height: 46px;" onclick="check_login()"/></li>
							<hr>
							
							<div id="naver_id_login" style= "width: 190px; text-align: left;"> 
								<%-- <img src="${pageContext.request.contextPath}/app/images/btnG_완성형.png" style="margin: 0 auto; width: 183px; height: 45px; border-radius: 5%;width: 185px;"> --%>
							</div>
							<div style="width: 190px;margin-left: 365px;margin-top: -45px;">						
								<img src="${pageContext.request.contextPath}/assets/images/kakao_login_medium_narrow.png" style="margin: 0 auto; width: 185px; height: 41px; border-radius: 5%; margin-right: 180px; float: right;">
							</div>
						</ul>
					</div>
				</div>
				<div class="preview" style="width:40%">
					<img src="${pageContext.request.contextPath}/assets/images/login02.png" style="margin-bottom: 30px;">
				</div>
			</div>
		</form>
		</header>
		</div>
	</section>

</div>



<!-- FOOOTER 
================================================== -->
<jsp:include page="../footer.jsp"/>
<script type="text/javascript">
	var form = document.loginForm;
	function check_login(){
		if(!form.member_id.value){
			alert("아이디를 확인해주세요");
			form.member_id.focus();
			return;
		}
		if(!form.member_pw.value){
			alert("비밀번호를 확인해주세요");
			form.member_pw.focus();
			return;
		}
		form.submit();
	}


  	var naver_id_login = new naver_id_login("H8JtBZsBpMsRbOb4iimV", "http://localhost:8085/CozyKRoo_2/app/termLogin.jsp");
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("green", 300,40);
  	naver_id_login.setDomain("http://localhost:8085");
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
  </script>
<!-- JAVASCRIPTS 
================================================== -->
<!-- Javascript files placed here for faster loading -->
</body>
</html>