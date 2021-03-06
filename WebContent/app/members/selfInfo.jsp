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
h1, h2, h3, h4, a, p, li, div, input {
	font-family: 'Gowun Dodum', sans-serif !important;
}
h1{
	margin-top: 32px;
	margin-bottom: 43px;
}
input[type='text']{
	display: inline-block;
}

td.cent{
	text-align: center !important;
    vertical-align: middle !important;
}

#modal.modal-overlay {
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0;
	top: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	background: rgba(0, 0, 0, 0.5);
	box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
	backdrop-filter: blur(1.5px);
	-webkit-backdrop-filter: blur(1.5px);
	border-radius: 10px;
	border: 1px solid rgba(255, 255, 255, 0.18);
}

#modal .modal-window {
	background: white;
	box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
	backdrop-filter: blur(13.5px);
	-webkit-backdrop-filter: blur(13.5px);
	border-radius: 10px;
	border: 1px solid rgba(255, 255, 255, 0.18);
	width: 450px;
	height: 600px;
	position: relative;
	top: -100px;
	padding: 20px 10px;
}

#modal .title {
	padding-left: 10px;
	display: inline;
	color: #7f888f;
}

#modal .title h2 {
	display: inline;
}

#modal .close-area {
	display: inline;
	float: right;
	padding-right: 10px;
	cursor: pointer;
	text-shadow: 1px 1px 2px gray
	color: #7f888f;
}

#modal .content {
	margin-top: 20px;
	padding: 0px 10px;
	color: #7f888f;
}
</style>
<body>
	<!-- HEADER-->
	<jsp:include page="../header.jsp" />

	<!-- article -->
	<div class="row">
		<header class="selfInfo">
			<h1>???????????????</h1>
		</header>
		<div class="row">
		<form name="infoForm" action="${pageContext.request.contextPath}/members/MemberModifyOk.me" method="post">
			<table class="sevenColumns" style="width: 800px;margin: 0 auto;">
				<tbody>
					<tr>
						<td class="cent">?????????</td>
						<td><input type="text" readonly name="member_id" id="member_id" value="${sessionId}"></td>
					</tr>
					<tr id="pwTr">
						<td class="cent">????????????</td>
						<td><input onclick="updatePw()" type="button" value="???????????? ??????" id="member_pw"></td>
					</tr>
					<tr>
						<td class="cent">??????</td>
						<td><input type="text" name="member_name" id="member_name" class="canmodi" readonly></td>
					</tr>
					<tr>
						<td class="cent">PhoneNumber</td>
						<td><input type="text" name="member_phoneNum" id="member_phoneNum" class="canmodi" readonly></td>
					</tr>
					<tr>
						<td class="cent">Email</td>
						<td><input type="text" name="member_email" id="member_email"  class="canmodi" readonly></td>
					</tr>
					<tr>
						<td class="cent">?????? ??????</td>
						<td><input type="text" name="member_babyName" id="member_babyName"   class="canmodi" readonly></td>
					</tr>
					<tr>
						<td class="cent">???????????????</td>
						<td><input type="date" name="member_babyDate" id="member_babyDate" class="canmodi" readonly></td>
					</tr>
					<tr>
						<td class="cent">?????? ???</td>
						<td><input type="text" name="member_childNum" id="member_childNum" class="canmodi" readonly></td>
					</tr>
					<!-- <tr>
						<td>???????????? ????????????</td>
						<td><a href="#" class="secondary button">????????????</a></td>
					</tr>
					<tr>
						<td>?????? ????????? ????????????</td>
						<td><a href="#" class="secondary button">????????????</a></td>
					</tr> -->
				</tbody>
			</table>
		</div>
		<div class="table_button"
			style="text-align: center; margin-top: 20px; margin-bottom: 25px;">
			<!-- <input class="secondary button" type="button" value="??????" onclick=""> -->
			<input type="button" onclick="modify1()" value="??????" class="button" id="modify" style="background-color: #65cdd2">
			<input type="button" onclick="complete()" value="??????" class="button modimenu" style="background-color: #65cdd2; display: none;">
			<input type="button" onclick="cancel()" value="??????" class="button modimenu" style="background-color: #65cdd2; display: none;">
			<!-- <input type="button" onclick="signout()" value="????????????" class="button" id="modify"> -->
			<input type="button" value="????????????" class="button" id="btn-modal">
		</div>
		</form>

	</div>

	<!-- ????????????  modal -->
	<div id="modal" class="modal-overlay" style="display: none">
		<div class="modal-window">
			<div class="title">
				<h2>????????????</h2>
			</div>
			<div class="close-area">X</div>
			<div class="box">
				<form>
					<fieldset>
						<legend>Box</legend>
						<p>?????? ?????? ??????</p>
					</fieldset>
				</form>
			</div>
			???????????? ?????????? 
			<select name="signOut-category" id="signOut-category">
				<option value="">- ???????????? -</option>
				<option value="1">????????? ????????? ?????? ?????????</option>
				<option value="2">?????????</option>
				<option value="3">?????? ???????????? ?????????</option>
				<option value="4">?????? ????????????</option>
			</select>
			<div class="row" id="signOut-message">
				<textarea name="demo-message" id="demo-message"
					style="width: 426px; margin-bottom: 15px;" placeholder="?????? ?????? ??????"
					rows="6"></textarea>
			</div>
			<form name="sighoutform" action="${pageContext.request.contextPath}/members/MemberSignoutAction.me">
			???????????? ?????? <input id="check_pw" name="check_pw" type="password" value=""> ?????? ?????????????????????????
			<div style="text-align: center; margin-top: 15px;">

				<input type="hidden" id ="sibal" name="sibal" value="${sessionId}">
				<input type="button" class="secondary butn" id="btn-modal" onclick="signOut()" style="background-color: #d8f4f9" value="????????????">

			</div>
			</form>
		</div>
	</div> 

	<!-- ???????????? ?????? modal -->
	<!-- <div id="modal" class="modal-overlay" style="display: none">
		<div class="modal-window">
			<div class="title">
				<h2>????????????</h2>
			</div>
			<div class="close-area">X</div>
			<div class="content" style="margin: auto; text-align: center;">
				<img src="../images/CozyKRoo_img1.png" alt=""
					style="width: 300px; height: 300px;" />
				<div style="margin: auto;">
					<p>
						<strong>???????????? ??????</strong>
					</p>
					<p>
						???????????? ?????? coayKRoo??? ?????????????????? ?????????????????? ???????????????.<br> ?????? ??? ???????????? ????????????
						coayKRoo??? ???????????????.
					</p>
					<input class="secondary button" type="button" value="????????????"
						onclick="">
				</div>
			</div>
		</div>
	</div> -->
	<!-- FOOOTER 
================================================== -->
	<jsp:include page="../footer.jsp" />
	  <script>
      var contextPath = "${pageContext.request.contextPath}";
      var name;
      var phoneNum;
      var email;
      var babyName;
      var babyDate ;
      var childNum;
      var pwpw;
   
   function modify1(){
      name = $("#member_name").val();
      phoneNum = $("#member_phoneNum").val();
      email = $("#member_email").val();
      babyName = $("#member_babyName").val();
      babyDate = $("#member_babyDate").val();
      childNum = $("#member_childNum").val();
      $(".canmodi").prop('readonly',false);
      $(".canmodi").attr('readonly',false);
      $(".modimenu").css('display', 'inline');
      $("#modify").css('display',"none");
   }
 
   function complete(){
      //????????? ??????.
      //????????? ????????? ????????? ?????????
      if($("#member_phoneNum").val()){
         if(isNaN($("#member_phoneNum").val())){
            alert("????????? ????????? ????????? ??????????????????.");
            return;
         }
      }
      //email??? @??? .??? ???????????? ?????????
      if($("#member_email").val()){
         if($("#member_email").val().indexOf("@") == -1 || $("#member_email").val().indexOf(".") == -1){
            alert("???????????? ??????????????????.");
            return;
         }
      }
      //???????????? ????????????
      if($("#member_childNum").val()){
         if(isNaN($("#member_childNum").val())){
            alert("?????? ????????? ????????? ??????????????????.");
            return;
         }
      }
      //????????? ?????? db??? ????????? ??????
      document.infoForm.submit();
   }
   function cancel(){
      $("#member_name").val(name);
      $("#member_phoneNum").val(phoneNum);
      $("#member_email").val(email);
      $("#member_babyName").val(babyName);
      $("#member_babyDate").val(babyDate);
      $("#member_childNum").val(childNum);
      $(".canmodi").prop('readonly',true);
      $(".modimenu").css('display', 'none');
      $("#modify").css('display',"inline");
   }
   
	function signOut(){
		if ($("#check_pw").val()) {
				$.ajax({
				url : contextPath + "/members/MembergetPw.me",
				data : {"pwpw" : $("#check_pw").val(),"sessionId" : $("#sibal").val()},
				dataType : "json",
				type : "post",
				success : function(obj) {
					pwpw = obj.pwpw;
					if(pwpw == "non-ok"){
						alert("??????????????? ???????????????.");
						return;
					}
					document.sighoutform.submit();
				}
			})
		}
	}
	function updatePw(){
		location.href= contextPath +"/members/MemberchangePw.me"
	}
		

   window.onload = function(){
      id = "<c:out value='${sessionId}'/>"
      $.ajax({
         url : contextPath + "/members/MemberGetInfo.me",
         type : "post",
         data : {
            "member_id" : $("#member_id").val(),
         },
         dataType : "json",
         success : function(info) {
            setTimeout(function(){
               $("#member_name").val(info.member_name);
               $("#member_phoneNum").val(info.member_phoneNum);
               $("#member_email").val(info.member_email);
               $("#member_babyName").val(info.member_babyName);
               $("#member_babyDate").val(info.member_babyDate);
               $("#member_childNum").val(info.member_childNum);
               if (info.member_status == 2) {
				$("#pwTr").remove();
			}
            },100);
         }
      });
   }
   
   
   </script>
	<!-- JAVASCRIPTS 
================================================== -->
	<!-- Javascript files placed here for faster loading -->
	<script>var contextPath = "${pageContext.request.contextPath}";</script>
	<script src="${pageContext.request.contextPath}/assets/javascripts/report.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
</body>
</html>