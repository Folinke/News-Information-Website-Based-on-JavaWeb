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
<!-- Page Title -->
<title>反馈信息</title>

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
	<jsp:include page="/WEB-INF/views/index/header.jsp" />
  
      
        


        <!-- serch-area-end -->

        <!-- wpo-about-area start -->
        <div class="wpo-about-area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-6 colsm-12">
                        <div class="wpo-about-img">
                            <img src="assets/images/error-404.png" alt="">
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6 colsm-12">
                        <div class="wpo-about-text">
                            <div class="wpo-section-title">
                                <span>新闻管理系统</span>
                                <h2>反馈中心 </h2>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- wpo-about-area end -->

      
     

     

     

        <!-- blog-area start -->
        <div class="destination-service section-padding">
            <div class="container">
                <div class="col-12">
                    <div class="wpo-section-title text-center">
                        <h2>用户反馈意见信息</h2>
                    </div>
                </div>

                <div class="destination-carousel owl-carousel owl-theme owl-btn-center-lr owl-dots-primary-full owl-btn-3 m-b30 wow fadeIn owl-loaded" data-wow-duration="2s" data-wow-delay="0.2s" style="visibility: visible; animation-duration: 2s; animation-delay: 0.2s; animation-name: fadeIn;">

                    <c:forEach items="${list}" var="u">
                        <div class="owl-item cloned" style="width: 360px; margin-right: 30px;"><div class="item">
                            <div class="service-media-bx">
                                <div class="destination-item">

                                    <div class="destination-content">
                                        <div class="content-left">
                                            <h5><a >${u.title }</a></h5>
                                            <small>${u.user.name }</small>
                                            <small>${u.ctime }</small>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div></div>
                    </c:forEach>

                </div>
            </div>
        </div>
        <section class="wpo-blog-single-section section-padding">
            <div class="container">
                <div class="row">
                    <div class="col col-md-12">
                        <div class="wpo-blog-content clearfix">




                            <div class="comments-area">

                                <c:if test="${user != null}">
                                    <div class="comment-respond">
                                        <h3 class="comment-reply-title">评论内容</h3>
                                        <form method="post" action="FankuiServlet?action=addFankuiIndex">
                                            <div class="form-textarea">
                                                <textarea id="comments" name="titles" placeholder="反馈内容"></textarea>
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

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>

    <!-- Plugins for this template -->
    <script src="assets/js/jquery-plugin-collection.js"></script>

    <script src="assets/js/bootstrap-datepicker.min.js"></script>


    <!-- Custom script for this template -->
    <script src="assets/js/script.js"></script>
    <script>

</body>
</html>
