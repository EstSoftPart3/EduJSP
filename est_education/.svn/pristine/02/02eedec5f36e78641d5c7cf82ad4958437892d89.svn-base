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
#updateBtn {
	color:white;
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
								<h1 class="m-0 text-dark">협력사 정보</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<div class="btn-wrapper float-right">
									<a href='<c:url value="/erp/partner/selectPartnerPagingList.do" />' class="btn btn-info">목록으로</a>
									<button class="btn btn-warning" id="updateBtn">수정</button>
									<button class="btn btn-danger" id="deleteBtn">삭제</button>
								</div>
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
									<h3 class="card-title">협력사 정보</h3>
								</div>
								<!-- /.card-header -->

								<!-- card-body -->
								<div class="card-body">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">사업자 유형</label>
										<label class="col-sm-4 col-form-label">${ partnerVo.codeNm}</label>
										<label class="col-sm-2 col-form-label text-left">등록번호</label>
										<label class="col-sm-4 col-form-label">${ partnerVo.prtnEnrlmNum }</label>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">상호명</label>
										<label class="col-sm-4 col-form-label">${ partnerVo.prtnNm }</label>
										<label class="col-sm-2 col-form-label text-left">대표자</label>
										<label class="col-sm-4 col-form-label">${ partnerVo.prtnRprsnNm }</label>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">기업 연월일</label>
										<label class="col-sm-4 col-form-label">${ partnerVo.prtnEtbDt }</label>
										<c:if test="${partnerVo.codeNm == '법인 사업자' }">
											<label class="col-sm-2 col-form-label text-left">법인 등록번호</label>
											<label class="col-sm-4 col-form-label">${ partnerVo.prtnCrprtNum }</label>
										</c:if>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">업태(업종)</label>
										<label class="col-sm-4 col-form-label">${ partnerVo.prtnBsnscon }</label>
										<label class="col-sm-2 col-form-label">서비스</label>
										<label class="col-sm-4 col-form-label">${ partnerVo.prtnSrvc }</label>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">사업장 소재지</label>
										<label class="col-sm-10 col-form-label">${ partnerVo.prtnLoc }</label>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
					</div>
				</div>
				</section>
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h4 class="m-0 text-dark">담당자</h4>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
				</div>
				<section class="content">
				<div class="container-fluid">
					<div class="row">
						<!-- left column -->
						<div id="mngrForm1" class="col-md-12">
						<!-- general form elements -->
						<div class="card card-olive">
							<div class="card-header">
								<h3 class="card-title">담당자1 정보</h3>
							</div>
							<!-- /.card-header -->
							<!-- card-body -->
							<div class="card-body">
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">담당자1 이름</label>
									<label class="col-sm-4 col-form-label">${ partnerVo.prtnMngr1Nm }</label> 
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">담당자1 부서</label>
									<label class="col-sm-4 col-form-label">${ partnerVo.prtnMngr1Dept }</label> 
									<label class="col-sm-2 col-form-label text-left">담당자1 직급</label>
									<label class="col-sm-4 col-form-label">${ partnerVo.prtnMngr1Rnk }</label>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">담당자1 대표번호</label>
									<label class="col-sm-4 col-form-label">${ partnerVo.prtnMngr1RprsnPh }</label>
									<label class="col-sm-2 col-form-label text-left">담당자1 전화번호</label>
									<label class="col-sm-4 col-form-label">${ partnerVo.prtnMngr1Ph }</label>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">담당자1 Email</label>
									<label class="col-sm-10 col-form-label">${ partnerVo.prtnMngr1Eml }</label>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<c:if test="${ not empty partnerVo.prtnMngr2Nm }">
					<div id="mngrForm2" class="col-md-12">
						<!-- general form elements -->
						<div class="card card-olive">
							<div class="card-header">
								<h3 class="card-title">담당자2 정보</h3>
							</div>
							<!-- /.card-header -->
							<!-- card-body -->
							<div class="card-body">
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">담당자2 이름</label>
									<label class="col-sm-4 col-form-label">${ partnerVo.prtnMngr2Nm }</label> 
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">담당자2 부서</label>
									<label class="col-sm-4 col-form-label">${ partnerVo.prtnMngr2Dept }</label> 
									<label class="col-sm-2 col-form-label text-left">담당자2 직급</label>
									<label class="col-sm-4 col-form-label">${ partnerVo.prtnMngr2Rnk }</label>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">담당자2 대표번호</label>
									<label class="col-sm-4 col-form-label">${ partnerVo.prtnMngr2RprsnPh }</label>
									<label class="col-sm-2 col-form-label text-left">담당자2 전화번호</label>
									<label class="col-sm-4 col-form-label">${ partnerVo.prtnMngr2Ph }</label>
								</div>
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">담당자2 Email</label>
									<label class="col-sm-10 col-form-label">${ partnerVo.prtnMngr2Eml }</label>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					</c:if>
					</div>
				</div>
				</section>
			<c:if test="${not empty partnerFiles }">	
				<!-- /.content-header -->
				<div class="btn-wrapper float-right"></div>
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h4 class="m-0 text-dark">협력사 파일</h4>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
				</div>
				<!-- /.content-header -->
				<section class="content">
				<div class="container-fluid">
					<div class="row">
						<!-- left column -->
						<div class="col-md-12">
							<!-- general form elements disabled -->
							<div class="card card-navy">
								<div class="card-header">
									<h3 class="card-title">협력사 파일리스트</h3>
								</div>
								<!-- /.card-header -->
								<div id="file-list" class="card-body">
								<c:forEach var='files' items="${partnerFiles }" varStatus="i">
									<div id="fileInfo${i.count }" class='form-group-row'>
										
										<label for='' class='col-sm-4 col-form-label text-center'>파일${i.count }</label>
										<label for='' class='col-sm-2 col-form-label'>${files.oriFileNm }</label>
										<label class="col-sm-2 col-form-label">${files.fileSize } Byte</label>
										<a href="javascript:void(0);" id="file${i.count }" class='btn btn-primary fileDownload'>다운로드</a>
										<input type="hidden" name="saveFileNm" value="${files.saveFileNm }">
										<input type="hidden" name="oriFileNm" value="${files.oriFileNm }">
									</div>
								</c:forEach>	
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
					</div>
				</div>	
				</section>
			</c:if>	
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
		<aside class="control-sidebar control-sidebar-dark"> <!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf"%>
	<script>
	var prtnSq = "${partnerVo.prtnSq}";
	var prtnEnrlmNum = "${partnerVo.prtnEnrlmNum}";
	
	function fn_deleteCallback(data) {
		var code = data.code;
		if(code > 0) {
			alert("협력사가 정상적으로 삭제되었습니다.");
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/erp/partner/selectPartnerPagingList.do' />");
			comSubmit.submit();
		}else {
			alert("협력사 삭제에 실패하였습니다.");
		}
	}
	
	$("#deleteBtn").on("click", function() {
		
		if(confirm("정말 삭제하시겠습니까?")) {
			var comAjax = new ComAjax();
			
			comAjax.setUrl("<c:url value='/erp/partner/deletePartner.do' />");
			
			comAjax.addParam("sq", prtnSq);
			comAjax.addParam("prtnEnrlmNum", prtnEnrlmNum);
			
			comAjax.setCallback(fn_deleteCallback);
			
			comAjax.ajax();
		}
	});
	
	$("#updateBtn").on("click",function(){
	
		var comSubmit = new ComSubmit();
		
		comSubmit.setUrl("<c:url value='/erp/partner/updatePartnerPage.do' />");
		comSubmit.addParam("sq", prtnSq);
		comSubmit.submit();
	})
	
	$(".fileDownload").click(function(){
		
		var saveFileNm = $(this).parent().children('input:eq(0)').val();
		var oriFileNm = $(this).parent().children('input:eq(1)').val();
		
		if(confirm(oriFileNm+" 파일을 다운로드 하시겠습니까?")){
			
			var comSubmit = new ComSubmit();

			comSubmit.setUrl("<c:url value='/erp/partner/downloadFile.do' />");
			comSubmit.addParam("saveFileNm",saveFileNm);
			comSubmit.addParam("oriFileNm",oriFileNm);
			
			comSubmit.submit();
		}
	})
	</script>
</body>
</html>