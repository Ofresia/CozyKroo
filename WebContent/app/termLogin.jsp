<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
	<form name="form" action="${pageContext.request.contextPath}/members/MemberNaverLogin.me">
		<input type="text" value="${id}" name="member_id" style="visibility: hidden;">
		<input type="text" value="${email}" name="member_email" style="visibility: hidden;">
		<input type="text" value="${name}" name="member_name" style="visibility: hidden;">
	</form>
</body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("H8JtBZsBpMsRbOb4iimV", "http://localhost:8085/CozyKRoo_2/app/main2.jsp");
  var form = document.form;
  function naverSignInCallback() {
	  $("input[name='member_id']").val(naver_id_login.getProfileData('id'))
	  $("input[name='member_email']").val(naver_id_login.getProfileData('email'))
	  $("input[name='member_name']").val(naver_id_login.getProfileData('name'))
  }


  window.onload = function(){
  // 접근 토큰 값 출력
  naver_id_login.oauthParams.access_token;
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	setTimeout(function(){
	  document.form.submit();
	},300)			
}
</script>
</html>