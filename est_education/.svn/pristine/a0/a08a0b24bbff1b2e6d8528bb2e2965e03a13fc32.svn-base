<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
<style>
.text-right {
	text-align: right;
}
</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Navbar -->
	<nav
		class="main-header navbar navbar-expand navbar-white navbar-light">
	<!-- Left navbar links -->
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
			href="#" role="button"><i class="fas fa-bars"></i></a></li>
		<li class="nav-item d-none d-sm-inline-block"><a
			href="index3.html" class="nav-link">Home</a></li>
		<li class="nav-item d-none d-sm-inline-block"><a href="#"
			class="nav-link">Contact</a></li>
	</ul>

	<!-- SEARCH FORM -->
	<form class="form-inline ml-3">
		<div class="input-group input-group-sm">
			<input class="form-control form-control-navbar" type="search"
				placeholder="Search" aria-label="Search">
			<div class="input-group-append">
				<button class="btn btn-navbar" type="submit">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</div>
	</form>

	<!-- Right navbar links -->
	<ul class="navbar-nav ml-auto">
		<!-- Messages Dropdown Menu -->
		<li class="nav-item dropdown"><a class="nav-link"
			data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
				<span class="badge badge-danger navbar-badge">3</span>
		</a>
			<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
				<a href="#" class="dropdown-item"> <!-- Message Start -->
					<div class="media">
						<img src="/dist/img/user1-128x128.jpg" alt="User Avatar"
							class="img-size-50 mr-3 img-circle">
						<div class="media-body">
							<h3 class="dropdown-item-title">
								Brad Diesel <span class="float-right text-sm text-danger"><i
									class="fas fa-star"></i></span>
							</h3>
							<p class="text-sm">Call me whenever you can...</p>
							<p class="text-sm text-muted">
								<i class="far fa-clock mr-1"></i> 4 Hours Ago
							</p>
						</div>
					</div> <!-- Message End -->
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item"> <!-- Message Start -->
					<div class="media">
						<img src="/dist/img/user8-128x128.jpg" alt="User Avatar"
							class="img-size-50 img-circle mr-3">
						<div class="media-body">
							<h3 class="dropdown-item-title">
								John Pierce <span class="float-right text-sm text-muted"><i
									class="fas fa-star"></i></span>
							</h3>
							<p class="text-sm">I got your message bro</p>
							<p class="text-sm text-muted">
								<i class="far fa-clock mr-1"></i> 4 Hours Ago
							</p>
						</div>
					</div> <!-- Message End -->
				</a>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item"> <!-- Message Start -->
					<div class="media">
						<img src="/dist/img/user3-128x128.jpg" alt="User Avatar"
							class="img-size-50 img-circle mr-3">
						<div class="media-body">
							<h3 class="dropdown-item-title">
								Nora Silvester <span class="float-right text-sm text-warning"><i
									class="fas fa-star"></i></span>
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
			</div></li>
		<!-- Notifications Dropdown Menu -->
		<li class="nav-item dropdown"><a class="nav-link"
			data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
				class="badge badge-warning navbar-badge">15</span>
		</a>
			<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
				<span class="dropdown-item dropdown-header">15 Notifications</span>
				<div class="dropdown-divider"></div>
				<a href="#" class="dropdown-item"> <i
					class="fas fa-envelope mr-2"></i> 4 new messages <span
					class="float-right text-muted text-sm">3 mins</span>
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
			</div></li>
		<li class="nav-item"><a class="nav-link"
			data-widget="control-sidebar" data-slide="true" href="#"
			role="button"> <i class="fas fa-th-large"></i>
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
							<h1 class="m-0 text-dark">게시물 상세</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<div class="btn-wrapper float-right">
							   
								<a href='<c:url value="/sboard/sboardList.do" />' class="btn btn-info">목록</a>
								<button class="btn btn-primary" id="updateBtn">수정</button>
								<button class="btn btn-danger" id="deleteBtn">삭제</button>
						</div>
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
								<h3 class="card-title">내용</h3>
							</div>
							<!-- /.card-header -->

							<!-- card-body -->
							<div class="card-body">
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">번호</label>
									<label class="col-sm-4 col-form-label" id="bpNo">${ BoardContent.bpNo }</label>
									<i>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">제목</label>
									<label class="col-sm-4 col-form-label">${ BoardContent.bpTtl }</label>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">내용</label>
									<label class="col-sm-4 col-form-label">${ BoardContent.bpCtt }</label>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">입력자</label>
									<label class="col-sm-4 col-form-label">${ BoardContent.bpRgl }</label>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">입력일</label>
									<label class="col-sm-10 col-form-label">${ BoardContent.bpRgtd }</label>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">수정일</label>
									<label class="col-sm-4 col-form-label">${ BoardContent.bpMdfd }</label>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<!-- right column -->
					
				</div>
			</div>
			
			
			</section>
		</div>
	<!-- </form> -->

	<!-- /.content-wrapper -->
	


	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark"> <!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf"%>
<script>

$(document).ready(function() {
	
        //수정버튼 클릭
 		$("#updateBtn").on("click", function() {
			var bpNo = "<c:out value='${ BoardContent.bpNo }'/>";
			var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/sboard/sboardUpdate.do' />");
				comSubmit.addParam("bpNo", bpNo);
				comSubmit.submit();
		});
		
		$("#deleteBtn").on("click", function() {
			if(confirm("정말 삭제하시겠습니까?")) {
				var bpNo = "<c:out value='${ BoardContent.bpNo }'/>";
				var comAjax = new ComAjax();
				
				comAjax.setUrl("<c:url value='/sboard/sboardDeleteProcess.do' />");
				comAjax.addParam("bpNo", bpNo);
				comAjax.setCallback(fn_deleteCallback);
				comAjax.ajax();
			}
		});
		
		
		function fn_deleteCallback() {
			var bpNo = "<c:out value='${ BoardContent.bpNo }'/>";
			if(bpNo > 0) {
				alert("게시물이 정상적으로 삭제되었습니다.");
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/sboard/sboardList.do' />");
				comSubmit.submit();
			}else {
				alert("게시물 삭제에 실패하였습니다.");
			}
		}
	});
</script>
</body>
</html>