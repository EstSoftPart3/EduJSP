<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
    <style>
        .text-right {
            text-align: right;
        }
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
      <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a></li>
                <li class="nav-item d-none d-sm-inline-block"><a href="index3.html" class="nav-link">Home</a></li>
                <li class="nav-item d-none d-sm-inline-block"><a href="#" class="nav-link">Contact</a></li>
            </ul>

            <!-- SEARCH FORM -->
            <form class="form-inline ml-3">
                <div class="input-group input-group-sm">
                    <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                    <div class="input-group-append">
                        <button class="btn btn-navbar" type="submit">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>
            <form name="readForm" role="form" method="post">
                <input type="hidden" id="FILE_NO" name="FILE_NO" value="">
            </form>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <!-- Messages Dropdown Menu -->
                <li class="nav-item dropdown"><a class="nav-link" data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
                        <span class="badge badge-danger navbar-badge">3</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <a href="#" class="dropdown-item">
                            <!-- Message Start -->
                            <div class="media">
                                <img src="/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        Brad Diesel <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">Call me whenever you can...</p>
                                    <p class="text-sm text-muted">
                                        <i class="far fa-clock mr-1"></i> 4 Hours Ago
                                    </p>
                                </div>
                            </div> <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <!-- Message Start -->
                            <div class="media">
                                <img src="/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        John Pierce <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">I got your message bro</p>
                                    <p class="text-sm text-muted">
                                        <i class="far fa-clock mr-1"></i> 4 Hours Ago
                                    </p>
                                </div>
                            </div> <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item">
                            <!-- Message Start -->
                            <div class="media">
                                <img src="/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title">
                                        Nora Silvester <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                                    </h3>
                                    <p class="text-sm">The subject goes here</p>
                                    <p class="text-sm text-muted">
                                        <i class="far fa-clock mr-1"></i> 4 Hours Ago
                                    </p>
                                </div>
                            </div> <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All
                            Messages</a>
                    </div>
                </li>
                <!-- Notifications Dropdown Menu -->
                <li class="nav-item dropdown"><a class="nav-link" data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span class="badge badge-warning navbar-badge">15</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-item dropdown-header">15 Notifications</span>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> <i class="fas fa-envelope mr-2"></i> 4 new messages <span class="float-right text-muted text-sm">3 mins</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> <i class="fas fa-users mr-2"></i>
                            8 friend requests <span class="float-right text-muted text-sm">12
                                hours</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
                            3 new reports <span class="float-right text-muted text-sm">2
                                days</span>
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All
                            Notifications</a>
                    </div>
                </li>
                <li class="nav-item"><a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"> <i class="fas fa-th-large"></i>
                    </a></li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <%@ include file="/WEB-INF/jsp/comn/component/include-sideBar.jspf"%>


        <!-- Content Wrapper. Contains page content -->
        <%-- <form method="POST" id="insertForm" action='<c:url value="/member/insertMember.do" />'> --%>
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">업무 > 배송 관리 > 배송 상세</h1>
                            <b style="color: lightblack;">배송에 대한 상세 정보를 확인 할 수 있습니다.</b><br>
                        </div>
                        <!-- /.col -->

                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->
            
             <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-12">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">[${ detail.shpngSq }]번 배송 상세 정보</h3>
                                </div>
                                <!-- /.card-header -->
    <div class="card-body">
	<form name="detail">
		<div class="form-group row">
               <label class="col-sm-2 col-form-label">일시</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngDate }</label>
           </div>
           <hr>
		<div class="form-group row">
               <label class="col-sm-2 col-form-label">수령인</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngRcpnt }</label>
           </div>
           <hr>
           <div class="form-group row">
               <label class="col-sm-2 col-form-label">구매처</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngShop }</label>
           </div>
           <hr>
           <div class="form-group row">
               <label class="col-sm-2 col-form-label">구매처 전화번호</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngShopPhneNmbr }</label>
           </div>
           <hr><div class="form-group row">
               <label class="col-sm-2 col-form-label">출발지</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngOrgn }</label>
           </div>
           <hr>
           <div class="form-group row">
               <label class="col-sm-2 col-form-label">도착지</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngDstnt }</label>
           </div>
           <hr>
           <div class="form-group row">
               <label class="col-sm-2 col-form-label">배송 상품</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngGoods }</label>
           </div>
           <hr><div class="form-group row">
               <label class="col-sm-2 col-form-label">상품 개수</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngCount }</label>
           </div>
           <hr>
           <div class="form-group row">
               <label class="col-sm-2 col-form-label">상품 개당 가격</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngCountAmnt }</label>
           </div>
           <hr>
           <div class="form-group row">
               <label class="col-sm-2 col-form-label">총 결제 금액 </label>
               <label class="col-sm-4 col-form-label">${ detail.shpngAllAmnt }</label>
           </div>
           <hr><div class="form-group row">
               <label class="col-sm-2 col-form-label">결제 상태</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngPymntStts }</label>
           </div>
           <hr>
           <div class="form-group row">
               <label class="col-sm-2 col-form-label">결제 방식</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngPymntMthd }</label>
           </div>
           <hr>
           <div class="form-group row">
               <label class="col-sm-2 col-form-label">결제 일자</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngPymntDate }</label>
           </div>
           <hr>
            <div class="form-group row">
               <label class="col-sm-2 col-form-label">비고</label>
               <label class="col-sm-4 col-form-label">${ detail.shpngContent }</label>
           </div>
           <hr>
		<div style="text-align:center;">
			<input type="hidden" name="shpngSq" value="${ detail.shpngSq }" >
			<a href='<c:url value="/erp/shipping/shippingDelete.do?shpngSq=${ detail.shpngSq }" />' class="btn btn-danger">삭제</a>
			<a href='<c:url value="/erp/shipping/shippingUpdatePage.do?shpngSq=${ detail.shpngSq }" />' class="btn btn-info">수정</a>
			<a href='<c:url value="/erp/shipping/openShippingListPage.do" />' class="btn btn-warning">뒤로가기</a>
		</div>
	</form>
	
	  </section>
        </div>
        <!-- </form> -->
	
	<!-- /.content-wrapper -->
        <footer class="main-footer"> <strong>Copyright
                &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.
            </strong> All rights reserved.
            <div class="float-right d-none d-sm-inline-block">
                <b>Version</b> 3.0.5
            </div>
        </footer>


        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf"%>
	
</body>
</html>