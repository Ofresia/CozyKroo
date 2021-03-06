<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<title>Studio Francesca - Premium Theme by WowThemes.net</title>

   <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">

<meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<!-- CSS Files-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/style.css">


<!-- FONT Files-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/stylesheets/skins/blue.css">
  
</head>
<!-- 썸머노트 폰트 한글 변경 -->
<style>
 @font-face { 
    font-family: 'NotoSansKR';
     src: url('font/NotoSansKR-Black.otf') format('opentype') } 
</style>

<style>

   h1, h2, h3, h4, a, p, li, div, input{
      font-family: 'Gowun Dodum', sans-serif;
   }

    .note-icon-bar {

     display : none;
   }
   .note-resizebar {
    display : none;
   }
     
   .btn-box input{
   	border-radius:0; 
   	background: #65cdd2; 
   	color: white; 
   	border-color: #65cdd2;
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
                  <!-- Content -->
  <section>
  	
  	<c:choose>
  		<c:when test="${type == 1}">
   <h1 style="margin-top: 20px; margin-bottom: 10px; font-weight: bold;">육아 노하우</h1>
  		</c:when>
  		<c:when test="${type == 2}">
   <h1 style="margin-top: 20px; margin-bottom: 10px; font-weight: bold;">내 남편 자랑</h1>
  		</c:when>
  		<c:when test="${type == 3}">
   <h1 style="margin-top: 20px; margin-bottom: 10px; font-weight: bold;">중고 물품 나눔</h1>
  		</c:when>
  	</c:choose>

    <form id="postForm" name="postForm" action="${pageContext.request.contextPath}/boards/BoardsWriteOk.bo" method="POST">

	
    <!-- summernote와 관련된 영역 -->
	
	<input type="text" placeholder ="제목" name="title" id="title" style="border: solid 0.1px #a9a9a9;">
	
    <textarea id="summernote" name="contents" onKeyup="inputLimitByteChecked( this );" data-byte="4000" style="resize: none;"></textarea>



    <!-- 버튼과 관련된 영역 -->

    <div align="center" class="btn-box">

     <input type="button" id="sendSummer" class="button" value="작성">
	
      <a class="button" onclick="history.back()">취소</a>

    </div>
</form>

</section>
</div>





<!-- FOOOTER 
================================================== -->
<jsp:include page="../footer.jsp"></jsp:include>
<!-- JAVASCRIPTS 
================================================== -->

 <!-- include libraries(jQuery, bootstrap) -->

   <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
 
    <!-- include summernote css/js-->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

    <!-- include summernote-ko-KR -->
   <script src="${pageContext.request.contextPath}\assets\css\summernote\lang\summernote-ko-KR.js"></script>
<script>var contextPath = "${pageContext.request.contextPath}";</script>
<script>

$("#sendSummer").click(function(){
	if(!$("#title").val()){
		alert("제목을 입력해주세요.");
		return;
	}
	if(!$("#summernote").val()){
		alert("내용을 입력해주세요.");
		return;
	}
	document.postForm.submit();
})

$(document).ready(function () {
   var fontList = ['맑은 고딕', '돋움', '궁서', '굴림', '굴림체', '궁서체', '나눔 고딕', '바탕', '바탕체', '새굴림', 'HY견고딕', 'HY견명조', 'HY궁서B', 'HY그래픽M', 'HY목각파임B', 'HY신명조', 'HY얕은샘물M', 'HY엽서L', 'HY엽서M', 'HY중고딕', 'HY헤드라인M', '휴먼매직체', '휴먼모음T', '휴먼아미체', '휴먼둥근헤드라인', '휴먼편지체', '휴먼옛체'];
   var setting = {
   
    placeholder:  '500자 이내로 자유롭게 글을 작성할 수 있습니다. 명예훼손이나 비방, 불쾌감을 주는 글, 욕설, 남을 모욕하는 글은 제재가 있을 수 있습니다.',
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
       ],
       
     //콜백 함수
     callbacks : { 
            onImageUpload: function(files, editor, welEditable) {
             for (var i = files.length - 1; i >= 0; i--) {
               sendFile(files[i], this);
           }
        }
     }
   
  };
$('#summernote').summernote(setting);
})


function sendFile(file, el) {
      var form_data = new FormData();
      form_data.append('file', file);
      $.ajax({
        data: form_data,
        type: "POST",
        url: contextPath +"/boards/Fileupload.bo",
        cache: false,
        contentType: false,
        dataType : "json",
        enctype: 'multipart/form-data',
        processData: false,
        success: function(url) {
        	setTimeout(function(){
	          $(el).summernote('editor.insertImage', url.url);
        	},100)
        }
      });
    }
function inputLimitByteChecked( obj ) {
    var calByte = {
        getByteLength : function( string ) {
            if( string == null || string.length == 0 ) {
                return 0;
            }
            let size = 0;
            for( let num = 0; num < string.length; num++ ) {
                size += this.charByteSize( string.charAt( num ) );
            }
            return size;
        }
        , cutByteLength : function( string, length ) {
            if( string == null || string.length == 0 ) {
                return 0;
            }
            let size = 0;
            let rIndex = string.length;
            for( let num = 0; num < string.length; num++ ) {
                size += this.charByteSize( string.charAt( num ) );
                if( size == length ) {
                    rIndex = num + 1;
                    break;
                } else if( size > length ) {
                    rIndex = num;
                    break;
                }
            }
            return string.substring( 0, rIndex );
        }
        , charByteSize : function( ch ) {
            if( ch == null || ch.length == 0 ) {
                return 0;
            }
            let charCode = ch.charCodeAt( 0 );
            if( charCode <= 0x00007F ) {
                return 1;
            } else if( charCode <= 0x0007FF ) {
                return 2;
            } else if( charCode <= 0x00FFFF ) {
                return 3;
            } else {
                return 4;
            }
        }
    };
   	var content = document.getElementsByClassName("note-handle")[0];
    
    if( calByte.getByteLength( content.value ) > content.dataset.byte ) {
        alert("작성할 수 있는 텍스트 글자 범위를 초과하였습니다.");
        content.value = calByte.cutByteLength( content.value, content.dataset.byte );
    } else {
        document.getElementsByClassName( "viewByte" )[0].innerText = calByte.getByteLength( content.value );

    }
}
    
</script>   
</body>
</html>
    