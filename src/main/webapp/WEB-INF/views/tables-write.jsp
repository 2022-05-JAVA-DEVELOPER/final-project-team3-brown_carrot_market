<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="toDay" class="java.util.Date" />
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- include_common_top -->
    <!-- include_common_top -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/board.css">
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
    <!-- 
    <div id="preloader">
        <div class="spinner-grow" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
 -->
    <!-- Header Area -->
  	<jsp:include page="common/include_common_header.jsp"/>
    <!-- Header Area End -->
    
    <!-- Breadcumb Area -->
    <div class="breadcumb_area">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <h5>Board</h5>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Board</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcumb Area -->

    <div class="shortcodes_area section_padding_100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="shortcodes_title mb-30">
                        <h4>공지사항 등록</h4>
                    </div>
                    <div class="shortcodes_content">
                        <div class="table-responsive">
                        	<form id="notice_write_form" method="post">
	                            <table class="table mb-0 table-bordered">
	                                <thead>
	                                <tr>
	                                	<th>제목</th>
	                                	<th>고정글</th>
	                                	<th>날짜</th>
	                                </tr>
	                                    <tr>
	                                        <th scope="col" class="board_title">
	                                        	<input type="text" name="notice_title" id="notice_title_txt" placeholder=" title" />
	                                        </th>
	                                        <th scope="col" class="board_fix">
	                                        	<input type="checkbox" name = "notice_fix" value="1" id="notice_fix" >
	                                        	<input type="hidden" name = "notice_fix" value="0" id="notice_fix_hidden" >
	                                        </th>
	                                        <th scope="col" class="board_date"><fmt:formatDate value='${toDay}' pattern='yyyy-MM-dd' /></th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                    <tr>
	                                        <td id="notice_content_td" colspan="3">
	                                        	<textarea name="notice_content" id="notice_content_area" placeholder=" content"></textarea>
	                                        </td>
	                                    </tr>
	                                </tbody>
	                            </table>
                      				<input type="hidden" name="pageno" value="${pageno}" />
                			</form>
                        </div>
                    </div>
                    	<div id="notice_btn_container">
							<input class="notice_btn new_write" type="button" value="등록" />
							<input class="notice_btn list" type="button" pageno="${pageno}" value="목록" />
                    	</div>
                </div>
            </div>
            
         </div>
    </div>     
            
    <!-- Footer Area -->
    <!-- Footer Area -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="js/notice/board.js" defer></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</body>

</html>