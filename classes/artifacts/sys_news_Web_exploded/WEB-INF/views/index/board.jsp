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
    <title>公告信息</title>

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
  
      
        

   <!--       <div class="wpo-select-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="wpo-select-wrap">
                            <div class="wpo-select-area">
                                <form class="clearfix">
                                    <div class="select-sub">
                                        <span><i class="fi flaticon-calendar"></i>预约日期</span>
                                        <div class="form-group">
                                            <div id="filterDate">
                                              Datepicker as text field         
                                              <div class="input-group date" data-date-format="dd.mm.yyyy">
                                                <input type="text" class="form-control" placeholder="01.06.2020">
                                                <div class="input-group-addon">
                                                  <span class="ti-angle-down"></span>
                                                </div>
                                              </div>
                                            </div>    
                                        </div>
                                    </div>
                                   
                                 
                                    <div class="select-sub">
                                        <span> <i class="fi flaticon-user"></i> 预约票数</span>
                                        <select class="select wide">
                                            <option>01</option>
                                            <option>02</option>
                                            <option>03</option>
                                            <option>04</option>
                                            <option>05</option>
                                            <option>06</option>
                                        </select>
                                    </div>
                                    <div class="select-sub">
                                        <button class="theme-btn-s2" type="submit">预约</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- serch-area-end -->

        <!-- wpo-about-area start -->
        <div class="wpo-about-area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-6 colsm-12">
                        <div class="wpo-about-img">
                            <img src="assets/images/about/about.png" alt="">
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6 colsm-12">
                        <div class="wpo-about-text">
                            <div class="wpo-section-title">
                                <span>新闻管理系统</span>
                                <h2>公告中心 </h2>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- wpo-about-area end -->

      
     

     

     

        <!-- blog-area start -->
        <div class="blog-area ptb-100-70">
            <div class="container">
                <div class="col-12">
                    <div class="wpo-section-title">
                        <h2>公告信息</h2>
                    </div>
                </div>
                <div class="row">
                  	<c:forEach items="${list}" var="u">
                    <div class="col-lg-4 col-md-6 col-sm-6 custom-grid  col-12">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="/images/${u.img }" alt="">
                            </div>
                            <div class="blog-content">
                                <ul class="post-meta">

                                    <li> ${u.ctime }</li>
                                </ul>
                                <h3><a >${u.title }</a></h3>

                                <a  href="IndexServlet?action=toBoardDetail&id=${u.id }" >了解更多</a>
                            </div>
                        </div>
                    </div>
                   </c:forEach>
                  
                </div>
                <div class="pagination-wrapper pagination-wrapper-left">
								<ul class="pg-pagination">
									<li><a href="IndexServlet?action=toBoard&p=1">首页</a></li>
									<c:if test="${cp>1}">
										<li><a href="IndexServlet?action=toBoard&p=${cp-1}">上页</a></li>
									</c:if>
									<c:forEach begin="${cp-2>1 ? (cp-2) :1}"
										end="${cp+2>tp?tp:(cp+2)}" var="e">
										<%--            判断是否是当前页--%>
										<c:if test="${cp==e}">
											<li class="active"><a 
												href="IndexServlet?action=toBoard&p=${e}">${e}</a></li>
										</c:if>
										<c:if test="${cp!=e}">
											<li><a
												href="IndexServlet?action=toBoard&p=${e}">${e}</a></li>
										</c:if>
									</c:forEach>

									<c:if test="${cp<tp}">
										<li><a href="IndexServlet?action=toBoard&p=${cp+1}">下页</a></li>

									</c:if>

									<li><a  href="IndexServlet?action=toBoard&p=${tp}">尾页</a></li>
								</ul>
							</div>
            </div>
        </div>


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
