<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
<style>
.list-row:hover {
	cursor: pointer;
}

.checkbox-wrapper {
	vertical-align: middle !important;
}

.table-checkbox {
	display: block;
	margin: 0 auto;
}
</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- Navbar -->
		<nav class="main-header navbar navbar-expand navbar-white navbar-light"> <!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button">
					<i class="fas fa-bars"></i>
				</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="/erp/sample/openSamplePage.do" class="nav-link">Home</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#" class="nav-link">Contact</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="/index.html" class="nav-link" target="_blank">Template</a></li>
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
		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
			<!-- Messages Dropdown Menu -->
			<li class="nav-item dropdown"><a class="nav-link" data-toggle="dropdown" href="#">
					<i class="far fa-comments"></i> <span class="badge badge-danger navbar-badge">3</span>
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
						</div>
						<!-- Message End -->
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
						</div>
						<!-- Message End -->
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
						</div>
						<!-- Message End -->
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
				</div></li>
			<!-- Notifications Dropdown Menu -->
			<li class="nav-item dropdown"><a class="nav-link" data-toggle="dropdown" href="#">
					<i class="far fa-bell"></i> <span class="badge badge-warning navbar-badge">15</span>
				</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<span class="dropdown-item dropdown-header">15 Notifications</span>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item">
						<i class="fas fa-envelope mr-2"></i> 4 new messages <span class="float-right text-muted text-sm">3 mins</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item">
						<i class="fas fa-users mr-2"></i> 8 friend requests <span class="float-right text-muted text-sm">12 hours</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item">
						<i class="fas fa-file mr-2"></i> 3 new reports <span class="float-right text-muted text-sm">2 days</span>
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
					<i class="fas fa-th-large"></i>
				</a></li>
		</ul>
		</nav>
		<!-- /.navbar -->
		<%@ include file="/WEB-INF/jsp/comn/component/include-sideBar.jspf"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">협력사 관리 게시판</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<a href='<c:url value="/partner/openPartnerInsertPage.do" />' class="btn btn-primary float-right">협력사 등록</a>
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
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">협력사 목록</h3>
								<div class="card-tools">
									<div class="input-group input-group-sm" style="width: 400px;">
										<!-- 사업자 유형 리스트 -->
										<select class="form-control" id="select_bizType">
											<option value="all">전체</option>
											<option value="P00001">개인 사업자</option>
											<option value="P00002">법인 사업자</option>
										</select>
										<input type="text" id="input_sch" name="search" class="form-control float-right" placeholder="법인 이름을 입력해 주세요" value="${search}">
										<div class="input-group-append">
											<button id="button_sch" type="button" class="btn btn-default">
												<i class="fas fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div style="height: 400px; overflow: auto;">
									<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th>번호</th>
												<th>유형</th>
												<th>법인 명</th>
												<th>대표자</th>
												<th>사업장 소재지</th>
												<th>담당자 부서</th>
												<th>담당자 직급</th>
												<th>담당자 이름</th>
												<th>담당자 대표번호</th>
												<th>담당자 이메일</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(partnerList) == 0 }">
													<tr>
														<td colspan="10">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="partner" items="${ partnerList }">
														<tr class="list-row">
															<td class="sq">
																<c:out value="${ partner.prtnSq }" />
															</td>
															<td>
																<c:out value="${ partner.codeNm }" />
															</td>
															<td>
																<c:out value="${ partner.prtnCorpNm }" />
															</td>
															<td>
																<c:out value="${ partner.prtnRepNm }" />
															</td>
															<td>
																<c:out value="${ partner.prtnBizAddr }" />
															</td>
															<td>
																<c:out value="${ partner.prtnDirDrtmtCd }" />
															</td>
															<td>
																<c:out value="${ partner.prtnDirPositn }" />
															</td>
															<td>
																<c:out value="${ partner.prtnDirNm }" />
															</td>
															<td>
																<c:out value="${ partner.prtnDirTelNum }" />
															</td>
															<td>
																<c:out value="${ partner.prtnDirEmail }" />
															</td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
								</div>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid --> </section>
			<!-- /.content -->
			<form id="commonForm"></form>
		</div>
		<form name="frmPopup" id="frmPopup">
			<input type="hidden" name="popupMbrSq" id="popupMbrSq" />
		</form>
		<!-- /.content-wrapper -->
		<footer class="main-footer"> <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.
		</strong> All rights reserved.
		<div class="float-right d-none d-sm-inline-block">
			<b>Version</b> 3.0.5
		</div>
		</footer>
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark"> <!-- Control sidebar content goes here --> </aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->
	<%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf"%>
	<script>
	
	function fn_selectPartnerBizTypeCallback(data) {
		var partnerList = data.partnerList;
		var body = $("#partner_table>tbody");
		body.empty();
		
		if(partnerList.length > 0) {
			
			partnerList.forEach(partner => {
				
				body.append(
						"<tr class='list-row'>" + 
							"<td class='sq'>" + partner.prtnSq + "</td>" +
							"<td>" + element_isnull(partner.codeNm) + "</td>" +
							"<td>" + element_isnull(partner.prtnCorpNm) + "</td>" +
							"<td>" + element_isnull(partner.prtnRepNm) + "</td>" +
							"<td>" + element_isnull(partner.prtnBizAddr) + "</td>" +
							"<td>" + element_isnull(partner.prtnDirDrtmtCd) + "</td>" +
							"<td>" + element_isnull(partner.prtnDirPositn) + "</td>" +
							"<td>" + element_isnull(partner.prtnDirNm) + "</td>" +
							"<td>" + element_isnull(partner.prtnDirTelNum) + "</td>" +
							"<td>" + element_isnull(partner.prtnDirEmail) + "</td>" +
						"</tr>" );
				});
		
		} else {
			body.append("<tr>" + "<td colspan='10'>조회 결과가 없습니다</td>" + "</tr>");
			
		}
	}		
	
	
	function isEmptyArr(arr) {
		return (Array.isArray(arr) && arr.length === 0) ? true : false;
	}
	
	function element_isnull(obj) {
		return (!!obj) ? obj : '';
	}
	
		$(document).ready(function() {
			
			// 직급과 퇴사여부 select 박스 변경 이벤트 바인딩
			$("#select_bizType").on("change", function() {
				
				var bizType = $("#select_bizType").val();
				var search = $("#input_sch").val();
				
				var comAjax = new ComAjax();
				
				comAjax.setUrl("<c:url value='/partner/selectPartnerBizTypeList.do' />");
				
				if(bizType != "all") {
					
					comAjax.addParam("codeComCd", bizType);
					comAjax.addParam("prtnCorpNm", search);
				}
				
				comAjax.setCallback(fn_selectPartnerBizTypeCallback);
				comAjax.ajax();
			});
			
			
			// 검색 버튼 클릭 이벤트 바인딩
			$("#button_sch").on("click", function() {
				
				var bizType = $("#select_bizType").val();
				var search = $("#input_sch").val();
				
				var comAjax = new ComAjax();
				
				comAjax.setUrl("<c:url value='/partner/selectPartnerBizTypeList.do' />");
				
				if(search != "") {
					
					comAjax.addParam("codeComCd", bizType);
					comAjax.addParam("prtnCorpNm", search);
				}
				
				comAjax.setCallback(fn_selectPartnerBizTypeCallback);
				comAjax.ajax();
			});
			
			// 검색 KeyUp 이벤트 바인딩
			$("#input_sch").keyup(function() {
				
				var bizType = $("#select_bizType").val();
				var search = $("#input_sch").val();
				
				var comAjax = new ComAjax();
				
				comAjax.setUrl("<c:url value='/partner/selectPartnerBizTypeList.do' />");
				
				if(search != "") {
					
					comAjax.addParam("codeComCd", bizType);
					comAjax.addParam("prtnCorpNm", search);
				}
				
				comAjax.setCallback(fn_selectPartnerBizTypeCallback);
				comAjax.ajax();
			});
			
			
			// 검색 입력창 엔터키 이벤트 바인딩
			$("#input_sch").on("keyup", function(e) {
				if (e.keyCode === 13)
					$("#button_sch").click();
			});
			
			
			
			// 세부정보 페이지로 이동하는 직원 컬럼 클릭 이벤트 바인딩
			$("#partner_table").on("click", ".list-row", function(e) {
				var sq = $(this).find(".sq").text();
				
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/partner/openPartnerDetailPage.do' />");
				comSubmit.addParam("sq", sq);
				comSubmit.submit();
			});
			
		});
		
	</script>
</body>
</html>