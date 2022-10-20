<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>우리동네 게시글 보기</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">
    
    <!-- 슬라이드쇼 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <!-- toast -->
 <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"/>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

  <script>
    $(document).ready(function(){
      $('.slider').bxSlider();
    });
  </script>
    

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/townBoard.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
	<!-- toast -->
 	<link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"/>

	
	
	
</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="spinner-grow" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>

    <!-- Header Area -->
   		<!-- include_common_header.jsp start-->
			<jsp:include page="common/include_common_header.jsp"/>
		<!-- include_common_header.jsp end-->
    <!-- Header Area End -->
    
    <!-- Breadcumb Area -->
    <div class="breadcumb_area">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <h5>게시글 상세보기</h5>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">흙당근마켓</a></li>
                        <li class="breadcrumb-item active">우리동네 게시글 상세보기</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcumb Area -->

    <!-- Single Blog Post Area -->
    <section class="singl-blog-post-area section_padding_100_50">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-4">
                    <div class="blog_sidebar">
                    
                     <!-- Catagory -->
                    
                        <div class="widget-area catagory_section mb-30">
                        <div id = "category_list">
                            <h6>Catagory</h6>
                            <ul>
                              <li>
	                              <input type="hidden" class="townBoardCtgrNo" name="t_ctgr_no1" value=1>
	                              <a href="#" onclick="changeQnaList(1,1)">동네생활 <span class="text-muted"></span></a>
                              </li>
                              <li>
	                              <input type="hidden" class="townBoardCtgrNo" name="t_ctgr_no2" value=2>
	                              <a href="#" onclick="changeQnaList(1,2)">같이해요<span class="text-muted"></span></a>
                              </li>
                              <li>
	                              <input type="hidden" class="townBoardCtgrNo" name="t_ctgr_no3" value=3>
	                              <a href="#" onclick="changeQnaList(1,3)">동네질문<span class="text-muted"></span></a>
                              </li>
                              <li>
	                              <input type="hidden" class="townBoardCtgrNo" name="t_ctgr_no4" value=4>
	                              <a href="#" onclick="changeQnaList(1,4)">동네맛집<span class="text-muted"></span></a>
                              </li>
                              <li>
	                              <input type="hidden" class="townBoardCtgrNo" name="t_ctgr_no5" value=5>
	                              <a href="#" onclick="changeQnaList(1,5)">취미생활<span class="text-muted"></span></a>
                              </li>
                              <li>
	                              <input type="hidden" class="townBoardCtgrNo" name="t_ctgr_no6" value=6>
	                              <a href="#" onclick="changeQnaList(1,6)">일상<span class="text-muted"></span></a>
                              </li>
                              <li>
	                              <input type="hidden" class="townBoardCtgrNo" name="t_ctgr_no7" value=7>
	                              <a href="#" onclick="changeQnaList(1,7)">분실/실종센터<span class="text-muted"></span></a>
                              </li>
                              <li>
	                              <input type="hidden" class="townBoardCtgrNo" name="t_ctgr_no8" value=8>
	                              <a href="#" onclick="changeQnaList(1,8)">동네사건사고<span class="text-muted"></span></a>
                              </li>
                              <li>
	                              <input type="hidden" class="townBoardCtgrNo" name="t_ctgr_no9" value=9>
	                              <a href="#" onclick="changeQnaList(1,9)">해주세요<span class="text-muted"></span></a>
                              </li>
                              <li>
	                              <input type="hidden" class="townBoardCtgrNo" name="t_ctgr_no10" value=10>
	                              <a href="#" onclick="changeQnaList(1,10)"s>동네사진전<span class="text-muted"></span></a>
                              </li>
                                
                               
                            </ul>
                        </div>
                    </div>
                    
                        

                        <!-- Latest Post -->
                        <div class="widget-area latest_post mb-30">
                            <h6>인기글</h6>

                            <!-- Recent Post1 -->
                            
                           	<c:forEach var="townBoardTop" items="${townBoardListTop}" begin="0" end="2">
	                            <div class="single_latest_post">
	                            
	                                <div class="post-thumbnail">
	                                <c:if test="${townBoardTop.townImageList.size() != 0}">
	                                    <img src="img/townBoard-img/${townBoardTop.townImageList[0].t_img_name}" alt="blog-post-thumb">
	                                	</c:if>
	                                </div>
	                                <div class="post-content">
	                                    <a href="#">${townBoardTop.t_title }</a>
	                                    <p>${townBoardTop.t_count }</p>
	                                </div>
	                            </div>
                            </c:forEach>
                             

                            <!-- Recent Post2 -->
                            <!-- 
                            <div class="single_latest_post">
                                <div class="post-thumbnail">
                                    <img src="img/bg-img/lp-2.jpg" alt="">
                                </div>
                                <div class="post-content">
                                    <a href="#">7 Quick Ways to Make a Great Event Successful</a>
                                    <p>5 min ago</p>
                                </div>
                            </div>
							 -->
                        
                        
                    </div>
                    <!-- Search Post -->
                        <div class="widget-area search_post mb-30">
                            <h6>게시글 검색</h6>
                            <form action="#" method="get">
                                <input id="townBoardSearch" type="search" class="form-control" placeholder="검색">
                                <button type="submit" class="btn d-none">Submit</button>
                            </form>
                        </div>
                    
                    
                    
                </div>
                </div>
                
                <div class="col-12 col-lg-8">
                
                <!-- Blog Details Area -->
                    <div id = "townBoard_list_tbody_all">
                    <div class="blog-details-area mb-50" id="townBoard_list_tbody">   
                
                <!-- 슬라이드쇼 시작 -->
                <div>
                 <ul class="bxslider">
		       <c:forEach var="townImage" items="${townImageList}" begin="0"  step="1"> 
                 <c:if test="${townBoard.townImageList.size() != 0}">
		 	   </c:if>
		      	<li><img src="img/townBoard-img/${townImage.t_img_name}" alt="blog-img"  ></li>
		 	   </c:forEach> 
      </ul>
  </div>
				 <!-- 슬라이드쇼 끝 -->               
                
                                         
                        <!-- Image -->
                        <!-- 
                        <c:if test="${townBoard.townImageList.size() != 0}">
                        	<img class="mb-30" src="img/townBoard-img/${townBoard.townImageList[0].t_img_name}" alt="blog-img">
                        </c:if>
                         -->
                        <!-- Blog Title -->
                        <h3 class="mb-30">${townBoard.t_title}</h3>
                        
                        <!-- Bar Area -->
                        <div class="status-bar mb-15">
                            <a href="#" id="viewWriterId"><i class="icofont-user-male"></i>${townBoard.userInfo.user_id }</a>
                            <a href="#"><i class="icofont-ui-clock"></i> ${townBoard.t_date }</a>
                            <a href="#"><i class="fa fa-location-arrow"></i> ${townBoard.t_address_name }</a>
                           
                           
                        </div>

                        <!-- Single Blog Details Area -->
                        <p class = "">${townBoard.t_content}</p>
                    </div>
					
					<input class="townBoard_btn update_form" type="button" pageno="${pageno}" t_no="${townBoard.t_no}" value="수정하기" />
					<input class="townBoard_btn delete" type="button" pageno="${pageno}" t_no="${townBoard.t_no}" value="삭제하기" />
					<%-- <input class="townBoard_btn wishlist_add" type="button" pageno="${pageno}" t_no="${townBoard.t_no}" value="관심등록" /> --%>
					
                    <div class="comments-area">
                        <div class="comment_area mb-50 clearfix">
                            <h5 class="mb-4">Comments</h5>
                            
                            <ol>
                                
								 <li class="single_comment_area">
								 
								 <c:set var="replyLength" value="${townReplyList}"/>
								 <input type="hidden" id="ReplyNumber" value="${fn:length(replyLength)}">
								 
								<c:forEach var="townReply" items="${townReplyList}" varStatus="status">
								
								<!-- 댓글 -->
								 <c:if test="${townReply.depth == 1}">
                                    <div class="comment-wrapper clearfix">
                                        <div class="comment-meta">
                                     
                                             
                                             <div class="comment-author-img">
                                            
                                                <img class="img-circle" src="img/user_profile/${townReply.userInfo.user_profile}" alt="">
                                                
                                            </div>
                                        </div>
                                        <div class="comment-content">
                                            <h5 class="comment-author" id="viewReplyWriterId_${status.index}">${townReply.userInfo.user_id}</h5>
                                            <p>${townReply.t_reply_title }</p>
                                            <p>${townReply.t_reply_content }</p>
                                            
                                            <input class="townReply delete reply" id="townReplyDeletebtn_${status.index}" type="button" pageno="${pageno}" t_no="${townBoard.t_no }" t_reply_no="${townReply.t_reply_no}" value="삭제하기" />
                                            <button class="heading">대댓글달기</button>
                                            
                                            <div  class="content">
                                            <form class="townReReply_write_form_${status.index }"  method="post">
				                                <div class="row">
				                                    <div class="col-12 rereply">
				                                        <div class="form-group mb-30">
				                                            <input type="text" name="t_reply_title" class="t_reply_title" placeholder="대댓글 제목" tabindex="1">
				                                        </div>
				                                    </div>
				                                    <div class="col-12 rereply">
				                                        <div class="form-group mb-30">
				                                            <textarea class="form-control rereply" name="t_reply_content" class="t_reply_content" cols="30" rows="7" placeholder="내용" tabindex="2"></textarea>
				                                        </div>
				                                    </div>
				                                    <input type="hidden" class="form-control" name="t_no" value="${townReply.townBoard.t_no}"/>
                                 				    <input type="hidden" class="form-control" name="page_no" value="${pageno}" />
                                 				    <input type="hidden" class="form-control" name="t_reply_no" value="${townReply.t_reply_no}" />
                                 				    <input type="hidden" class="form-control" name="groupno" value="${townReply.groupno}" />
                                 				    <!-- 
                                 				    <input type="hidden" class="form-control" name="step" value="${townReply.step}" />
                                 				     -->
				                                    <input type="hidden" class="form-control" name="depth" value="2"/>
				                                    <div class="col-12 ">
				                                        <button  class="btn btn-primary rereply" index="${status.index }" type="submit" >등록</button>
				                                    </div>
				                                </div>
				                            </form>
				                            </div>
                                            
                                        </div>
                                    </div>
                                    </c:if>
                                    
                                    <!-- 대댓글  -->
                                    <c:if test="${townReply.depth != 1}">
                                    <ul class="children">
                                        <li class="single_comment_area">
                                            <div class="comment-wrapper clearfix">
                                                <div class="comment-meta">
                                                    <div class="comment-author-img">
                                                        <img class="img-circle" src="img/user_profile/${townReply.userInfo.user_profile}" alt="">
                                                    </div>
                                                </div>
                                                <div class="comment-content">
		                                            <h5 class="comment-author" id="viewReReplyWriterId_${status.index}">${townReply.userInfo.user_id}</h5>
		                                            <p>${townReply.t_reply_title }</p>
		                                            <p>${townReply.t_reply_content }</p>
		                                            <input class="townReply delete rereply" id="reReplyDeleteBtn_${status.index}" type="button" pageno="${pageno}" t_no="${townBoard.t_no }" t_reply_no="${townReply.t_reply_no}" value="삭제하기" />
                                           
				                            
		                                        </div>
                                            </div>
                                        </li>
                                    </ul>
                                    </c:if>
                                   
                                    </c:forEach> 
                                    
                                </li>
								 
								 
                            </ol>
                        </div>

                        <div class="contact_from mb-50">
                            <h5 class="mb-4">댓글</h5>
                            
							<!-- 메인 댓글달기 -->
                            <form class="townReply_Main_write_form" method="post">
                            
                                <div class="row">
                                   
                                    <div class="col-12">
                                        <div class="form-group mb-30">
                                            <input type="text" name="t_reply_title" class="t_reply_title" placeholder="댓글 제목" tabindex="1">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group mb-30">
                                            <textarea class="form-control" name="t_reply_content" class="t_reply_content" cols="30" rows="7" placeholder="내용" tabindex="2"></textarea>
                                        </div>
                                    </div>
                                    <input type="hidden" class="form-control" name="t_no" value="${townBoard.t_no}"/>
                                    <input type="hidden" class="form-control" name="page_no" value="${pageno}" />
                                    <input type="hidden" class="form-control" name="step" value="1"/>
                                    <input type="hidden" class="form-control" name="depth" value="1"/>
                                    <div class="col-12">
                                        <button class="btn btn-primary reply"  id="townMainReplyBtn" type="submit">댓글 등록</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                
				</div>
                
            </div> 
        </div>
    </section>
    <!-- Single Blog Post Area -->

    <!-- Footer Area -->
    	<!-- include_common_bottom.jsp start-->
			<jsp:include page="common/include_common_footer.jsp"/>
		<!-- include_common_bottom.jsp end-->
    <!-- Footer Area -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    
	
	<!-- javaScript -->
	<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script> -->
	
	
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/default/classy-nav.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/default/scrollup.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jarallax.min.js"></script>
    <script src="js/jarallax-video.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/default/active.js"></script>
    
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>  
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
    
  
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	  <script src="js/townBoard/townBoard.js"></script>
    <script type="text/javascript" src="js/user/UserHtmlContents.js"></script>
	<script type="text/javascript" src="js/common/CommonHtmlContents.js"></script>
	<script type="text/javascript" src="js/common/user_session_check.js"></script>





	<style type="text/css">
#toast-container > .toast {
    background-image: none !important;
}

 #toast-container > .toast:before {
    position: relative;
    font-family: FontAwesome;
    font-size: 24px;
    line-height: 18px;
    float: left;
    color: #FFF;
    padding-right: 0.5em;
    margin: auto 0.5em auto -1.5em;
}       
    #toast-container > .toast-warning:before {
     content: "\f27a"; 
 
}

#toast-container > .toast-success:before {
     content: "\f2b5"; 
 
} 


</body>

</html>