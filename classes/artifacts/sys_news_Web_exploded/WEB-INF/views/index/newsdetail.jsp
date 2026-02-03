<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta Tags -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="wpoceans">

<!-- Page Title -->
<title></title>

<!-- Icon fonts -->
<link href="assets/css/themify-icons.css" rel="stylesheet">
<link href="assets/css/flaticon.css" rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">

<!-- Plugins for this template -->
<link href="assets/css/animate.css" rel="stylesheet">
<link href="assets/css/owl.carousel.css" rel="stylesheet">
<link href="assets/css/owl.theme.css" rel="stylesheet">
<link href="assets/css/slick.css" rel="stylesheet">
<link href="assets/css/slick-theme.css" rel="stylesheet">
<link href="assets/css/odometer-theme-default.css" rel="stylesheet">
<link href="assets/css/owl.transitions.css" rel="stylesheet">
<link href="assets/css/jquery.fancybox.css" rel="stylesheet">
<link href="assets/css/magnific-popup.css" rel="stylesheet">
<link href="assets/css/nice-select.css" rel="stylesheet">
<link href="assets/css/bootstrap-datepicker.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="home">

	<!-- start page-wrapper -->
	<div class="page-wrapper">

		<!-- start preloader -->
		<jsp:include page="/WEB-INF/views/index/header.jsp" />

		<!-- start wpo-blog-single-section -->

	<section class="wpo-blog-single-section section-padding">
            <div class="container">
                <div class="row">
                    <div class="col col-md-12">
                        <div class="wpo-blog-content clearfix">
                            <div class="post">
                                <div class="entry-media">
                                    <img src="/images/${news.img }" alt="">
                                </div>
                                <ul class="entry-meta">
                                    <li><a href="#"> ${news.see_count }人浏览</a></li>
                                          <li><a href="#"> ${news.comment_count }人评论</a></li>
                                    <li><a href="#"> ${news.times }</a></li>
                                </ul>
                                <h2>${news.title }</h2>
                                <p>${news.content }</p>
                                 </div>

                        
                        
                            <div class="more-posts clearfix">
                                <div class="previous-post">
                                    <a href="IndexServlet?action=toNewsDetail&nid=${news.id-1}">
                                        <span class="post-control-link">上一篇</span>
                                    </a>
                                </div>
                                <div class="next-post">
                                    <a href="IndexServlet?action=toNewsDetail&nid=${news.id+1}">
                                        <span class="post-control-link">下一篇</span>
                                    </a>
                                </div>
                            </div> <!-- end more-posts -->

                            <div class="comments-area">
                                <div class="comments-section">
                                    <h3 class="comments-title">评论</h3>
                                    <ol class="comments">
                                    	<c:forEach items="${commentslist}" var="u">
                                        <li class="comment even thread-even depth-1" id="comment-1">
                                            <div id="div-comment-1">
                                                <div class="comment-theme">
                                                    <div class="comment-image"><img src="/images/${u.img }" alt="" style="width:80px;height:80px"></div>
                                                </div>
                                                <div class="comment-main-area">
                                                    <div class="comment-wrapper">
                                                        <div class="comments-meta">
                                                            <h4>${u.creater } <span class="comments-date">${u.times }</span></h4>
                                                        </div>
                                                        <div class="comment-area">
                                                            <p>${u.comments }</p>
                                                          
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </li>
</c:forEach>
                                

                                    </ol>
                                </div> <!-- end comments-section -->
<c:if test="${user != null}">
                                <div class="comment-respond">
                                    <h3 class="comment-reply-title">发布评论</h3>
                                    <form method="post" action="CommentsServlet?action=addComments">
                                    <input  type="hidden" name="category" value="1">
                                        <input type="hidden" name="nid" value="${news.id}">
                                         <div class="form-textarea">
                                            <textarea id="comments" name="comments" placeholder="Write Your Comments..."></textarea>
                                        </div>
                                        <div class="form-submit">
                                            <input id="submit" value="Reply" type="submit">
                                        </div>
                                    </form>
                                </div>
                                </c:if>
                            </div> <!-- end comments-area -->
                        </div>
                    </div>
          
                </div>
            </div> <!-- end container -->
        </section>


	</div>


	<!-- All JavaScript files
    ================================================== -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>

	<!-- Plugins for this template -->
	<script src="assets/js/jquery-plugin-collection.js"></script>

	<script src="assets/js/bootstrap-datepicker.min.js"></script>


	<!-- Custom script for this template -->
	<script src="assets/js/script.js"></script>
</body>
</html>
