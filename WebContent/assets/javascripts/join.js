/**
 *    회원가입
 */


/* 체크박스 전체 선택 */
$("#term").on("click", function(){
   if($(this).is(":checked")){
      //체크가 되어 있다면,
      $(".terms").prop("checked", true);
   }else{
      //체크되어 있지 않다면
      $(".terms").prop("checked", false);
   }
})

var check = false;

function formSubmit(){
   var form = document.joinForm;
   
   if(!form.member_id.value || !check){
      alert("아이디를 확인해주세요");
      return;
   }
   
   if(!form.member_pw.value){
      alert("비밀번호를 입력해주세요");
      return;
   }
   if(form.member_pw.value.length < 4 || form.member_pw.value.length > 20){
        alert("비밀번호는 4자리 이상 20자 이하여야 합니다.");
        form.member_pw.focus();
        return false;
     }
   
   check = false;
   
   $.each($(".terms"), function(index, item){
      if(!$(item).is(":checked")){
         check = true;
      }
   });
   
   if(check){
      alert("이용약관 동의가 필요합니다.");
      return;
   }
   
   form.submit();
}

function checkId(id){
   check = false;
   
   if(id == ""){
      $("#idCheck_text").text("");
      return;
   }
   
   $.ajax({
      url:contextPath+"/members/MemberIdCheckOkAction.me?id=" + id,
      type:"get",
      dataType:"json",
      success:function(result){
         if(result.status == "ok"){
            //DOM
            $("#idCheck_text").text("사용 가능");
            $("#idCheck_text").css("color", "blue");
            check = true;
         }else{
            //DOM
            $("#idCheck_text").text("사용 불가");
            $("#idCheck_text").css("color", "red");
         }
      },
      error:function(){
         console.log("오류");
      }
   });
}

$("input[name='member_id']").focusout(function(){
   //중복 검사
   checkId($(this).val())
})










