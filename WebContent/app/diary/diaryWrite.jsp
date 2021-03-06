<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<!--<![endif]-->
<head>

 <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">


      
   <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/diary.css" />

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

							<header class="header" style="text-align:left; display: block;">
										<h2>ㅁㅁㅁ의 다이어리</h2>
							</header>
								  <h2 class='date_text' style="text-align: center; padding: 2rem 0">2021년 04월</h2>
						
									  <div class='date_item rap' style="width: 1000px;">
									
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
									  
								
									<section id="write" style="display:none; width: 1000px;"> 
										<header class="header" style="text-align:left; display: block;">

											<h2>Diary Write</h2>
											<span style="display: flex;">
												<input type="radio" id="open" name="diary_wirte_status" value="공개" checked style="display: grid;">
												<label for="open">공개</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="radio" id="private" name="diary_wirte_status" value="비공개" style="display: grid;">
												<label for="private">비공개</label>
										</span>
									</header>
									
									
									    <form id="postForm" onsubmit="return postForm()" method="POST">

									    <!-- summernote와 관련된 영역 -->
									
									    <textarea id="summernote" name="contents"></textarea>
									
									
									
									    <!-- 버튼과 관련된 영역 -->
									
								 	 <div align="center">
								
								     	<input style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2" type="submit" class="button" value="작성">
								
								     	 <a style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2" class="button" onclick="test()">취소</a>
								
							    	</div>

									
									</form>									
								</section>

</div>



<!-- FOOOTER 
================================================== -->
<jsp:include page="../footer.jsp"/>
<!-- JAVASCRIPTS 
================================================== -->
<script src="${pageContext.request.contextPath}/assets/javascripts/diaryWrite.js"></script>
<!-- include libraries(jQuery, bootstrap) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/assets/css/summernote/lang/summernote-ko-KR.js"></script>
<!-- include summernote css/js-->
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script>
$(document).ready(function () {
   var fontList = ['맑은 고딕', '돋움', '궁서', '굴림', '굴림체', '궁서체', '나눔 고딕', '바탕', '바탕체', '새굴림', 'HY견고딕', 'HY견명조', 'HY궁서B', 'HY그래픽M', 'HY목각파임B', 'HY신명조', 'HY얕은샘물M', 'HY엽서L', 'HY엽서M', 'HY중고딕', 'HY헤드라인M', '휴먼매직체', '휴먼모음T', '휴먼아미체', '휴먼둥근헤드라인', '휴먼편지체', '휴먼옛체'];
     $('#summernote').summernote({
    placeholder:  '자유롭게 글을 작성할 수 있습니다. 명예훼손이나 상대방을 비방, 불쾌감을 주는 글, 욕설, 남을 모욕하는 글은 임의로 제제가 있을 수 있습니다.',
    height: 500,
    tabsize: 2,
    maxHeight: null,
    minHeight: null,
    lang: 'ko-KR', // 언어 세팅
    fontNames: fontList, 
    fontNamesIgnoreCheck: fontList,

    toolbar: [
        // [groupName, [list of button]]
        ['Font Style', ['fontname']],
        ['style', ['bold', 'italic', 'underline']],
        ['font', ['strikethrough']],
        ['fontsize', ['fontsize']],
        ['color', ['color']],
        ['para', ['paragraph']],
        ['height', ['height']],
        ['Insert', ['picture']],
        ['Insert', ['link']],
        ['Misc', ['fullscreen']]
     ]
     });
});
</script>   

</body>
</html>