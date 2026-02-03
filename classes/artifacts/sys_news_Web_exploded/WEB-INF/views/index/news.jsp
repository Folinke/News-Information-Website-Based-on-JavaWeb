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

    <section
            class="wpo-blog-pg-section blog-pg-left-sidebar section-padding">
        <div class="container">
            <div class="row">
                <div class="col col-md-8 col-md-push-4">
                    <div class="wpo-blog-content">
                        <c:forEach items="${newslist}" var="u">
                            <div class="post format-standard-image">
                                <div class="entry-media">
                                    <img src="/images/${u.img }" alt="">
                                </div>
                                <ul class="entry-meta">
                                    <li><a href="#"> ${u.editor}发布</a></li>
                                    <li><a href="#">${u.times} </a></li>
                                </ul>
                                <h3>
                                    <a href="IndexServlet?action=toNewsDetail&nid=${u.id}&type1=1">${u.title} </a>
                                </h3>
                                <div class="entry-bottom">
                                    <a href="IndexServlet?action=toNewsDetail&nid=${u.id}&type1=1" class="read-more">查看详情</a>
                                    <ul>
                                        <li><i class="fi flaticon-heart"></i>${u.see_count}人浏览</li>

                                    </ul>
                                    <ul>
                                        <li><i class="fi flaticon-heart"></i>${u.comment_count}人评论</li>

                                    </ul>
                                </div>
                                <div class="blog-thumb-badge">
                                    <div class="blog-thumb-text">
                                        <span>${u.category} </span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>






                        <div class="pagination-wrapper pagination-wrapper-left">
                            <ul class="pg-pagination">
                                <li><a href="IndexServlet?action=toNews&p=1">首页</a></li>
                                <c:if test="${cp>1}">
                                    <li><a href="IndexServlet?action=toNews&p=${cp-1}">上页</a></li>
                                </c:if>
                                <c:forEach begin="${cp-2>1 ? (cp-2) :1}"
                                           end="${cp+2>tp?tp:(cp+2)}" var="e">
                                    <%--            判断是否是当前页--%>
                                    <c:if test="${cp==e}">
                                        <li class="active"><a
                                                href="IndexServlet?action=toNews&p=${e}">${e}</a></li>
                                    </c:if>
                                    <c:if test="${cp!=e}">
                                        <li><a
                                                href="IndexServlet?action=toNews&p=${e}">${e}</a></li>
                                    </c:if>
                                </c:forEach>

                                <c:if test="${cp<tp}">
                                    <li><a href="IndexServlet?action=toNews&p=${cp+1}">下页</a></li>

                                </c:if>

                                <li><a  href="IndexServlet?action=toNews&p=${tp}">尾页</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col col-md-4 col-md-pull-8">
                    <div class="wpo-blog-sidebar">

                        <div class="widget search-widget">
                            <form action="IndexServlet?action=toNews"  method="post">
                                <div>
                                    <input type="text" name="names" value="${names }" class="form-control" placeholder="请输入标题">
                                    <button type="submit"><i class="ti-search"></i></button>
                                </div>
                            </form>
                        </div>
                        <div class="widget category-widget">
                            <h3>分类</h3>
                            <ul>
                                <c:forEach items="${categoryList}" var="u">
                                    <li><a href="IndexServlet?action=toNews&category=${u.cname }">${u.cname }</a></li>
                                </c:forEach>

                            </ul>
                        </div>

                        <div class="widget recent-post-widget">
                            <h3>最近的新闻</h3>

                            <div class="posts">
                                <c:forEach items="${newslist2}" var="u">
                                    <div class="post">
                                        <div class="img-holder">
                                            <img src="/images/${u.img }" alt>
                                        </div>
                                        <div class="details">
                                            <h4><a href="IndexServlet?action=toNews&nid=${u.id }">${u.title }</a></h4>
                                            <span class="date">${u.times }</span>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end container -->
    </section>
    <!-- end wpo-blog-pg-section -->



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
