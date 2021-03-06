<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Modal</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/report.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/responsive.css">

<style>
	h1, h2, h3, h4, a, p, li, div, input{
		font-family: 'Gowun Dodum', sans-serif;
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
	height: 500px;
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
	cursor: pointer;
	color: #7f888f;
}

#modal .content {
	margin-top: 30px;
	padding: 0px 10px;
	color: #7f888f;
}
</style>
</head>
<body>
	<!-- 버튼을 게시판이랑 연결시켜야 함 -->
	<button id="btn-modal">버튼</button>

	<div id="modal" class="modal-overlay">
		<div class="modal-window">
			<div class="title">
				<h2 style="text-align: center">신고하기</h2>
			</div>
			<div class="content">
				<div class="col-6 col-12-small" style="margin: 5% auto">
					<input type="checkbox" id="report_ad" name="report_ad">
					<label for="report_ad">무단 광고/홍보</label><br>
					
					<input type="checkbox" id="report_many" name="report_many">
					<label for="report_many">도배</label><br> 
					
					<input type="checkbox" id="report_badword" name="report_badword">
					<label for="report_badword">욕설/비속어</label><br>
					
					<input type="checkbox" id="report_hate" name="report_hate">
					<label for="report_hate">혐오 발언/상징</label><br>
					
					<input type="checkbox" id="report_19" name="report_19">
					<label for="report_19">음란성</label><br>
					
					<input type="checkbox" id="report_etc" name="report_etc">
					<label for="report_etc">기타</label>
					<div class="col-12"> 
						<textarea name="demo-message" id="demo-message" placeholder="기타 사유를 작성해주세요." rows="3" style="resize: none; font-family: 'Gowun Dodum';"></textarea>
					</div>
					<ul class="actions">
						<li style="margin: 20px auto"><input type="submit" value="신고하기" class="primary" style="margin-right: 20px; font-family: 'Gowun Dodum';" />
						<input type="reset" value="취소" class="close close-area" style="font-family: 'Gowun Dodum';"/>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/javascripts/report.js"></script>
</html>