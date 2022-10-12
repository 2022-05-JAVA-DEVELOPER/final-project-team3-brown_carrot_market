<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Bigshop | Responsive E-commerce Template</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/townBoard.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.min.css">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.9/dist/sweetalert2.all.min.js"></script>
	
	<!-- javaScript -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="js/user/UserHtmlContents.js"></script>
	<script type="text/javascript" src="js/common/CommonHtmlContents.js"></script>
	<script type="text/javascript" src="js/common/user_session_check.js"></script>
	
	
	
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

    <!-- Breadcumb Area -->
    <div class="breadcumb_area">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <h5>Blog</h5>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active">Blog</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcumb Area -->

    <!-- Blog Area -->
    <section class="blog_area section_padding_100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-5 col-lg-4">
                    <div class="blog_sidebar">
                    
                     <!-- Catagory -->
                        <div class="widget-area catagory_section mb-30">
                            <h6>Catagory</h6>
                            <ul>
                                <li><a href="#">동네소식 <span class="text-muted">(21)</span></a></li>
                                <li><a href="#">같이해요 <span class="text-muted">(5)</span></a></li>
                                <li><a href="#">동네질문 <span class="text-muted">(17)</span></a></li>
                                <li><a href="#">동네맛집 <span class="text-muted">(11)</span></a></li>
                                <li><a href="#">분실/실종센터 <span class="text-muted">(16)</span></a></li>
                                <li><a href="#">동네사진전 <span class="text-muted">(9)</span></a></li>
                            </ul>
                        </div>
                    
                    
                        

                        <!-- Latest Post -->
                        <div class="widget-area latest_post mb-30">
                            <h6>인기글</h6>

                            <!-- Recent Post1 -->
                            
                           	<c:forEach var="townBoard" items="${townBoardList.itemList}" begin="0" end="2">
	                            <div class="single_latest_post">
	                            
	                                <div class="post-thumbnail">
	                                <c:if test="${townBoard.townImageList.size() != 0}">
	                                    <img src="img/townBoard-img/${townBoard.townImageList[0].t_img_name}" alt="blog-post-thumb">
	                                	</c:if>
	                                </div>
	                                <div class="post-content">
	                                    <a href="#">${townBoard.t_title }</a>
	                                    <p>${townBoard.t_count }</p>
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
                            <h6>Search Post</h6>
                            <form action="#" method="get">
                                <input type="search" class="form-control" placeholder="Enter Keyword...">
                                <button type="submit" class="btn d-none">Submit</button>
                            </form>
                        </div>
                    
                    
                    
                </div>
                </div>
                
                
                
                <div class="col-12 col-md-7 col-lg-8">
                    <!-- Single News Area -->
                    
                    <div class="single_blog_area">
                    <div id="townBoard_list_tbody">
                    <c:forEach var="townBoard" items="${townBoardList.itemList}">
                        <div class="blog_post_thumb">
                       	<c:if test="${townBoard.townImageList.size() != 0}">
                            <a href="single-blog.html"><img src="img/townBoard-img/${townBoard.townImageList[0].t_img_name}" alt="blog-post-thumb"></a>
                            </c:if>
                            <!-- Post Date -->
                            <div class="post-date">
                                <a href="#">${townBoard.townCategory.t_ctgr_name}</a>
                                <span>조회수 : ${townBoard.t_count}</span>
                            </div>
                        </div>
                        <div class="blog_post_content">
                            <a href="single-blog.html" class="blog_title">${townBoard.t_title}</a>
                            <p>${townBoard.t_content}</p>
                            <a href="single-blog.html">Continue Reading <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                        </div>
                   </c:forEach>
                    </div>
                    </div>

                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-8 ml-lg-auto">
                    <!-- Shop Pagination Area -->
                    
                    <div class="shop_pagination_area mt-5">
                        <nav aria-label="Page navigation">
                            <ul class="pagination pagination-sm justify-content-center">

                            	<c:if test="${townBoardList.pageMaker.prevPage > 0}">  
	            					<li class="page-item">
	                                    <button class="page-link" onclick="changeQnaList(${data.pageMaker.prevPage});"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
	                               	 </li>
                                </c:if>
                                <c:forEach var="no" begin="${townBoardList.pageMaker.blockBegin}" end="${townBoardList.pageMaker.blockEnd}">
									<c:if test="${townBoardList.pageMaker.curPage == no}">
										<li class="page-item active"><button class="page-link" href="#">${no}</button></li>
									</c:if>
									<c:if test="${townBoardList.pageMaker.curPage != no}">
										<li class="page-item"><button class="page-link page" onclick="changeQnaList(${no})">${no}</button></li>
									</c:if>
                                </c:forEach>
                                <c:if test="${townBoardList.pageMaker.curPage < townBoardList.pageMaker.totPage}">  
	                                <li class="page-item">
				                        <button class="page-link" onclick="changeQnaList(${townBoardList.pageMaker.nextPage})"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
			                    	 </li>
                                </c:if>

                            </ul>
                        </nav>
                    </div>
                    
                    
                    
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Area End -->

    <!-- Footer Area -->
    	<!-- include_common_bottom.jsp start-->
			<jsp:include page="common/include_common_footer.jsp"/>
		<!-- include_common_bottom.jsp end-->
    <!-- Footer Area -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
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
    <script src="js/townBoard/townBoard.js"></script>

</body>

</html>