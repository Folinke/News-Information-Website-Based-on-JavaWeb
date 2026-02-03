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
<title>新闻浏览</title>

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

                                    <li><a href="#"> ${news.ctime }</a></li>
                                </ul>
                                <h2>${news.title }</h2>
                                <p>${news.detail }</p>
                                 </div>

                        
                        



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
