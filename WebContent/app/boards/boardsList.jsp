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

   h1, h2, h3, h4, a, p, li, div, input, button{
      font-family: 'Gowun Dodum', sans-serif;

   }
   .col{
   	text-align: center;
   }
   
</style>
<body>
<!-- HEADER-->
<jsp:include page="../header.jsp"/>

<!-- article -->

<div class="row" style="width:1000px">
<!-- Wrapper -->
               <div class="wrapper">
                  <div class="inner">

                     <!-- Main -->
                        <section class="main">

                           <a href="#" class="image main"><img src="${pageContext.request.contextPath}/assets/images/boardMain.png" alt="" /></a>
                           <header class="major">
                              
                              <c:if test="${type==1}">
                              <h1 style ="font-family: 'Gaegu', cursive">?????? ?????????</h1>
                              </c:if>
                              <c:if test="${type==2}">
                              <h1 style ="font-family: 'Gaegu', cursive">??? ?????? ??????</h1>
                              </c:if>
                              <c:if test="${type==3}">
                              <h1 style ="font-family: 'Gaegu', cursive">?????? ?????? ??????</h1>
                              </c:if>
                           </header>

                           <div class="table-wrapper">
                              <div style="justify-content:space-between; width: 1000px; height: 31px;">
                                 <button class="button" style="border-radius:0; background: #65cdd2; color: white; border-color: #65cdd2;float: right;" onclick="location.href='${pageContext.request.contextPath}/boards/BoardsWrite.bo?type='+${type}">??? ??????</button>
                              </div>
                              <table style="width: 1000px;">
                                 <caption style="text-align:left;">
                                	<span>??? ?????? : ${totalCnt}???</span>
                                 </caption>
                                 <thead>
                                    <tr>
                                       <th style="width: 70px; text-align: center;">??????</th>
                                       <th style="width: 100px; text-align: center;">?????????</th>
                                       <th style="text-align: center;">??????</th>
                                       <th style="width: 100px; text-align: center;">??????</th>
                                       <th style="width: 80px; text-align: center;">?????????</th>
                                       <th style="width: 80px; text-align: center;">?????????</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <c:choose>
                                       <c:when test="${boardList != null and fn:length(boardList) > 0}">
                                          <c:forEach var="board" items="${boardList}">
                                          <tr>
                                             <td class="col">${board.getBoard_num()}</td>
                                             <td class="col">${board.getMember_id()}</td>
                                             <td>
                                                <a href="${pageContext.request.contextPath}/boards/BoardsView.bo?type=${type}&board_num=${board.getBoard_num()}">${board.getBoard_title()}</a>
                                             </td>
                                             <td class="col">${board.getBoard_date()}</td>
                                             <td class="col">${board.getBoard_viewNum()}</td>
                                             <td class="col">${board.getBoard_like()}</td>
                                          </tr>
                                          </c:forEach>
                                       </c:when>
                                       <c:otherwise>
                                          <tr>
                                             <td colspan="5" align="center">????????? ???????????? ????????????.</td>
                                          </tr>
                                       </c:otherwise>
                                    </c:choose>
                                 </tbody>
                              </table>
                              
                              <table style="font-size:1.3rem; width: 300px; margin-left: 75%;">
                                 <tr align="center" valign="middle">
                                    <td style="text-align: center;">
                                    <c:if test="${nowPage > 1}">
                                       <a href="${pageContext.request.contextPath}/boards/BoardsList.bo?page=${nowPage-1}&type=${type}">&lt;</a>
                                    </c:if>
                                    
                                    <c:forEach var="i" begin="${startPage}" end="${endPage}">
                                          <c:choose>
                                             <c:when test="${i eq nowPage}">
                                                <c:out value="[${i}]"/>&nbsp;
                                             </c:when>
                                             <c:otherwise>
                                                <a href="${pageContext.request.contextPath}/boards/BoardsList.bo?page=${i}&type=${type}"><c:out value="${i}"/></a>
                                             </c:otherwise>
                                          </c:choose>
                                    </c:forEach>
                                    
                                    <c:if test="${nowPage != realEndPage}">
                                       <a href="${pageContext.request.contextPath}/boards/BoardsList.bo?page=${nowPage+1}&type=${type}">&gt;</a>
                                    </c:if>
                                    </td>
                                 </tr>
                              </table>
                           </div>
                        </section>

                  </div>
               </div>

               </div>



<!-- FOOOTER 
================================================== -->
<jsp:include page="../footer.jsp"></jsp:include>
<!-- JAVASCRIPTS 
================================================== -->
<!-- Javascript files placed here for faster loading -->
<script src="${pageContext.request.contextPath}/assets/javascripts/foundation.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/javascripts/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/assets/javascripts/elasticslideshow.js"></script>
<script src="${pageContext.request.contextPath}/assets/javascripts/jquery.carouFredSel-6.0.5-packed.js"></script>
<script src="${pageContext.request.contextPath}/assets/javascripts/jquery.cycle.js"></script>
<script src="${pageContext.request.contextPath}/assets/javascripts/app.js"></script>
<script src="${pageContext.request.contextPath}/assets/javascripts/modernizr.foundation.js"></script>
<script src="${pageContext.request.contextPath}/assets/javascripts/slidepanel.js"></script>
<script src="${pageContext.request.contextPath}/assets/javascripts/scrolltotop.js"></script>
<script src="${pageContext.request.contextPath}/assets/javascripts/hoverIntent.js"></script>
<script src="${pageContext.request.contextPath}/assets/javascripts/superfish.js"></script>
<script src="${pageContext.request.contextPath}/assets/javascripts/responsivemenu.js"></script>
</body>
</html>