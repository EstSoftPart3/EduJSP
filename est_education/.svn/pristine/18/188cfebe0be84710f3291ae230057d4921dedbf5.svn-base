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
.sq {
	display: none;
}
.checkbox-wrapper {
	vertical-align: middle !important;
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
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
						<i class="fas fa-th-large"></i>
					</a>
				</li>
			</ul>
		</nav>
		<!-- /navbar -->
		
		<%@ include file="/WEB-INF/jsp/comn/component/include-sideBar.jspf"%>
		
		
		
		<!----------------------------------------------------------------------- Main content ------------------------------------------------------------------------------>
		<div class="content-wrapper"> 
			<!-- content header -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h3 class="m-0 text-dark">
								<a href="#">업무 > 직원관리</a>
								<span> > </span>
								<a href="#">직원상세</a>
							</h3>
							<span>직원에 대한 상세 정보를 확인할 수 있습니다.</span>
						</div>
					</div>
				</div>
			</div>
			<!-- /content header -->
			
			<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="card">
							
								<!-- card-header -->
								<div class="card-header">
									<div class="card-tools">
										<div class="input-group input-group-sm" style="width: 400px;">
											
											
										</div>
									</div>
								</div>
								<!-- /card-header -->
								
								<!-- card-body -->
								<div class="card-body">
									<div class="info-layout">
										<h4 class="">인적 사항</h4>
										<a href='<c:url value="#" />' class="btn btn-primary">목록</a>
										<a href='<c:url value="#" />' class="btn btn-primary">삭제</a>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>ID</th>
												<td>memberId</td>
												<th colspan="2">Password</th>
												<td colspan="2">********</td>
											</tr>
											<tr>
												<th>성명</th>
												<td>홍길동</td>
												<th colspan="2">주민등록번호</th>
												<td colspan="2">123456-1******</td>
											</tr>
											<tr>
												<th>계약구분</th>
												<td>정규직</td>
												<th colspan="2">부서</th>
												<td colspan="2">연구개발팀</td>
											</tr>
											<tr>
												<th>직급</th>
												<td>대리</td>
												<th colspan="2">전화번호</th>
												<td colspan="2">010-1234-5678</td>
											</tr>
											<tr>
												<th>이메일</th>
												<td>honghong@naver.com</td>
												<th>은행</th>
												<td>기업</td>
												<th>계좌번호</th>
												<td>112-334-5678-90</td>
											</tr>
											<tr>
												<th>주소</th>
												<td colspan="5">서울시 구로구</td>
											</tr>
										</table>
										
										<h4 class="">학력</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>최종학력</th>
												<th>학과명</th>
												<th>졸업년월</th>
												<th>소재지</th>
											</tr>
											<tr>
												<td>학력학력</td>
												<td>학과학과</td>
												<td>졸업졸업</td>
												<td>소재소재</td>
											</tr>
										</table>
										
										<h4 class="">경력</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>근무 회사</th>
												<th>근무 기간</th>
												<th>직급</th>
												<th>담당 업무</th>
												<th>지역</th>
												<th>퇴사 사유</th>
												<th>연봉</th>
											</tr>
											<tr>
												<td>(주)길동컴퍼니</td>
												<td>2020.01.01~2020.06.01</td>
												<td>대리</td>
												<td>개발</td>
												<td>서울 금천구</td>
												<td>경영악화</td>
												<td>2700만 원</td>
											</tr>
										</table>
										
										<h4 class="">자격증</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>자격증 명</th>
												<th>발행처/기관</th>
												<th>취득일</th>
											</tr>
											<tr>
												<td>자격증 이름이 여기</td>
												<td>우리집</td>
												<td>2020.01.01</td>
											</tr>
										</table>
										
										<h4 class="">대외 활동</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>활동 구분</th>
												<th>활동 명</th>
												<th>기관/장소</th>
												<th>활동 기간</th>
												<th>활동 내용</th>
											</tr>
											<tr>
												<td>교육 이수</td>
												<td>자바 스마트 웹 개발</td>
												<td>홍길아카데미</td>
												<td>2020.01.01~2020.01.02</td>
												<td>스마트한 웹 개발 수강</td>
											</tr>
										</table>
										
										<h4 class="">기타 사항</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>입사일</th>
												<td colspan="2">2020.01.01</td>
												<th>전환일</th>
												<td colspan="2">2021.01.01</td>
											</tr>
											<tr>
												<th>퇴사일</th>
												<td colspan="4"><a href='<c:url value="#" />' class="btn btn-warning">퇴사처리</a></td>
											</tr>
											<tr>
												<th rowspan="2">비상연락망</th>
												<th>관계</th>
												<td>부</td>
												<th>전화번호</th>
												<td>010-1234-5678</td>
											</tr>
											<tr>
												<th>관계</th>
												<td>모</td>
												<th>전화번호</th>
												<td>010-8765-4321</td>
											</tr>
											<tr>
												<th>비고</th>
												<td colspan="4"></td>
											</tr>
										</table>
										
										<h4 class="">대여장비</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>장비 관리번호</th>
												<th>장비 구분</th>
												<th>대여 일자</th>
												<th>반납 일자</th>
											</tr>
											<tr>
												<td>BNE-NB-001</td>
												<td>노트북</td>
												<td>2020.00.00</td>
												<td></td>
											</tr>
										</table>
										
										<h4 class="">서류확인</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th><a href="#">파일.pdf(3.1KB)</a></th>
											</tr>
										</table>
									</div>
								</div>
								<!-- /.card-body -->
								
								<!-- paging -->
								<div class="card-tools" style="margin: auto;">
									<!-- 임시 페이징 -->
									<ul class="pagination pagination-sm">
										<li class="page-item">
											<a class="page-link" href="#">처음</a>
										</li>
									</ul>
									
								</div>
								<!-- /paging -->
								
							</div>
							<!-- /card-header -->
							
						</div>
					</div>
				</div>
			
		</div>
		<!----------------------------------------------------------------------- /Main content ------------------------------------------------------------------------------>
		
		
		
		<form id="commonForm"></form>		<!-- include-body -->
	</div>
	<form name="frmPopup" id="frmPopup">
		<input type="hidden" name="popupMbrSq" id="popupMbrSq" />
	</form>
	<!-- /.content-wrapper -->
	<footer class="main-footer"> <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
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
	
</body>
</html>