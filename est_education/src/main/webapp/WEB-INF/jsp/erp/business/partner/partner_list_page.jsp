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
.list-cell:hover{
	color: tomato;
	font-weight:bold;
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
						<div class="col-sm-9">
							<h1 class="m-0 text-dark">협력사 관리 게시판</h1>
						</div>
						<!-- /.col -->		
						<div class="col-sm-3">
							<a href='<c:url value="/erp/partner/insertPartnerPage.do" />' class="btn btn-primary">협력사 등록</a>
<%-- 							<a href='<c:url value="/erp/partner/deletePartner.do"/>' class="btn btn-danger" id="delete">협력사 삭제</a> --%>
							<a href='javascript:void(0);' class="btn btn-danger" id="delete">협력사 삭제</a>
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
									<div class="input-group input-group-sm" style="width: 600px;">
										<!-- 사업자 유형 리스트 -->
										<select class="form-control" name="prtnTypCd" id="prtnTypCd">
											<option value="all" <c:if test="${searchData.prtnTypCd eq ''}">selected</c:if> >전체</option>
											<option value="P00001" <c:if test="${searchData.prtnTypCd eq 'P00001' }">selected</c:if> >개인 사업자</option>
											<option value="P00002" <c:if test="${searchData.prtnTypCd eq 'P00002' }">selected</c:if> >법인 사업자</option>
										</select>
										<!-- 검색 옵션 -->
										<select class="form-control" name="searchOption" id="searchOption">
											<option value="prtnNm" <c:if test="${searchData.searchOption eq 'prtnNm' }">selected</c:if> >상호명</option>
											<option value="prtnEnrlmNum" <c:if test="${searchData.searchOpton eq 'prtnEnrlmNum' }">selected</c:if> >사업자등록번호</option>
										</select>
										<input type="text" id="input_sch" name="search" class="form-control float-right" placeholder="검색어를 입력해주세요." value=''>
<%-- 										<c:out value="${searchData.search}"></c:out> --%>
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
												<th class="checkbox-wrapper"><input type="checkbox" id="allCheckbox" class="table-checkbox"></th>
												<th>번호</th>
												<th>유형</th>
												<th>상호 명</th>
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
														<td colspan="11">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="partner" items="${ partnerList }">
														<tr id="${partner.prtnSq }" class="list-row">
															<td class="checkbox-wrapper">
																<input id="${partner.prtnSq }" type="checkbox" name='del_check' class="table-checkbox checkbox-item" value='<c:out value="${ partner.prtnSq}" />' />
															</td>
															<td class="sq" id="sq" align="center">
																<c:out value="${ partner.prtnSq }" />
															</td>
															<td>
																<c:out value="${ partner.codeNm }" />
															</td>
															<td class="list-cell">
																<c:out value="${ partner.prtnNm }" />
															</td>
															<td>
																<c:out value="${ partner.prtnRprsnNm }" />
															</td>
															<td>
																<c:out value="${ partner.prtnLoc }" />
															</td>
															<td>
																<c:out value="${ partner.prtnMngr1Dept }" />
															</td>
															<td>
																<c:out value="${ partner.prtnMngr1Rnk }" />
															</td>
															<td>
																<c:out value="${ partner.prtnMngr1Nm }" />
															</td>
															<td>
																<c:out value="${ partner.prtnMngr1RprsnPh }" />
															</td>
															<td>
																<c:out value="${ partner.prtnMngr1Eml }" />
															</td>
														</tr>
														<input type="hidden" name="prtnEnrlmNum" value=''/>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
								</div>
							</div>
							<!-- /.card-body -->
							<c:set var="blockScale" value="${10 }"/>
							<!-- pageing -->
							<div class="card-tools" style="margin: auto;">
								<ul class="pagination pagination-sm">
										<!-- 처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
										<c:if test="${pager.curPage > 1}">
											<li class="page-item">
												<a a class="page-link" href="javascript:list('1')">[처음]</a>
											</li>
										</c:if>
										
										<!-- 이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
										<c:if test="${pager.curBlock > 1}">
										<li class="page-item">
											<a class="page-link" href="javascript:list('${pager.blockEnd - 10}')">[이전]</a>
											</li>
										</c:if>
										
										<!-- **하나의 블럭 시작페이지부터 끝페이지까지 반복문 실행 -->
										<c:forEach var="num" begin="${pager.blockBegin}" end="${pager.blockEnd}">
											<!-- 현재페이지이면 하이퍼링크 제거 -->
											<c:choose>
												<c:when test="${num eq pager.curPage }">
													<span class="page-link" style="background:skyblue;">${num}</span>&nbsp;
												</c:when>
												<c:when test="${num le pager.totPage }">
													<a class="page-link" href="javascript:list('${num}')">${num}</a>&nbsp;
												</c:when>
											</c:choose>
										</c:forEach>
										
										<!-- 다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
										<c:if test="${pager.curBlock < pager.totBlock}">
										<li class="page-item">
											<a class="page-link" href="javascript:list('${pager.blockBegin + blockScale }')">[다음]</a>
											</li>
										</c:if>
										
										<!-- 끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
										<c:if test="${pager.curPage < pager.totPage}">
										<li class="page-item">
											<a class="page-link" href="javascript:list('${pager.totPage}')">[끝]</a>
											</li>
										</c:if>
								</ul>
							</div>
							<!-- /.paging end -->
							
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
<!-- 검색 결과 존재 할 경우 검색어 입력란 focus -->	
<c:if test="${not empty searchData.search }">
	<script>
		$(document).ready(function(){
			$("#input_sch").focus();
			$("#input_sch").val("${searchData.search}");			
		})
	</script>
</c:if>	
	<script>
	
	function isEmptyArr(arr) {
		return (Array.isArray(arr) && arr.length === 0) ? true : false;
	}
	
	function element_isnull(obj) {
		return (!!obj) ? obj : '';
	}
	// 세부정보 페이지로 이동하는 컬럼 클릭 이벤트 바인딩
	$("#partner_table").on("click", ".list-cell", function(e) {
		
		var sq = $(this).parent().children('td:eq(1)').text();
		
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='/erp/partner/partnerDetailPage.do' />");
		comSubmit.addParam("sq", sq);
		comSubmit.submit();
	});
	// 해당 번호의 page로 이동하는 메소드
	function list(pageNum){
		
		// 개인 , 법인 옵션.
		var prtnTypCd = $("#prtnTypCd").val();
		// 사업자등록번호, 상호명 옵션.
		var searchOption = $("#searchOption").val();
		
		// 검색어 텍스트
		var search = $("#input_sch").val();
		
		var comSubmit = new ComSubmit();
		
		comSubmit.setUrl("<c:url value='/erp/partner/selectPartnerPagingList.do' />");
		
		if(prtnTypCd != "all") {
			comSubmit.addParam("prtnTypCd",prtnTypCd);
		}
		
		var curPage = pageNum;

		comSubmit.addParam("searchOption",searchOption);
		comSubmit.addParam("search",search);
		comSubmit.addParam("curPage",curPage);
		
		comSubmit.submit();
	}
	
	// 직급과 퇴사여부 select 박스 변경 이벤트 바인딩
	$("#prtnTypCd").on("change", function() {
		
		// 개인 , 법인 옵션.
		var prtnTypCd = $("#prtnTypCd").val();
		// 사업자등록번호, 상호명 옵션.
		var searchOption = $("#searchOption").val();
		
		// 검색어 텍스트
		var search = $("#input_sch").val();
		
		var comSubmit = new ComSubmit();
		
		comSubmit.setUrl("<c:url value='/erp/partner/selectPartnerPagingList.do' />");
		
		if(prtnTypCd != "all") {
			comSubmit.addParam("prtnTypCd",prtnTypCd);
		}
		
		comSubmit.addParam("searchOption",searchOption);
		comSubmit.addParam("search",search);
		
		comSubmit.submit();
	});
	// 검색 입력창 엔터키 이벤트 바인딩
	$("#input_sch").on("keyup", function(e) {
		if (e.keyCode === 13)
			$("#button_sch").click();
	});
	// 검색 버튼 클릭 이벤트 바인딩
	$("#button_sch").on("click", function() {
		
		// 개인 , 법인 옵션.
		var prtnTypCd = $("#prtnTypCd").val();
		// 사업자등록번호, 상호명 옵션.
		var searchOption = $("#searchOption").val();
		
		// 검색어 텍스트
		var search = $("#input_sch").val();
		
		var comSubmit = new ComSubmit();
		
		comSubmit.setUrl("<c:url value='/erp/partner/selectPartnerPagingList.do' />");
		
		if(prtnTypCd != "all") {
			comSubmit.addParam("prtnTypCd",prtnTypCd);
		}
		
		comSubmit.addParam("searchOption",searchOption);
		comSubmit.addParam("search",search);
		
		comSubmit.submit();
	});

	// 체크박스 전체선택 이벤트 
	$("#allCheckbox").change(function(){
		
		if($("#allCheckbox").is(":checked")){
			
			$(".table-checkbox").prop("checked",true)
			
		}else if($("#allCheckbox").is(":checked") == false){
			
			$(".table-checkbox").prop("checked",false);
		}
	});
	
	// 여러개의 정보 한번에 삭제.
	$("#delete").click(function(){
		
		var checkbox = $(".table-checkbox");
		
		var count = checkbox.length;
		
		for(var i=1;i<checkbox.length;i++){
			
			if(checkbox[i].checked == true){
				
				count--;
				
				var prtnSq = checkbox[i].value;
				
				var prtnEnrlmNum = $("#"+checkbox[i].value+"").parent().children('input:eq('+(i-1)+')').val();
				
				var comAjax = new ComAjax();
				
				comAjax.setUrl("<c:url value='/erp/partner/deletePartner.do' />");
				
				comAjax.addParam("sq", prtnSq);
				
				comAjax.addParam("prtnEnrlmNum", prtnEnrlmNum);
				
				comAjax.ajax();
			}
		}
		
		if (count != checkbox.length){
			
			alert("협력사가 정상적으로 삭제되었습니다.");
			
			var comSubmit = new ComSubmit();
			
			comSubmit.setUrl("<c:url value='/erp/partner/selectPartnerPagingList.do' />");
			comSubmit.submit();
			
		}else{
			alert("삭제할 협력사를 체크해주세요!");
		}
	})
	
	
	</script>
</body>
</html>