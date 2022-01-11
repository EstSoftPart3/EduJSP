<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
<%-- 담당자 1 전화번호 3등분 --%>
<c:set var="mngr1LocNum" value="${ fn:substring(partnerVo.prtnMngr1RprsnPh, 0, 2) }" />
<c:if test="${ fn:length(partnerVo.prtnMngr1RprsnPh) > 0  && mngr1LocNum == '02' }">
	<c:set var="prtnMngr1RprsnPh1" value="${ fn:substring(partnerVo.prtnMngr1RprsnPh, 0, 2 ) }" />
	<c:set var="prtnMngr1RprsnPh2" value="${ fn:substring(partnerVo.prtnMngr1RprsnPh, 3, 6) }" />
	<c:set var="prtnMngr1RprsnPh3" value="${ fn:substring(partnerVo.prtnMngr1RprsnPh, 7, 11) }" />
</c:if>
<c:if test="${ fn:length(partnerVo.prtnMngr1RprsnPh) > 0 && mngr1LocNum != '02' }">
	<c:set var="prtnMngr1RprsnPh1" value="${ fn:substring(partnerVo.prtnMngr1RprsnPh, 0, 3 ) }" />
	<c:set var="prtnMngr1RprsnPh2" value="${ fn:substring(partnerVo.prtnMngr1RprsnPh, 4, 7) }" />
	<c:set var="prtnMngr1RprsnPh3" value="${ fn:substring(partnerVo.prtnMngr1RprsnPh, 8, 12 ) }" />
</c:if>
<c:if test="${ fn:length(partnerVo.prtnMngr1Ph) > 0 }">
	<c:set var="prtnMngr1Ph1" value="${ fn:substring(partnerVo.prtnMngr1Ph, 0, 4) }" />
	<c:set var="prtnMngr1Ph2" value="${ fn:substring(partnerVo.prtnMngr1Ph, 4, 8) }" />
	<c:set var="prtnMngr1Ph3" value="${ fn:substring(partnerVo.prtnMngr1Ph, 9, 13) }" />
</c:if>
<c:if test="${ not empty partnerVo.prtnMngr2Nm }">

	<c:set var="mngr2LocNum" value="${ fn:substring(partnerVo.prtnMngr2RprsnPh, 0, 2) }" />
	
	<c:if test="${ fn:length(partnerVo.prtnMngr2RprsnPh) > 0  && mngr2LocNum == '02' }">
		<c:set var="prtnMngr2RprsnPh1" value="${ fn:substring(partnerVo.prtnMngr2RprsnPh, 0, 2 ) }" />
		<c:set var="prtnMngr2RprsnPh2" value="${ fn:substring(partnerVo.prtnMngr2RprsnPh, 3, 6) }" />
		<c:set var="prtnMngr2RprsnPh3" value="${ fn:substring(partnerVo.prtnMngr2RprsnPh, 7, 11) }" />
	</c:if>	
	<c:if test="${ fn:length(partnerVo.prtnMngr2RprsnPh) > 0 && mngr2LocNum != '02' }">
		<c:set var="prtnMngr2RprsnPh1" value="${ fn:substring(partnerVo.prtnMngr2RprsnPh, 0, 3 ) }" />
		<c:set var="prtnMngr2RprsnPh2" value="${ fn:substring(partnerVo.prtnMngr2RprsnPh, 4, 7) }" />
		<c:set var="prtnMngr2RprsnPh3" value="${ fn:substring(partnerVo.prtnMngr2RprsnPh, 8, 12 ) }" />
	</c:if>
	<c:if test="${ fn:length(partnerVo.prtnMngr2Ph) > 0 }">
		<c:set var="prtnMngr2Ph1" value="${ fn:substring(partnerVo.prtnMngr2Ph, 0, 4) }" />
		<c:set var="prtnMngr2Ph2" value="${ fn:substring(partnerVo.prtnMngr2Ph, 4, 8) }" />
		<c:set var="prtnMngr2Ph3" value="${ fn:substring(partnerVo.prtnMngr2Ph, 9, 13) }" />
	</c:if>	
</c:if>
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
					<button class="btn btn-navbar" type="button">
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
								<h1 class="m-0 text-dark">협력사 정보 수정</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<div class="btn-wrapper float-right">
									<a href='<c:url value='/erp/partner/selectPartnerPagingList.do' />' class="btn btn-info">목록으로</a>
									<button class="btn btn-primary" id="insertBtn">수정완료</button>
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
										<label for="prtnTypCd" class="col-sm-2 col-form-label">사업자 유형</label>
										<div class="col-sm-4">
											<select class="form-control" id="prtnTypCd">
												<option value="P00001" <c:if test="${partnerVo.prtnTypCd eq 'P00001' }">selected</c:if> >개인 사업자</option>
												<option value="P00002" <c:if test="${partnerVo.prtnTypCd eq 'P00002' }">selected</c:if> >법인 사업자</option>
											</select>
										</div>
										<label for="prtnEnrlmNum"
											class="col-sm-2 col-form-label text-right">등록번호</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" name="prtnEnrlmNum"
												id="prtnEnrlmNum" placeholder="사업자 등록번호" value="${partnerVo.prtnEnrlmNum }" >
										</div>
										<div class="col-sm-1">
											<button class="btn btn-primary" id="duplBtn">중복확인</button>
										</div>
										
									</div>
									<div class="form-group row">
										<label for="prtnNm" class="col-sm-2 col-form-label">법인명</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnNm"
												id="prtnNm" placeholder="ex) 법인 이름" value="${partnerVo.prtnNm }" >  
										</div>
										<label for="prtnRprsnNm"
											class="col-sm-2 col-form-label text-right">대표자</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnRprsnNm"
												id="prtnRprsnNm" placeholder="ex) 대표자 이름" value="${partnerVo.prtnRprsnNm }"  >
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnEtbDt" class="col-sm-2 col-form-label">개업 연월일</label>
										<div class="col-sm-4">
											<input type="date" class="form-control" name="prtnEtbDt"
												id="prtnEtbDt" placeholder="ex)대리, 차장" value="${ partnerVo.prtnEtbDt }" >
										</div>
										<label for="prtnCrprtNum" 
											class="col-sm-2 col-form-label text-right" id="labelCorpRegNum">법인 번호</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnCrprtNum"
												id="prtnCrprtNum" placeholder="ex)123456-0987654" value="${partnerVo.prtnCrprtNum }">
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnBsnscon" class="col-sm-2 col-from-label">업태(업종)</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnBsnscon"
												id="prtnBsnscon" placeholder="ex)서비스업" value="${partnerVo.prtnBsnscon }" >
										</div>
										<label for="prtnSrvc" class="col-sm-2 col-form-label text-right">서비스</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnSrvc"
												id="prtnSrvc" placeholder="ex) 소프트웨어 개발  공급" value="${partnerVo.prtnSrvc }" >
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnLoc" class="col-sm-2 col-form-label">사업장 주소</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="prtnLoc"
												id="prtnLoc" placeholder="ex)구로구 구로동..." value="${partnerVo.prtnLoc }" >
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						
						
					</div>
				</div>
				</section>
				<div class="btn-wrapper float-right">
											
										</div>
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h4 class="m-0 text-dark">담당자</h4>
							</div>
							<div class="col-sm-6">
								<div class="btn-wrapper float-right">
									<input type="button" value="추가" id="addMngr" class="btn btn-success">
									<input type="button" value="삭제" id="delMngr" class="btn btn-danger">
								</div>
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
										<label for="prtnMngr1Nm" class="col-sm-2 col-form-label">담당자1 이름</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnMngr1Nm" 
												id="prtnMngr1Nm" value="${partnerVo.prtnMngr1Nm }"  >
										</div>
										<label for="prtnMngr1Dept" class="col-sm-2 col-form-label text-right">담당자1 부서</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnMngr1Dept"
												id="prtnMngr1Dept" placeholder="ex) 경영지원 " value="${partnerVo.prtnMngr1Dept }"  >
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnMngr1Rnk"
											class="col-sm-2 col-form-label">담당자1 직급</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnMngr1Rnk"
												id="prtnMngr1Rnk" placeholder="ex) 대리 , 과장.. " value="${partnerVo.prtnMngr1Rnk }" >
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnMngr1RprsnPh1" class="col-sm-2 col-form-label">대표번호</label>
										<div class="col-sm-2">
											<select id="prtnMngr1RprsnPh1" class="form-control">
												<option value="02" <c:if test="${ prtnMngr1RprsnPh1 eq '02' }">selected</c:if> >02</option>
												<option value="031" <c:if test="${ prtnMngr1RprsnPh1 eq '031' }">selected</c:if> >031</option>
											</select>
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr1RprsnPh2" maxlength="3" value="${ prtnMngr1RprsnPh2 }" >
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr1RprsnPh3" maxlength="4" value="${ prtnMngr1RprsnPh3 }" >
										</div>
										<input type="hidden" name="prtnMngr1RprsnPh" id="prtnMngr1RprsnPh" value="${partnerVo.prtnMngr1RprsnPh }">
									</div>
									<div class="form-group row">
										<label for="prtnMngr1Ph1" class="col-sm-2 col-form-label">담당자1 전화번호</label>
										<div class="col-sm-2">
										<select id="prtnMngr1Ph1" class="form-control">
												<option value="010" <c:if test="${ prtnMngr1Ph1 eq '010' }">selected</c:if> >010</option>
												<option value="011" <c:if test="${ prtnMngr1Ph1 eq '011' }">selected</c:if> >011</option>
												<option value="012" <c:if test="${ prtnMngr1Ph1 eq '012' }">selected</c:if> >012</option>
												<option value="013" <c:if test="${ prtnMngr1Ph1 eq '013' }">selected</c:if> >013</option>
												<option value="019" <c:if test="${ prtnMngr1Ph1 eq '019' }">selected</c:if> >019</option>
											</select>
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr1Ph2" maxlength="4" value="${prtnMngr1Ph2 }" >
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr1Ph3" maxlength="4" value="${prtnMngr1Ph3 }" >
										</div>
										<input type="hidden" name="prtnMngr1Ph" id="prtnMngr1Ph" value="${ partnerVo.prtnMngr1Ph }">
									</div>
									<div class="form-group row">
										<label for="prtnMngr1Eml" class="col-sm-2 col-form-label">담당자1 Email</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="prtnMngr1Eml"
												id="prtnMngr1Eml" placeholder="ex) ASDF@gmail.com" value="${partnerVo.prtnMngr1Eml }">
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<div id="mngrForm2" class="col-md-12">
							<!-- general form elements -->
							<div class="card card-olive">
								<div class="card-header">
									<h3 class="card-title">담당자2 정보</h3>
									<div class="card-subtitle"></div>
								</div>
								<!-- /.card-header -->
								<!-- card-body -->
								<div class="card-body">
									<div class="form-group row">
										<label for="prtnMngr2Nm" class="col-sm-2 col-form-label">담당자2 이름</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnMngr2Nm" 
												id="prtnMngr2Nm" value="${partnerVo.prtnMngr2Nm }" >
										</div>
										<label for="prtnMngr2Dept" class="col-sm-2 col-form-label text-right">담당자2 부서</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnMngr2Dept"
												id="prtnMngr2Dept" placeholder="ex) 경영지원 " value="${partnerVo.prtnMngr2Dept }" >
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnMngr2Rnk"
											class="col-sm-2 col-form-label">담당자2 직급</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnMngr2Rnk"
												id="prtnMngr2Rnk" placeholder="ex) 대리 , 과장.. " value="${partnerVo.prtnMngr2Rnk }">
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnMngr2RprsnPh1" class="col-sm-2 col-form-label">대표번호</label>
										<div class="col-sm-2">
											<select id="prtnMngr2RprsnPh1" class="form-control">
												<option value="02" <c:if test="${ prtnMngr2RprsnPh1 eq '02' }">selected</c:if> >02</option>
												<option value="031" <c:if test="${ prtnMngr2RprsnPh1 eq '031' }">selected</c:if> >031</option>
											</select>
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr2RprsnPh2" maxlength="3" value="${prtnMngr2RprsnPh2 }" >
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr2RprsnPh3" maxlength="4" value="${prtnMngr2RprsnPh3 }" >
										</div>
										<input type="hidden" name="prtnMngr2RprsnPh" id="prtnMngr2RprsnPh" value="${partnerVo.prtnMngr2RprsnPh }">
									</div>
									<div class="form-group row">
										<label for="prtnMngr2Ph1" class="col-sm-2 col-form-label">담당자2 전화번호</label>
										<div class="col-sm-2">
										<select id="prtnMngr2Ph1" class="form-control">
												<option value="010" <c:if test="${ prtnMngr2Ph1 eq '010' }">selected</c:if> >010</option>
												<option value="011" <c:if test="${ prtnMngr2Ph1 eq '011' }">selected</c:if> >011</option>
												<option value="012" <c:if test="${ prtnMngr2Ph1 eq '012' }">selected</c:if> >012</option>
												<option value="013" <c:if test="${ prtnMngr2Ph1 eq '013' }">selected</c:if> >013</option>
												<option value="019" <c:if test="${ prtnMngr2Ph1 eq '019' }">selected</c:if> >019</option>
											</select>
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr2Ph2" maxlength="4"  value="${prtnMngr2Ph2 }">
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr2Ph3" maxlength="4"  value="${prtnMngr2Ph3 }">
										</div>
										<input type="hidden" name="prtnMngr2Ph" id="prtnMngr2Ph" value="${partnerVo.prtnMngr2Ph }">
									</div>
									<div class="form-group row">
										<label for="prtnMngr2Eml" class="col-sm-2 col-form-label">담당자2 Email</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="prtnMngr2Eml"
												id="prtnMngr2Eml" placeholder="ex) ASDF@gmail.com" value="${partnerVo.prtnMngr2Eml }">
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
					</div>
				</div>
				</section>
				<!-- /.content-header -->
				<div class="btn-wrapper float-right"></div>
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h4 class="m-0 text-dark">협력사 파일</h4>
							</div>
							<div class="col-sm-6">
								<div class="btn-wrapper float-right">
									<input type="button" value="추가" id="addFile" class="btn btn-success">
									<input type="button" value="삭제" id="delFile" class="btn btn-danger">
								</div>
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
										<a href="javascript:void(0);" id="${files.prtnFileSq }" onclick="fn_deleteFile(this)" class='btn btn-secondary fileDelete'>삭제</a>
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
	
<!-- 담당자 2 정보가 존재할 경우 담당자2 정보 입력 폼 표시 or hide -->	
<c:choose>
	<c:when test="${not empty partnerVo.prtnMngr2Nm }">
		<script>$("#mngrForm2").show();</script>
	</c:when>
	<c:otherwise>
		<script>$("#mngrForm2").hide();</script>
	</c:otherwise>
</c:choose>

	<script>
		var prtnTypCd = $("#prtnTypCd option:selected").val();
		var body = $("#file-list");
		var label = $("#labelCorpRegNum");
		var input = $("#prtnCrprtNum");
		var fileFormCount = 0;
		var gv_errCd;
		var gv_errMsg;
		var duplicate = true;
		// 조회된 협력사정보의 사업자 유형이 법인이라면 법인등록번호 입력란 show 아니면 hide
		$(document).ready(function() {
					
			if($("#prtnTypCd").val() == 'P00001'){
				
				label.hide();
				input.hide();
			}else{
				
				label.show();
				input.show();
			}
			
			if($("#prtnEnrlmNum").val() == "${partnerVo.prtnEnrlmNum }"){
				duplicate = false;
			}
				
				
			
		});
		
		// 사업자유형 select 박스 change 이벤트
		$("#prtnTypCd").on("change", function() {
			
			var label = $("#labelCorpRegNum");
			var input = $("#prtnCrprtNum");
			
			console.log(prtnTypCd + " : 변경전");
			
			prtnTypCd = $("#prtnTypCd option:selected").val();
			console.log(prtnTypCd + " : 변경후");
			
			if(prtnTypCd == "P00001") {
				label.hide();
				input.hide();
				input.val("");
			} else if(prtnTypCd == "P00002") {
				label.show();
				input.show();
			}
		});
		
		// 새로운 파일 입력 폼 추가 버튼 클릭 이벤트
		$("#addFile").click(function(){
			
			fileFormCount = fileFormCount + 1;
			
			var formId = 'fileForm'+fileFormCount;
			
			var fileId = 'file'+fileFormCount;
			
			body.append(
				"<div id='"+formId+"' class='form-group-row'>"
				+"<label for='"+fileId+"' class='col-sm-2 col-form-label'>새로운 파일"+fileFormCount+"</label>"
				+"<input type='file' class='form-control' name='inputFile' id='"+fileId+"' value='' />"
				+"</div>"
			);
		})
		// 새로운 파일 입력 폼 삭제 버튼 클릭 이벤트
		$("#delFile").click(function(){
			
			if(fileFormCount > 0){
				
				body.children().last().remove();
				
				fileFormCount = fileFormCount - 1;
			}else{
				fileFormCount = 0;
				alert("삭제할 새로운 파일이 없습니다.");
			}
			
		})
		// 사업자등록번호 값 변경 이벤트
		$("#prtnEnrlmNum").change(function(){
		
			duplicate = true;
		})
		// 중복확인 버튼 클릭 이벤트
		$("#duplBtn").click(function(){
			
			var ori_prtnEnrlmNum = "${partnerVo.prtnEnrlmNum}";
			var prtnEnrlmNum = $("#prtnEnrlmNum").val();
			
			if(ori_prtnEnrlmNum != prtnEnrlmNum){
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/erp/partner/checkDuplicate.do' />");
				comAjax.addParam("prtnEnrlmNum",prtnEnrlmNum);
				comAjax.setCallback(fn_checkDuplicateCallback);
				comAjax.ajax();
				
			}else{
				alert('중복확인 되었습니다.');
				duplicate = false;
			}
		})
		// 사업자등록번호가 ~ 인 행 조회한 후 콜백 함수에서 중복 체크
		function fn_checkDuplicateCallback(data){
			var check = data.duplicate;
			if(check == 0){
				alert('중복확인 되었습니다.');
				duplicate = false;
			}else{
				alert('이미 사용중인 사업자 번호입니다. 다른 번호로 변경해주세요!');
				duplicate = true;
			}
		}
		// 담당자2 정보 입력 폼 추가 버튼 클릭 이벤트
		$("#addMngr").click(function(){
			
			if( $("#mngrForm2").is(':visible') ){
				alert("담당자는 최대 2명만 등록할 수 있습니다.");
			}
			$("#mngrForm2").show();
		})
		// 담당자2 정보 폼 삭제 버튼 클릭 이벤트
		$("#delMngr").click(function(){
			
			if($("#mngrForm2").is(':visible') == false) {
				
				alert("담당자는 최소 1명이상 등록하여야 합니다!");
				
			}else{
				
				if(confirm('두번째 담당자의 정보를 삭제하시겠습니까?')){
					
					var comAjax = new ComAjax();
					
					var prtnEnrlmNum = "${partnerVo.prtnEnrlmNum}";
					
					comAjax.setUrl("<c:url value='/erp/partner/deleteSecondMngr.do' />");
					
					comAjax.addParam("prtnEnrlmNum",prtnEnrlmNum)
					
					comAjax.setCallback(fn_deleteSecondMngrCallback)
					
					comAjax.ajax();
				}
			}	
		})
		// 담당자2 정보 삭제 버튼 클릭 후 콜백 함수.
		function fn_deleteSecondMngrCallback(data){
				
				var code = data.code;
				if(code > 0) {	// 정상 추가시 회원 목록 화면으로 이동
					
					$("#prtnMngr2Nm").val("");
					$("#prtnMngr2Dept").val("");
					$("#prtnMngr2Rnk").val("");
					$("#prtnMngr2RprsnPh1 option:eq(0)").prop("selected",true); //첫번째 option 선택
					$("#prtnMngr2RprsnPh2").val("");
					$("#prtnMngr2RprsnPh3").val("");
					$("#prtnMngr2Ph1 option:eq(0)").prop("selected",true); //첫번째 option 선택
					$("#prtnMngr2Ph2").val("");
					$("#prtnMngr2Ph3").val("");
					$("#prtnMngr2Eml").val("");
					
					$("#mngrForm2").hide();
					
					alert("정상적으로 담당자 정보를 삭제하였습니다.");
				
				}else {
					alert("담당자 정보를 삭제하는데 실패하였습니다.");
				}
				
		}
		// 사업자 유형 select 박스 옵션 change 이벤트	
		$("#prtnTypCd").on("change", function() {
			
			var label = $("#labelCorpRegNum");
			var input = $("#prtnCrprtNum");
			
			console.log(prtnTypCd + " : 변경전");
			
			prtnTypCd = $("#prtnTypCd option:selected").val();
			console.log(prtnTypCd + " : 변경후");
			
			if(prtnTypCd == "P00001") {
				label.hide();
				input.hide();
				input.val("");
			} else if(prtnTypCd == "P00002") {
				label.show();
				input.show();
			}
		});
		
		function fn_hpNumConvert(num1, num2, num3) {
			if(num2.length < 4 || num3.length < 4) return "";
			
			return num1 + "-" + num2 + "-" + num3;
		}
		function fn_telNumConvert(num1, num2, num3) {
			if(num2.length < 3 || num3.length < 4) return "";
			
			return num1 + "-" + num2 + "-" + num3;
		}
		
		function fn_dateNullCheck(element) {
			var date = $(element).val();
			if(date === "") return null;
			else			return date;
		}
		
		// 숫자 입력 이벤트 바인딩
		// 매니저 1 대표,전화 번호
		gfn_onlyNumber($("#prtnMngr1RprsnPh2"));
		gfn_onlyNumber($("#prtnMngr1RprsnPh3"));
		gfn_onlyNumber($("#prtnMngr1Ph2"));
		gfn_onlyNumber($("#prtnMngr1Ph3"));
		// 매니저 2 대표,전화 번호
		gfn_onlyNumber($("#prtnMngr2RprsnPh2"));
		gfn_onlyNumber($("#prtnMngr2RprsnPh3"));
		gfn_onlyNumber($("#prtnMngr2Ph2"));
		gfn_onlyNumber($("#prtnMngr2Ph3"));
		
		
		// 협력사 타입 개인,법인 변경 이벤트 //
		$("#prtnTypCd").on("change", function() {
			
			var label = $("#labelCorpRegNum");
			var input = $("#prtnCrprtNum");
			
			console.log(prtnTypCd + " : 변경전");
			
			prtnTypCd = $("#prtnTypCd option:selected").val();
			console.log(prtnTypCd + " : 변경후");
			
			if(prtnTypCd == "P00001") {
				
				label.hide();
				input.hide();
			} else if(prtnTypCd == "P00002") {
				
				label.show();
				input.show();
			}
		});
		
		// 협력사 정보 수정 submit 버튼 클릭 이벤트 //
		$("#insertBtn").on("click", function() {
			// 유효성 검사
			var prtnEnrlmNum = $("#prtnEnrlmNum").val();
			var prtnNm = $("#prtnNm").val();
			var prtnRprsnNm = $("#prtnRprsnNm").val();
			var prtnEtbDt = fn_dateNullCheck($("#prtnEtbDt"));
			var prtnCrprtNum = $("#prtnCrprtNum").val();
			var prtnLoc = $("#prtnLoc").val();
			var prtnBsnscon = $("#prtnBsnscon").val();
			var prtnSrvc = $("#prtnSrvc").val();
			// 담당자 1 정보
			var prtnMngr1Nm = $("#prtnMngr1Nm").val();
			var prtnMngr1Dept = $("#prtnMngr1Dept").val();
			var prtnMngr1Rnk = $("#prtnMngr1Rnk").val();
			var prtnMngr1RprsnPh_2 = $("#prtnMngr1RprsnPh2").val();
			var prtnMngr1RprsnPh_3 = $("#prtnMngr1RprsnPh3").val();
			var prtnMngr1Ph_2 = $("#prtnMngr1Ph2").val();
			var prtnMngr1Ph_3 = $("#prtnMngr1Ph3").val();
			var prtnMngr1Eml = $("#prtnMngr1Eml").val();
			// 담당자 2 정보
			var prtnMngr2Nm = $("#prtnMngr2Nm").val();
			var prtnMngr2Dept = $("#prtnMngr2Dept").val();
			var prtnMngr2Rnk = $("#prtnMngr2Rnk").val();
			var prtnMngr2RprsnPh_2 = $("#prtnMngr2RprsnPh2").val();
			var prtnMngr2RprsnPh_3 = $("#prtnMngr2RprsnPh3").val();
			var prtnMngr2Ph_2 = $("#prtnMngr2Ph2").val();
			var prtnMngr2Ph_3 = $("#prtnMngr2Ph3").val();
			var prtnMngr2Eml = $("#prtnMngr2Eml").val();
			// 협력사 파일 정보
			var inputFile = $('input[type="file"]');
			
			
			// ------------------협력사 정보 유효값 검증------------------------ //
			
			// 사업자 유형 유효성 체크
			if(gfn_isNull(prtnTypCd)) {
				alert("사업자 유형을 선택해 주세요");
				return false;
			}
			
			// 등록번호 유효성 체크
			if(gfn_isNull(prtnEnrlmNum)) {
				alert("등록번호를 입력해주세요.");
				return false;
			}
			
			// 법인 명 유효성 체크
			if(gfn_isNull(prtnNm)) {
				alert("법인 명을 입력해주세요.");
				return false
			}
			
			// 대표자 유효성 체크
			if(gfn_isNull(prtnRprsnNm)) {
				alert("대표자를 입력해주세요.");
				return false
			}
			
			// 법인 등록번호 유효성 체크
			if(gfn_isNull(prtnCrprtNum) && prtnTypCd == "P00002") {
				alert("법인 등록번호를 입력해 주세요.");
				return false;
			} else if(prtnCrprtNum == "P00001") {
				
				return true;
			}
			
			// 개업 연월일 유효성 체크
			if(gfn_isNull(prtnEtbDt)) {
				alert("개업 연월일을 입력해주세요.");
				
				return false
			}
			
			// 주소 유효성 체크
			if(gfn_isNull(prtnLoc)) {
				alert("주소를 입력해주세요.");
				return false;
			}
			// 업태(업종) 유효성 체크
			if(gfn_isNull(prtnBsnscon)) {
				alert("업태를 입력해주세요.");
				return false;
			}	
			// 서비스 유효성 체크
			if(gfn_isNull(prtnSrvc)) {
				alert("서비스를 입력해주세요.");
				return false;
			}
		
			
			// -----------------------담당자 1 정보 유효값 검증------------------------- //
			
			// 담당자1 이름 유효성 체크
			if(gfn_isNull(prtnMngr1Nm)) {
				
				alert("담당자1 이름을 입력해 주세요.");
				return false;
			}
			
			// 담당자1 부서 유효성 체크
			if(gfn_isNull(prtnMngr1Dept)) {
				
				alert("담당자1 부서를 입력해 주세요");
				return false;
			}
			
			// 담당자1 직급 유효성체크
			if(gfn_isNull(prtnMngr1Rnk)) {
				
				alert("담당자1 직급을 입력해 주세요.");
				return false;
			}
			
			// 담당자1 대표번호 유효성 체크
			if(prtnMngr1RprsnPh_2.length < 3 || prtnMngr1RprsnPh_3.length < 4){
				alert("담당자1 대표번호를  확인해주세요");
				return false;
			}
			
			// 담당자1 이메일 유효성 체크
			if(!gfn_emailVaild(prtnMngr1Eml)) {
				
				alert("담당자1 이메일을  확인해주세요");
				return false;
			}

			// --------------------------담당자 2 정보 유효값 검증----------------------- //
			if( $("#mngrForm2").is(':visible') ){
				
				// 담당자2 이름 유효성 체크
				if(gfn_isNull(prtnMngr2Nm)) {
					
					alert("담당자2 이름을 입력해 주세요.");
					return false;
				}
				
				// 담당자2 부서 유효성 체크
				if(gfn_isNull(prtnMngr2Dept)) {
					
					alert("담당자2 부서를 입력해 주세요");
					return false;
				}
				
				// 담당자2 직급 유효성체크
				if(gfn_isNull(prtnMngr2Rnk)) {
					
					alert("담당자2 직급을 입력해 주세요.");
					return false;
				}
				
				// 담당자2 대표번호 유효성 체크
				if(prtnMngr2RprsnPh_2.length < 3 || prtnMngr2RprsnPh_3.length < 4){
					alert("담당자2 대표번호를  확인해주세요");
					return false;
				}
				
				// 담당자2 이메일 유효성 체크
				if(!gfn_emailVaild(prtnMngr2Eml)) {
					alert("담당자2 이메일을  확인해주세요");
					return false;
				}
			}
			
			if(duplicate){
				alert("사업자 등록번호를 중복 확인해주세요!");
				return false;
			}
			
			// ---------------------------협력사 파일 검증.----------------------------- //
			/*  굳이 필요 없음!
			for(var i=0;i<inputFile.length;i++){
				if(gfn_isNull(inputFile[i].val())){
					alert('파일을 선택하지 않으셨습니다.');
					i = inputFile.length;
					return false;
				}
			}
			*/
			// -------------------------- 담당자 전화번호 010-xxxx-xxxx 형태로 convert.-----//				
			var prtnMngr1RprsnPh = fn_telNumConvert($("#prtnMngr1RprsnPh1").val(), prtnMngr1RprsnPh_2, prtnMngr1RprsnPh_3);
			var prtnMngr1Ph = fn_hpNumConvert($("#prtnMngr1Ph1").val(), prtnMngr1Ph_2, prtnMngr1Ph_3);
			
			var prtnMngr2RprsnPh = fn_telNumConvert($("#prtnMngr2RprsnPh1").val(), prtnMngr2RprsnPh_2, prtnMngr2RprsnPh_3);
			var prtnMngr2Ph = fn_hpNumConvert($("#prtnMngr2Ph1").val(), prtnMngr2Ph_2, prtnMngr2Ph_3);
			
			var formData = new FormData();
			
			var prtnSq = "${partnerVo.prtnSq}";
			
			/* addParam 필수값만 셋팅 후 나머지는 값 있을시 추가 */
			
			// 필수 parameter (협력사 정보, 담당자1 정보) */
			formData.append("prtnSq",prtnSq);
			formData.append("prtnTypCd", prtnTypCd);
			formData.append("prtnEnrlmNum", prtnEnrlmNum);
			formData.append("prtnNm", prtnNm);
			formData.append("prtnRprsnNm", prtnRprsnNm);
			formData.append("prtnEtbDt", prtnEtbDt);
			formData.append("prtnLoc", prtnLoc);
			formData.append("prtnBsnscon", prtnBsnscon);
			formData.append("prtnSrvc", prtnSrvc);
			formData.append("prtnMngr1Nm", prtnMngr1Nm);
			formData.append("prtnMngr1Dept", prtnMngr1Dept);
			formData.append("prtnMngr1Rnk", prtnMngr1Rnk);
			formData.append("prtnMngr1RprsnPh", prtnMngr1RprsnPh);
			formData.append("prtnMngr1Ph", prtnMngr1Ph);
			formData.append("prtnMngr1Eml", prtnMngr1Eml);
			
			/* 추가 parameter */
			
			// 법인 사업자인 경우 법인 등록번호 추가
			if(!gfn_isNull(prtnCrprtNum))	{
				
				formData.append("prtnCrprtNum", prtnCrprtNum);
			}
			// 담당자 2명인 경우 담당자2 정보 추가.
			if(!gfn_isNull(prtnMngr2Nm))	{
				
				formData.append("prtnMngr2Nm", prtnMngr2Nm);
				formData.append("prtnMngr2Dept", prtnMngr2Dept);
				formData.append("prtnMngr2Rnk", prtnMngr2Rnk);
				formData.append("prtnMngr2RprsnPh", prtnMngr2RprsnPh);
				formData.append("prtnMngr2Ph", prtnMngr2Ph);
				formData.append("prtnMngr2Eml", prtnMngr2Eml);
			}
			// 협력사 파일 존재하는 경우.
			if(inputFile.length>0){
				
				for(var i=0;i<inputFile.length;i++){
					var file = inputFile[i].files;
					formData.append('uploadFile'+(i+1),file[0]);
				}
			}
			
			$.ajax({
				contentType : false,
				processData : false,
				data : formData,
				url : '/erp/partner/updatePartner.do',
				type : 'POST',
				success : function(data){
					console.log("[ajax.success]");
					console.log(data);
					
					gv_errCd = data.errCd;
					gv_errMsg = data.errMsg;
					
					fn_updatePartnerCallback(data);
				},
				complete : function(){
					console.log("[ajax.complete]");
				},
				error : function(request,status,error){
					console.log("[ajax.error]");
			    	gv_errCd = "SYSTEM ERROR";
					gv_errMsg = "처리 도중 오류가 발생하였습니다. \n창을 닫고 다시 접속하세요.";
			    	gfn_moveErrorPage(gv_errCd, gv_errMsg);
			    	return false;
				}
			}).submit();
		});
		// 협력사 정보 업데이트 후 콜백 함수
		function fn_updatePartnerCallback(data) {
			var code = data.code;
			if(code > 0) {	// 정상 추가시 회원 목록 화면으로 이동
				alert("협력사 정보를 정상적으로 수정하었습니다.");
				var comSubmit = new ComSubmit();
				
				var sq = "${partnerVo.prtnSq}";
				
				comSubmit.setUrl("<c:url value='/erp/partner/partnerDetailPage.do' />");
				comSubmit.addParam("sq", sq);
				comSubmit.submit();
			}else {
				alert("협력사 정보를 수정하는데 실패하였습니다.");
			}
		}
		// 하나의 등록된 파일 삭제 이벤트
		function fn_deleteFile(obj){
			
			var prtnFileSq = $(obj).attr('id');
			
			if(confirm('해당 파일을 삭제하시겠습니까?')){
				
				var comAjax = new ComAjax();
				
				comAjax.setUrl("<c:url value='/erp/partner/deletePartnerFile.do' />");
				
				comAjax.addParam("prtnFileSq", prtnFileSq);
				
				comAjax.setCallback(fn_deleteFileCallback);
				
				comAjax.ajax();
				
			}
		}
		// 등록된 파일 삭제 후 콜백 함수.
		function fn_deleteFileCallback(data){
			var code = data.code;
			if(code > 0) {	// 정상 추가시 회원 목록 화면으로 이동
				alert("정상적으로 파일을 삭제하였습니다.");
			
				var prtnFileSq = data.prtnFileSq;
				
				$("#"+prtnFileSq+"").parent().remove();
				
			}else {
				alert("파일 삭제를 실패하였습니다.");
			}
		}
	</script>
</body>
</html>