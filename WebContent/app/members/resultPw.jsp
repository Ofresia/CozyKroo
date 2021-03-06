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
      font-family: 'Gowun Dodum', sans-serif !important;
   }
</style>
<body>
<c:set var="findIds" value="${findIds}"/>
<!-- HEADER-->
<jsp:include page="../header.jsp"/>

<!-- article -->

<c:if test="${param.ppww eq 1}">
 <script>
 	alert("현재 비밀번호가 틀렸습니다.");
 </script>
</c:if>

<c:if test="${param.ppww eq 2}">
 <script>
 	alert("현재 비밀번호와 일치합니다. 다른 비밀번호로 변경해 주세요");
 </script>
</c:if>

<div class="row">
	<c:choose>
	<c:when test="${not empty sessionId}">
   		<form action="${pageContext.request.contextPath}/members/MemberChangePwAction.me" name="PwForm">
	</c:when>
	<c:otherwise>
   		<form action="${pageContext.request.contextPath}/members/updatePwInfo.me" name="PwForm">
	</c:otherwise>
	</c:choose>
   			<div class="three" style="margin: 200px auto;" >
		  <c:if test="${not empty sessionId}">   		 
   		  <p style="font-size: 20px">현재 비밀번호를 입력하세요</p>
	      <input type="password" id="nowpw" name="nowpw" style="font-size: 20px;text-align: center;" value="" placeholder="비밀번호">
   		  </c:if>
	      <p style="font-size: 20px">변경할 비밀번호를 입력하세요</p>
	      <input type="password" id="pw" name="pw" style="font-size: 20px;text-align: center;" value="" placeholder="새 비밀번호">
	      <input type="password" id="checkPw" name="checkPw" style="font-size: 20px;text-align: center;" value="" placeholder="새 비밀번호 확인">
      	  <input type="text" id="checkId" name="checkId" style="font-size: 20px;text-align: center; display:none;" value="${param.id_pw}">	
	      <input type="button" value="변경하기" class="button primary" onclick="updatePw()" style="margin: 0 auto;text-align: center;margin-left: 33%;margin-top: 9px;">
   		</div>
   	</form>
</div>



<!-- FOOOTER 
================================================== -->
<jsp:include page="../footer.jsp"/>
<!-- JAVASCRIPTS 
================================================== -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</body>
<script>
  	function updatePw() {

 		if(!$("#pw").val()){
 			alert("새로운 비밀번호를 입력해주세요.")
 			return;
 		}
 		if(!$("#checkPw").val()){
 			alert("확인 비밀번호를 입력해주세요.")
 			return;
 		}
 		
 		var pw = $("#pw").val();
 		
 		if(pw.length < 4 || pw.length > 20){
 			alert("비밀번호는 4 ~ 20 자리로 입력해주세요. ")
 			return;
 		}
 		
		if ($("#pw").val() == $("#checkPw").val()) {
			document.PwForm.submit();
		}else{
			alert("비밀번호가 일치하지 않습니다.");
		}
	}
 	
 	

 /* function updatePw() {
	if ($("#pw").val() == $("#checkPw").val()) {
		$.ajax({
			url : contextPath + "/members/updatePwInfo.me",
			data : {
				"pw" : $("#pw").val()
			},
			dataType : "json",
			type : "post",
			success : function() {
				location.href= contextPath +"/members/resultOkPw.jsp;
			}
		})
	} else {
		alert("아이디과 핸드폰 번호를 모두 입력하세요");
	}
}  */
</script>
</html>