<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Brown Carrot Market</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/user.css">

    <!-- javaScript -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="js/common/user_session_check.js"></script>
	<script type="text/javascript" src="js/common/CommonHtmlContents.js"></script>
	<script type="text/javascript" src="js/review/review.js"></script>
	<script type="text/javascript" src="js/review/ReviewHtmlContents.js"></script>

</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="spinner-grow" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>

    <!-- Header Area -->
			<jsp:include page="common/include_common_header.jsp"/>
    <!-- Header Area End -->
    
    <!-- Breadcumb Area -->
    <div class="breadcumb_area">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <h5>판매내역</h5>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="main">Home</a></li>
                        <li class="breadcrumb-item">거래내역</li>
                        <li class="breadcrumb-item active">판매내역</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcumb Area -->
    <!-- Cart Area -->
	    <div class="cart_area section_padding_100_70 clearfix">
	        <div class="container">
	            <div id="container_contents" class="row justify-content-between">
	                <div class="col-12">
	                    <div class="cart-table">
	                        <div class="table-responsive">
	                            <table class="table table-bordered mb-30">
	                                <thead>
	                                    <tr>
	                                        <!--<th scope="col"><i class="icofont-ui-delete"></i></th>-->
	                                        <th scope="col">판매일자</th>
	                                        <th scope="col">상품 이미지</th>
	                                        <th scope="col">상품 이름</th>
	                                        <th scope="col">상품 가격</th>
	                                        <th scope="col">판매상태</th>
	                                        <th scope="col">후   기</th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                
									    <c:forEach items="${productList}" var="product" varStatus="status">
		                                    <tr>
		                                        <!--<th scope="row">
		                                            <i class="icofont-close"></i>
		                                        </th>-->
		                                        <td>
				                                    <input type="hidden" class="" name="orders_no_${status.index}" value="${product.p_no}" >
		                                        	<c:set var="product_date" value="${product.p_date}"/>
		                                        	${fn:substring(product_date,0,10)}
		                                        </td>
		                                        <td>
		                                            <img src="img/product_img/${product.productImagesList[0].pi_name}" onerror="this.src='img/user_profile/newCarrot.jpg'">
		                                        </td>
		                                        <td>
		                                            <a href="product_detail?p_no=${product.p_no}">${product.p_title}</a>
		                                        </td>
		                                        <td>
		                                        	${product.p_price} 원
		                                        </td>
		                                        <td>
		                                        	<c:if test="${product.p_sell eq 1}">
		                                        		<c:out value="판매중"></c:out>
		                                        	</c:if>
		                                        	<c:if test="${product.p_sell eq 2}">
		                                        		<c:out value="예약중"></c:out>
		                                        	</c:if>
		                                        	<c:if test="${product.p_sell eq 3}">
		                                        		<c:out value="판매완료"></c:out>
		                                        	</c:if>
		                                        </td>
		                                        <td>
		                                            <div class="" name="check_review">
		                                                <!--  
		                                                <script>check_isExisted_review($('input[name=orders_no_${status.index}]').val())</script>
		                                                <a href="#" class="badge" id="${product.p_no}" seller_id="${product.userInfo.user_id}" style="height:20px;font-size:1rem"></a>
		                                                -->
		                                            </div>
		                                        </td>
		                                    </tr>
										</c:forEach>  
										
	                                </tbody>
	                            </table>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
    <!-- Cart Area End -->

    <!-- Footer Area -->
   	<jsp:include page="common/include_common_footer.jsp"/>
    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <%-- <script src="js/jquery.min.js"></script> --%>
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

</body>

</html>