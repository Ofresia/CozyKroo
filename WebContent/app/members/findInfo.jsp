<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width" />
<title>Studio Francesca - Premium Theme by WowThemes.net</title>
<!-- CSS Files-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/stylesheets/style.css">

<!-- FONT Files-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/stylesheets/skins/blue.css">
<!-- skin color -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/stylesheets/responsive.css">
<!-- IE Fix for HTML5 Tags -->
<!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>
<style>
h1, h2, h3, h4, h5, a, p, li, div, input {
	font-family: 'Gowun Dodum', sans-serif;
}

.label_txt {
	width: 20%;
	float: left;
	font-size: 16px;
}

.input_txt {
	width: 70%;
}

.rows {
	margin-bottom: 20px;
}

</style>
<body>
	<!-- HEADER-->
	<jsp:include page="../header.jsp" />

	<!-- article -->

	<div class="row" style="width: 1000px; margin: 3% auto">
		<!-- Content -->
		<section>
			<header class="main">
				<h2>아이디 / 비밀번호 찾기</h2>
				<h5 style="font-family: 'Gowun Dodum', sans-serif;">회원가입시 등록한
					이름, 아이디, 휴대폰 번호를 입력하세요.</h5>
			</header>

			<hr>

			<!-- 아이디 찾기 -->
			<div class="content">
				<div id="findId" style="float: left; width: 48%;">
					<h3>아이디 찾기</h3>
					<div style="border: solid 1px rgba(210, 215, 217, 0.75)">
						<form method="post" action="#">
							<div class="row gtr-uniform" style="margin: 50px 60px">
								<div class="rows">
									<label for="name_id" class="label_txt">이름</label> <input
										type="text" name="name_id" id="name_id" value=""
										placeholder="이름" class="input_txt"
										style="width: 70%; margin-left: 20%; border: 0.05px solid lightgrey" />
								</div>
								<div class="rows">
									<label for="phoneNumber_id" class="label_txt">휴대전화</label> <input
										type="text" name="phoneNumber_id" id="phoneNumber_id" value=""
										placeholder="휴대전화번호( - 제외하고 입력)" class="input_txt"
										style="width: 70%; border: 0.05px solid lightgrey" />
								</div>
								<ul class="actions" style="margin: -2% 0 -2% 30%;">
									<li><input type="button" class="button primary"
										style="margin-bottom: 20px; margin-left: -35px;"
										value="인증번호 받기" onclick="checkMemberId()"></li>
								</ul>
								<div class="rows">
									<input type="text" name="phoneAuth_id" id="phoneAuth_id"
										value="" placeholder="인증번호 6자리 숫자" class="input_txt"
										maxlength="6"
										style="width: 70%; margin-left: 20%; border: 0.05px solid lightgrey" />
								</div>
								<div class="button"
									style="margin-left: 25%; margin-top: 5px; font-family: 'Gowun Dodum', sans-serif;">
									<ul class="actions stacked"  style="width: 100px;">
										<li><input type="button" class="button fit"
											value="아이디 찾기" onclick="findId()"></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
				</div>

				<!-- 비밀번호 찾기 -->
				<div id="findPw" style="float: right; width: 48%;">
					<h3>비밀번호 찾기</h3>
					<div style="border: solid 1px rgba(210, 215, 217, 0.75)">
						<form method="post" action="${pageContext.request.contextPath}/members/MemberUpdatePwOkAction.me" name="FindPwForm">
							<div class="row gtr-uniform" style="margin: 50px 60px">
								<div class="rows">
									<label for="id_pw" class="label_txt">아이디</label> <input
										type="text" name="id_pw" id="id_pw" value="" placeholder="아이디"
										class="input_txt"
										style="width: 70%; border: 0.05px solid lightgrey"/>
								</div>
								<!-- <div class="rows">
									<label for="name_pw" class="label_txt">이름</label>
									<input type="text" name="name_pw" id="name_pw" value="" placeholder="이름" class="input_txt" style="width: 70%; border:0.05px solid lightgrey"" />
								</div> -->
								<div class="rows">
									<label for="phoneNumber_pw" class="label_txt">휴대전화</label> <input
										type="text" name="phoneNumber_pw" id="phoneNumber_pw" value=""
										placeholder="휴대전화번호( - 제외하고 입력)" class="input_txt"
										style="width: 70%; border: 0.05px solid lightgrey" />
								</div>
								<ul class="actions" style="margin: -2% 0 -2% 30%">
									<li><input class="button primary" type="button"
										style="margin-bottom: 20px; margin-left: -35px;"
										value="인증번호 받기" onclick="checkMemberPw()"></li>
								</ul>
								<div class="rows">
									<input type="text" name="phoneAuth_pw" id="phoneAuth_pw"
										value="" placeholder="인증번호 6자리 숫자" class="input_txt"
										maxlength="6"
										style="width: 70%; margin-left: 20%; border: 0.05px solid lightgrey" />
								</div>
								<div class="button"
									style="margin-left: 25%; margin-top: 5px; font-family: 'Gowun Dodum', sans-serif;">
									<ul class="actions stacked" style="width: 111px;">
										<li><input type="button" class="button fit"
											value="비밀번호 찾기" onclick="updatePw()"></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>


		</section>

	</div>




	<!-- FOOOTER 
================================================== -->
	<jsp:include page="../footer.jsp" />
	<!-- JAVASCRIPTS 
================================================== -->
	<!-- Javascript files placed here for faster loading -->
	<script>
		var contextPath = "${pageContext.request.contextPath}";
	</script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/foundation.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/jquery.easing.1.3.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/elasticslideshow.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/jquery.carouFredSel-6.0.5-packed.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/jquery.cycle.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/app.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/modernizr.foundation.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/slidepanel.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/scrolltotop.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/hoverIntent.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/superfish.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/javascripts/responsivemenu.js"></script>

</body>
<script>
	var phoneAuth;
	function findId() {
		if (!$("#phoneAuth_id").val()) {
			alert("인증번호를 입력해주세요.");
			return;
		}
		if ($("#phoneAuth_id").val() == phoneAuth) {
			location.href = contextPath
					+ "/members/MemberFindIdOkAction.me?name="
					+ $("#name_id").val() + "&phoneNum="
					+ $("#phoneNumber_id").val();
		}
	}
	
	function updatePw() {
		if (!$("#phoneAuth_pw").val()) {
			alert("인증번호를 입력해주세요.");
			return;
		}
		if ($("#phoneAuth_pw").val() == phoneAuth) {
			document.FindPwForm.submit();
		}else{
			alert("인증번호가 다릅니다.");			
		}
	}

	function checkMemberId() {
		if ($("#name_id").val() && $("#phoneNumber_id").val()) {
			$.ajax({
				url : contextPath + "/members/findInfo.me",
				data : {
					"name" : $("#name_id").val(),
					"phoneNumber" : $("#phoneNumber_id").val()
				},
				dataType : "json",
				type : "post",
				success : function(smsNum) {
                    if(smsNum.sms == "not-ok"){
                    	alert("잘못입력하셨습니다.");
                    	return;
                    }
					phoneAuth = smsNum.sms;
				}
			})
		} else {
			alert("이름과 핸드폰 번호를 모두 입력하세요");
		}
	}

		function checkMemberPw() {
            if ($("#id_pw").val() && $("#phoneNumber_pw").val()) {
                $.ajax({
                    url : contextPath + "/members/findPwInfo.me",
                    data : {
                        "pw" : $("#id_pw").val(),
                        "phoneNumber" : $("#phoneNumber_pw").val()
                    },
                    dataType : "json",
                    type : "post",
                    success : function(smsNum) {
                        if(smsNum.sms == "not-ok"){
                        	alert("잘못입력하셨습니다.");
                        	return;
                        }
                    	phoneAuth = smsNum.sms;
                        /* location.href= contextPath +"/members/updatePwInfo.me?id="+$("#id_pw").val(); */
                        
                    }

                })
            } else {
                alert("아이디과 핸드폰 번호를 모두 입력하세요");
            }
        }
</script>

</html>