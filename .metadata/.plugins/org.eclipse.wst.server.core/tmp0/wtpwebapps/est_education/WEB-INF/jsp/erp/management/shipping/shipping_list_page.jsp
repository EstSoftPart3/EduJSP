<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
<style>
	.list-row:hover {
		cursor: pointer;
	}
	
	.card-body-wrapper {
		vertical-align: middle !important;
	}
	
	.card-body-checkbox {
		display: block;
		margin: 0 auto;
	}
	
	.card-tools {
		text-align: center;
	}
	
	
	
</style>
<title>배송 관리</title>

</head>

<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
		<!-- Navbar -->
		<nav class="main-header navbar navbar-expand navbar-white navbar-light"> <!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a></li>
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
							<h1 class="m-0 text-dark">업무 > 배송 관리</h1>
							<b style="color: lightgray;">배송에 관한 정보들을 살펴볼 수 있습니다.</b><br>
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
								<h3 class="card-title"><b>배송 현황판</b></h3>
										<!-- 등록 버튼 -->
										<div style="float:right">
										<a href='<c:url value="/erp/shipping/shippingInsertPage.do" />' class="btn btn-info" >등록</a>	
										</div>						
										<div class="card-tools">
											<div class="input-group input-group-sm" style="width: 400px;">
											</div>
										</div>
									</div>
							
							<!-- /.card-header -->
							
							<div class="card-body">
								<table id="shippingtable" class="table table-hover table-striped table-bordered text-nowrap">
									<tr style="background-color: #9dcdfe;">
										<!-- <th><input type="checkbox" id="allCheckbox" class="table-checkbox"></th> -->
										<th>SQ.</th>
										<th>작성 일자</th>
										<th>수령인</th>
										<th>구매처/거래처</th>
										<th>구매처/거래처 전화번호</th>
										<th>배송 상품</th>
										<th>총 결제 금액</th>
										<th>결제 상태</th>
										<th>결제 일자</th>
									</tr>
								<c:forEach var="list" items="${ map.list }">
									<tr>
										<!--  <td><input type="checkbox" id="check" class="table-checkbox checkbox-item"></td> -->
										<td>
											<c:out value="${ list.shpngSq }" />
										</td>
										<td>
											<c:out value="${ list.shpngDate }"/>
										</td>
										<td>
											<a href="/erp/shipping/shippingDetail.do?shpngSq=${ list.shpngSq }">${ list.shpngRcpnt }</a>
										</td>
										<td>
											<c:out value="${ list.shpngShop }" />
										</td>
										<td>
											<c:out value="${ list.shpngShopPhneNmbr }" />
										</td>
										<td>
											<c:out value="${ list.shpngGoods }" />
										</td>
										<td>
											￦ <fmt:formatNumber type="number" maxFractionDigits="3" value="${ list.shpngAllAmnt }" /> 
											<%-- <c:out value="${ list.shpngAllAmnt }" /> --%>
										</td>
										<td>
											<c:out value="${ list.shpngPymntStts }" />
										</td>
										<td>
											<c:out value="${ list.shpngPymntDate }" />
										</td>
									</tr>
								</c:forEach>
										
									</table><br/>
									<!-- pageing -->
									<div class="card-tools" >
										<ul class="pagination pagination-sm">
												<!-- 처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
												<c:if test="${map.pagerMaster.curBlock > 1}">
													<li class="page-item">
														<a class="page-link" href="javascript:list('1')">[처음]</a>
													</li>
												</c:if>
												
												<!-- 이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
												<c:if test="${map.pagerMaster.curBlock > 1}">
												<li class="page-item">
													<a class="page-link" href="javascript:list('${map.pagerMaster.prevPage}')">[이전]</a>
													</li>
												</c:if>
												
												<!-- **하나의 블럭 시작페이지부터 끝페이지까지 반복문 실행 -->
												<c:forEach var="num" begin="${map.pagerMaster.blockBegin}" end="${map.pagerMaster.blockEnd}">
													<!-- 현재페이지이면 하이퍼링크 제거 -->
													<c:choose>
														<c:when test="${num == map.pagerMaster.curPage}">
															<span style="background: lightblue;" class="page-link">${num}</span>&nbsp;
														</c:when>
														<c:otherwise>
															<a class="page-link" href="javascript:list('${num}')">${num}</a>&nbsp;
														</c:otherwise>
													</c:choose>
												</c:forEach>
												
												<!-- 다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
												<c:if test="${map.pagerMaster.curBlock <= map.pagerMaster.totBlock}">
												<li class="page-item">
													<a class="page-link" href="javascript:list('${map.pagerMaster.nextPage}')">[다음]</a>
													</li>
												</c:if>
												
												<!-- 끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작으면 [끝]하이퍼링크를 화면에 출력 -->
												<c:if test="${map.pagerMaster.curPage < map.pagerMaster.totPage}">
												<li class="page-item">
													<a class="page-link" href="javascript:list('${map.pagerMaster.totPage}')">[끝]</a>
													</li>
												</c:if>
										</ul>
									</div>
									<!-- /.paging end -->
		
		
									<!-- /.navbar -->
									<div class="card-body">
											<!-- 검색어 기능 날짜 부분 -->
											<b>날짜</b>
											<form method="post" action="/erp/shipping/openShippingListPage.do">
												<input style="width:20%" type="date" id="startDt" name="startDt" >
												 &nbsp;&nbsp;
												<input style="width:20%" type="date" id="endDt" name="endDt">
											</form>
											
											<br>
											
											<!-- 검색어 기능 검색 부분 -->
											<b>검색</b>
											<form name="search-form" method="post" action="/erp/shipping/openShippingListPage.do">
												<select name="searchOption" id="searchOption">
													<option selected value="">카테고리</option>
													<option value="shpngRcpnt" >수령인</option>
													<option value="shpngShop" >구매처</option>
													<option value="shpngGoods" >배송 상품</option>
												</select>
												 &nbsp;&nbsp;
												<input style="width: 20%" type="text" id="search" name="search" class="btn btn-default" placeholder="검색어를 입력하세요">
												<input type="button"id="button_sch" name="button_sch" class="btn btn-primary" value="검색" >	
											</form>
											
											&nbsp;
											
											
									
									</div>
									<!-- /.card-body -->
							
													</div>
													<!-- /.card-body -->
												</div>
												<!-- /.card -->
											</div>
										</div>
										<!-- /.row -->
								</div>
								<!-- /.container-fluid --> 
								</section>
		
	
		
		<div style="text-align:center;">
		
		<!-- <a href='<c:url value="/erp/shipping/shippingDelete.do" />' id="delete" class="btn btn-danger">삭제</a> -->
		
		 &nbsp;&nbsp;
								
	
		</div>
	
	
	
	
	
	<!-- /.content -->
		<form id="commonForm"></form>
		</div>
		<form name="frmPopup" id="frmPopup">
			<input type="hidden" name="popupMbrSq" id="popupMbrSq"/>
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
				
		<script type="text/javascript">
	
		//페이지 시작시 자동 실행 func()
		$(document).ready(function() {
			
		});
		
		//리스트 페이징 Url 셋팅 func()
		function list(page){
	    	
			location.href="/erp/shipping/openShippingListPage.do?curPage="+page;
			
		}
		
		// 검색어 기능
		$("#button_sch").on("click", function() {
			// 검색 옵션
			var searchOption = $("#searchOption").val();
			// 검색어 텍스트
			var search = $("#search").val();
			// 시작 날짜
			var startDt = $("#startDt").val();
			// 종료 날짜
			var endDt = $("#endDt").val();
			
			
			if(startDt > endDt){
				 alert("시작일자보다 종료일자가 더 큽니다. 다시 입력하세요. ");
				 return
			 }else{
				
			
			
			var comSubmit = new ComSubmit();
			
			comSubmit.setUrl("<c:url value='/erp/shipping/openShippingListPage.do' />");
			
			comSubmit.addParam("searchOption",searchOption);
			comSubmit.addParam("search",search);
			comSubmit.addParam("startDt",startDt);
			comSubmit.addParam("endDt",endDt);
			
			comSubmit.submit();
			 }
		});
		
		// 체크박스 전체선택 이벤트 
		// $("#allCheckbox").change(function(){
			
		//	if($("#allCheckbox").is(":checked")){
				
		//		$(".table-checkbox").prop("checked",true)
				
		//	}else if($("#allCheckbox").is(":checked") == false){
				
		//		$(".table-checkbox").prop("checked",false);
		//	}
		//  });
		
		
			

	</script>	
</body>
</html>