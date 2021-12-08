<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="com.koreait.app.boards.vo.KnowhowVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width"/>
<title>Studio Francesca - Premium Theme by WowThemes.net</title>
<!-- CSS Files-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reportStyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/style.css">

<!-- FONT Files-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
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

   h1, h2, h3, h4, a, p, li, div, input, button, textarea {
      font-family: 'Gowun Dodum', sans-serif;
	
   }

   
   /* <div>
<p>
	작성자 (시간)
</p>
<div>
	<pre style="display: inline-block;">
	내용
	</pre>
	<div style="display: inline-block; float: right">
		<input type="button">
		<input type="button">
		<input type="button">
		<input type="button">
	</div>
</div>
</div>
<hr> */

	input[type='button']{
		font-family: 'Gowun Dodum', sans-serif !important; font-weight: bold;
	}
	
	pre.btnst{
		display: inline-block;
	}
	
	div.btnst{
		display: inline-block; 
		float: right
	}
	p.writer{
		font-size: 18px;
	}
	
	input.primary{
		margin-right: 4px;
	}
	
	span.time{
		font-size: 13px;
	}
	
	#content{
		max-height: fit-content; 
		
	}
	
	img{
		max-width: 1000px !important; 		
	}
	
</style>
<c:if test="${sessionId eq null}">
	<script>
		alert("로그인 후 이용해주세요.");
		location.href = "${pageContext.request.contextPath}/members/MemberLogin.me";
	</script>
</c:if>
<body>
<!-- HEADER-->
<jsp:include page="../header.jsp"/>

<!-- article -->

<div class="row">

                        <!-- Wrapper -->
               <div class="wrapper" style="width: 1000px;">
                  <div class="inner">

                     <!-- Main -->
                     <section class="main">
                        <a href="#" class="image main"><img src="${pageContext.request.contextPath}/assets/images/boardView.png" alt="" style="width: 1000px;margin-top: 10px;"/></a>
 						<c:choose>
                      	 <c:when test="${sessionId eq board.getMember_id()}">
                              <div class="col-12" style="margin-left: 645px;margin-bottom: 20px;margin-top: 20px;">                    
                                	<input  style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2" type="button" value="글쓰기" class="button" onclick="location.href='${pageContext.request.contextPath}/boards/BoardsWrite.bo?type=${type}'"/>&nbsp;
                                    <input  style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2" type="button" value="목록" class="button" onclick="location.href='${pageContext.request.contextPath}/boards/BoardsList.bo?type=${type}'"/>&nbsp;
                                    <input  style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2" type="button" value="수정" class="button" onclick="location.href='${pageContext.request.contextPath}/boards/BoardsModify.bo?board_num=${board.getBoard_num()}&type=${type}'"/>&nbsp;
                                    <input  style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2" type="button" value="삭제" class ="button" onclick="location.href='${pageContext.request.contextPath}/boards/BoardsDeleteOk.bo?board_num=${board.getBoard_num()}&type=${type}'"/>&nbsp;
                                    <input  style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2" type="button" value="신고" class ="button" id="btn-modal"/></li>           
                       		 </div>
                          </c:when>         
                         <c:otherwise>
                       		 <div class="col-12" style="margin-left: 784px;margin-bottom: 20px;margin-top: 20px;">                    
                         		 	<input  style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2" type="button" value="글쓰기" class="button" onclick="location.href='${pageContext.request.contextPath}/boards/BoardsWrite.bo?type=${type}'"/>&nbsp;
                                 	<input  style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2" type="button" value="목록" class="button" onclick="location.href='${pageContext.request.contextPath}/boards/BoardsList.bo?type=${type}'"/>&nbsp;
                                  	<input  style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2" type="button" value="신고" class ="button" id="btn-modal"/>           
                       		 </div>                        
                       </c:otherwise>
                   </c:choose>
                        <header class="major">
                        
                           <h2 style="text-align:left;">${board.getBoard_title()}</h2>
                           <p style="text-align:left; font-family: 'Gaegu', cursive; margin-bottom:1%; margin-top: 10px;">작성자 : ${board.getMember_id()}</p>
                        </header>
                        <!-- 보려는 게시글 -->
                        <br>
                        <div style="width: 1000px; min-height: 200px;" id="content" >${board.getBoard_content()}</div>
						
						 <!-- 좋아요 버튼 -->
                  <button class="w3-button w3-black w3-round" id="rec_update">
                     <i class="fa fa-heart" style="font-size:16px;color:red"></i>
                     &nbsp;<span class="rec_count"></span>
                  </button> 
						


							<!-- 댓글 작성 -->
		                  <div class="reviewBox">
		                        <hr>
		                     <div class="review">
		                     
		                        <div class="reviewInfo" style="margin-bottom: 10px;">댓글 작성자 : ${sessionId}</div>
		                        <div class="reviewContent">
		                           <textarea style="width: 1000px; border: solid 1px #65cdd2; height:100px; resize: none;" id="content" name="content" rows="10" cols="100" placeholder="댓글 내용"></textarea>
		                           <input style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2" type="button" class="button" id="signUp"
		                              onclick="comment()" value="등록">
		                        </div>
		                     </div>
		                  </div>
		                  <!-- 댓글 리스트 -->
		                  <input type="button" class="primary" id="modview" name="bbttnn" onclick="getList()" value="댓글보기" style="font-family:'Gowun Dodum', sans-serif !important; font-weight: bold;    margin-top: 10px; margin-bottom: 20px;"> 
		                  <input type="button" id="modclose" name="bbttnn" onclick="closeComment()" value="댓글닫기" style="font-family: 'Gowun Dodum', sans-serif !important; font-weight: bold;    display: none; margin-top: 10px; margin-bottom: 20px;"> 
							<br>
							<input type="hidden" value="${param.board_num}" id="board_num"> <input type="hidden" value="${param.type}" id="type">
  						        <form id="replies" class="combined" style="flex-direction:column; margin:0; display:contents;">
  						        	<div id="replyBox">
  						        	<!-- 댓글 리스트 들어갈 공간-->
  						        	</div>
								</form>
								
								
								<table id="tb" style="font-size:1.3rem; display: none; width: 300px; margin:0 auto;">
                                 	
                                 	 <tr align="center" valign="middle">
	                                  	  <td id="tableData" style="text-align: center; width: 1000px">

	                                  	  </td>
	                                 </tr>



                              </table>
                  </section>
                        </div>
                     </div>
                  </div>
                  
                  <!-- modal -->
<div id="modal" class="modal-overlay" style="display: none;">
		<div class="modal-window">
			<div class="title">
				<h2 style="text-align: center">신고하기</h2>
				<br>
			</div>
			<div class="content">
				<div class="col-6 col-12-small" style="margin: 5% auto">
					<input type="checkbox" id="report_ad" name="report_ad">
					<label for="report_ad">무단 광고/홍보</label><br><br>
					
					<input type="checkbox" id="report_many" name="report_many">
					<label for="report_many">도배</label><br><br>
					
					<input type="checkbox" id="report_badword" name="report_badword">
					<label for="report_badword">욕설/비속어</label><br><br>
					
					<input type="checkbox" id="report_hate" name="report_hate">
					<label for="report_hate">혐오 발언/상징</label><br><br>
					
					<input type="checkbox" id="report_19" name="report_19">
					<label for="report_19">음란성</label><br><br>
					
					<input type="checkbox" id="report_etc" name="report_etc">
					<label for="report_etc">기타</label><br><br>
					<div class="col-12"> 
						<textarea name="demo-message" id="demo-message" placeholder="기타 사유를 작성해주세요." rows="3" style="resize: none; font-family: 'Gowun Dodum';"></textarea>
					</div>
					<ul class="actions">
						<li style="margin: 20px auto"><input type="button" value="신고하기" class="primary" style="margin-right: 20px; font-family: 'Gowun Dodum';" onclick="report()"/>
						<input type="reset" value="취소" class="close close-area" id="close-area" style="font-family: 'Gowun Dodum';"/>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>


<!-- FOOOTER 
================================================== -->
<jsp:include page="../footer.jsp"></jsp:include>
<!-- JAVASCRIPTS 
================================================== -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/javascripts/report.js"></script>
<script>
/* 
		replyList.put("totalCnt", totalCnt);
        replyList.put("realendPage", realendPage);
        replyList.put("startPage", startPage);
        replyList.put("endPage", endPage);
        replyList.put("nowPage", page);
        replyList.put("list", dao.getKnoreplyTotalList(startRow, endRow));
*/

var type = $("#type").val();
var board_num = $("#board_num").val();
var pageContext = "${pageContext.request.contextPath}";
var page = 1; 
// 댓글 리스트 페이징 처리
/* function pagee(){

	page = $(this).val();
	if(page == "&lt;"){
		page = $("#nowpage").val()-1;
	}
	if(page == "&gt;"){
		page = $("#nowpage").val()+1;
	}
	
	$.ajax({
		url : "/boards/BoardsPage.bo/",
		data: {
			"page" : page,
			"board_num" : board_num,
			"type" : type
			},
		datatype: "json",
		success : function(json){
		console.log(json)
		console.log(json.list)
			showList(json.replies);
			pageing(json.startPage, json.endPage, json.realendPage, json.nowPage);
			
		}
	})
} */

function pageing(startPage, endPage, realendPage, nowPage){
    var text2 = "";
    if(nowPage != 1){
        text2 += "<a  href='javascript:getList("+(nowPage-1)+")'>&lt;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
    }
        for(var i = startPage; i < endPage+1; i++){
            if(nowPage == i ){
                text2 += "<a id='nowpage'>"+ i +"</a>&nbsp;&nbsp;&nbsp;&nbsp;";
            }else{
            text2 += "<a href='javascript:getList("+i+")'>["+ i +"]</a>&nbsp;&nbsp;&nbsp;&nbsp;";
            }

        }
    if(nowPage != realendPage){
        text2 += "<a  href='javascript:getList("+(nowPage+1)+")'>&gt;</a>"
    }
    $("#tableData").html(text2);
}

/* window.onload=function(){
	pagee(); 
} */


function getList(page){
	$("#modview").hide();
	$("#modclose").css("display","inline-block");
	$("#tb").css("display","block");
    $.ajax({
         url : pageContext + "/boards/BoardsReplyList.bo",
        type : "post",
        /* dataType : "json", */
        dataType : "json",
        data : {
            "board_num" : board_num,
            "type" : type,
            "page" : page
        },
        success : function (json) {
            text = "";
            var check = false;
            for (var i = 0; i < json.length-1; i++) {
                    showList(json[i+1],i);
                    setTimeout(function(){},100);
                    check = true;
            }

            if (!check) {
                text = "<p>댓글이 없습니다.</p>";
                $("#replyBox").html(text);
            }

            pageing(json[0].startPage, json[0].endPage, json[0].realEndPage, json[0].nowPage);
        } ,
        error : function(){
            console.log("에러");
        }
    });
}

var replyList;


	var text = "";
function showList(replie,i){
	if(replie != null){
		text += "<div id='reply'>";
		text += "<p class='writer'>" + replie.member_id + "<span class='time'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;("+replie.reply_date+")</span></p>";
		text += "<div class='content' id='" + (i + 1) + "' style='width:100%'><pre class='btnst'>" + replie.reply_content + "</pre></div><div class='btnst'>"
		
		if("${sessionId}" == replie.member_id){
			text += "<input style='border-radius:0;  background: #65cdd2; color: white; border-color: #65cdd2;' type='button' id='ready" + (i + 1) + "' class='primary' name='bbttn'  onclick='readyToUpdate(" + (i + 1) +","+replie.reply_num+")' value='수정'>";
			text += "<input style='border-radius:0;  background: #65cdd2; color: white; border-color: #65cdd2;  display: none;' type='button' id='ok" + (i + 1) + "' class='primary' name='bbttn' onclick='update(" + (i + 1) + "," + replie.reply_num + ")'  value='수정완료'>";
			text += "<input style='border-radius:0;  background: #65cdd2; color: white; border-color: #65cdd2;' type='button' id='remove" + (i + 1) + "' class='primary' name='bbttnn' onclick='deleteComment(" + replie.reply_num + ")' value='삭제'>";
			text += "<input style='border-radius:0;  background: #65cdd2; color: white; border-color: #65cdd2;' type='button' id='btn-modal"+ (i + 1) +"' class='primary report' name='bbttnn' value='신고' onclick='modalOn()'>";
		}else{ // 작성자가 아니라면 수정 삭제 수정완료 버튼을 지워요~
			text += "<input style='border-radius:0; font-family: 'Gowun Dodum', sans-serif !important; font-weight: bold; background: #65cdd2; color: white; border-color: #65cdd2' type='button' id='btn-modal"+ (i + 1) +"' class='primary report' name='bbttnn' value='신고' onclick='modalOn()'>";
			
		}
		text += "</div></div><br><br><hr>";
	}else{
		text = "<p>댓글이 없습니다.</p>";
	}
	
	$("#replyBox").html(text);
}

//댓글 닫기
function closeComment(){
	$("#replyBox").empty();
	$("#modclose").css("display","none");
	$("#modview").show();
}

//댓글 등록
function comment(){
	var content = $("textarea[name='content']").val();
	$.ajax({
		url : pageContext + "/boards/BoardsReplyWrite.bo",
		type : 'post',
		data : {'content' : content, 'board_num' : board_num, 'type' : type},
		success : function(){
			$("textarea[name='content']").val("");
			/* 댓글 부분 없애기 */
			$("#replyBox").empty();
			setTimeout(function(){},100);
			getList();
		}
	});
}

//댓글 삭제
function deleteComment(reply_num){
	if(confirm("정말 이 댓글을 삭제하겠습니까?")){
		if(!check){
			$.ajax({
				url : pageContext + "/boards/BoradsReplyDeleteOk.bo",
				type : 'post',
				data : {'reply_num' : reply_num, 'type' : type},
				success : function(){
					getList();
				}
			});
		}else{
			alert("삭제? 그건 안되지~")
		}
	}
}

var check = false;

//수정 취소
function updateCancel(index,reply_num){
	var remove = $("#cancel" + index);
	var textarea = $("#" + index);
	var modify_ready = $("#ready" + index);
	var modify_ok = $("#ok" + index);
	
	modify_ready.css('display',"inline-block");
	modify_ok.css('display',"none");
	check = false;
	
	remove.replaceWith("<input style='border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2' type='button' id='remove" + index + "' class='primary' onclick='deleteComment(" + reply_num + ")' value='삭제'>");
	textarea.replaceWith("<div style='width:100%' class='content' id='" + index + "'><pre>" + temp_reply + "</pre></div>");
}
var temp_reply;
//댓글 수정
function readyToUpdate(index, reply_num){
	var div = $("#" + index);
	temp_reply = div.text();
	var modify_ready = $("#ready" + index);//수정버튼
	var modify_ok = $("#ok" + index);//수정 완료 버튼
	var remove = $("#remove" + index);//삭제 버튼
	if(!check){
		div.replaceWith("<textarea style='border-radius:0; width:100%; resize: none; color: black; border-color: #65cdd2' name='reply_content'  id='" + index + "' class='invert'>" + div.text() + "</textarea>");
		remove.replaceWith("<input style='border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2' type='button' id='cancel" + index + "' value='취소' onclick='updateCancel(" + index + ","+reply_num+")'>&nbsp;");
	
		modify_ready.css('display',"none");
		modify_ok.css('display', "inline-block");
		check = true;
	}else{
		alert("수정중인 댓글이 있습니다.");
	}
}


//댓글 수정완료
function update(index, reply_num){
	var content = $("textarea#" + index).val();
	var json = new Object();
	json.reply_num = reply_num;
	json.content = content;
	
	$.ajax({
		url : pageContext + "/board/BoardReplyModifyOk.bo",
		type : "post",
		data : {"reply_num" : reply_num, "content" : content, 'type' : type},
		/* data : json, */
		success : function(){
			check = false;
			getList();
		}
	});					
}

$(function(){
	   // 추천버튼 클릭시(추천 추가 또는 추천 제거)
	   $("#rec_update").click(function(){
	      $.ajax({
	         url: pageContext + "/boards/knoLikeCheck.bo",
	            type: "POST",
	            data: {
	                "no": board_num,
	                "id": '${sessionId}',
	                "type": type
	            },
	            success: function () {
	              recCount();
	            },
	      })
	   })


	   // 게시글 추천수
	    function recCount() {
	      $.ajax({
	         url: pageContext + "/boards/knoLike.bo",
	            type: "POST",
	            data: {
	                "no": board_num,
	                "type":type
	            },
	            dataType: "json",
	            success: function (count) {
	               console.log(count.cnt);
	               $(".rec_count").text(count.cnt);
	            },
	      })
	    };
	    recCount(); // 처음 시작했을 때 실행되도록 해당 함수 호출
	})   


function report(){
	alert("신고가 접수되었습니다.");
	modalOff();
}
</script>
</body>
</html>