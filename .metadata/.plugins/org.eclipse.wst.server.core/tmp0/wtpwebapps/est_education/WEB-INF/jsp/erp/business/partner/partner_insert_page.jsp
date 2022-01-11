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
								<h1 class="m-0 text-dark">협력사 등록</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<div class="btn-wrapper float-right">
									<a href='<c:url value='/erp/partner/selectPartnerPagingList.do' />' class="btn btn-info">목록으로</a>
									<button class="btn btn-primary" id="insertBtn">등록</button>
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
												<option value="P00001" >개인 사업자</option>
												<option value="P00002" selected="selected" >법인 사업자</option>
											</select>
										</div>
										<label for="prtnEnrlmNum"
											class="col-sm-2 col-form-label text-right">등록번호</label>
										<div class="col-sm-3">
											<input type="text" class="form-control" name="prtnEnrlmNum"
												id="prtnEnrlmNum" placeholder="사업자 등록번호" >
										</div>
										<div class="col-sm-1">
											<button class="btn btn-primary" id="duplBtn">중복확인</button>
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnNm" class="col-sm-2 col-form-label">법인명</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnNm"
												id="prtnNm" placeholder="ex) 법인 이름" >  
										</div>
										<label for="prtnRprsnNm"
											class="col-sm-2 col-form-label text-right">대표자</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnRprsnNm"
												id="prtnRprsnNm" placeholder="ex) 대표자 이름" >
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnEtbDt" class="col-sm-2 col-form-label">개업 연월일</label>
										<div class="col-sm-4">
											<input type="date" class="form-control" name="prtnEtbDt"
												id="prtnEtbDt" placeholder="ex)대리, 차장" >
										</div>
										<label for="prtnCrprtNum" 
											class="col-sm-2 col-form-label text-right" id="labelCorpRegNum">법인 번호</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnCrprtNum"
												id="prtnCrprtNum" placeholder="ex)123456-0987654" >
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnBsnscon" class="col-sm-2 col-from-label">업태(업종)</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnBsnscon"
												id="prtnBsnscon" placeholder="ex)서비스업">
										</div>
										<label for="prtnSrvc" class="col-sm-2 col-form-label text-right">서비스</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnSrvc"
												id="prtnSrvc" placeholder="ex) 소프트웨어 개발  공급">
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnLoc" class="col-sm-2 col-form-label">사업장 주소</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="prtnLoc"
												id="prtnLoc" placeholder="ex)구로구 구로동...">
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
												id="prtnMngr1Nm" >
										</div>
										<label for="prtnMngr1Dept" class="col-sm-2 col-form-label text-right">담당자1 부서</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnMngr1Dept"
												id="prtnMngr1Dept" placeholder="ex) 경영지원 " >
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnMngr1Rnk"
											class="col-sm-2 col-form-label">담당자1 직급</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnMngr1Rnk"
												id="prtnMngr1Rnk" placeholder="ex) 대리 , 과장.. ">
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
											<input type="text" class="form-control" id="prtnMngr1RprsnPh2" maxlength="3"  >
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr1RprsnPh3" maxlength="4"  >
										</div>
										<input type="hidden" name="prtnMngr1RprsnPh" id="prtnMngr1RprsnPh">
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
											<input type="text" class="form-control" id="prtnMngr1Ph2" maxlength="4"  >
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr1Ph3" maxlength="4"  >
										</div>
										<input type="hidden" name="prtnMngr1Ph" id="prtnMngr1Ph">
									</div>
									<div class="form-group row">
										<label for="prtnMngr1Eml" class="col-sm-2 col-form-label">담당자1 Email</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="prtnMngr1Eml"
												id="prtnMngr1Eml" placeholder="ex) ASDF@gmail.com" >
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
												id="prtnMngr2Nm" >
										</div>
										<label for="prtnMngr2Dept" class="col-sm-2 col-form-label text-right">담당자2 부서</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnMngr2Dept"
												id="prtnMngr2Dept" placeholder="ex) 경영지원 " >
										</div>
									</div>
									<div class="form-group row">
										<label for="prtnMngr2Rnk"
											class="col-sm-2 col-form-label">담당자2 직급</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnMngr2Rnk"
												id="prtnMngr2Rnk" placeholder="ex) 대리 , 과장.. ">
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
											<input type="text" class="form-control" id="prtnMngr2RprsnPh2" maxlength="3"  >
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr2RprsnPh3" maxlength="4"  >
										</div>
										<input type="hidden" name="prtnMngr2RprsnPh" id="prtnMngr2RprsnPh">
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
											<input type="text" class="form-control" id="prtnMngr2Ph2" maxlength="4"  >
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="prtnMngr2Ph3" maxlength="4"  >
										</div>
										<input type="hidden" name="prtnMngr2Ph" id="prtnMngr2Ph">
									</div>
									<div class="form-group row">
										<label for="prtnMngr2Eml" class="col-sm-2 col-form-label">담당자2 Email</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="prtnMngr2Eml"
												id="prtnMngr2Eml" placeholder="ex) ASDF@gmail.com" >
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
	<script>
	$(document).ready(function() {
		$("#mngrForm2").hide();
	});
	
	var fileFormCount = 0;
	var gv_errCd;
	var gv_errMsg;
	var prtnTypCd = $("#prtnTypCd option:selected").val();
	var body = $("#file-list");
	var duplicate = true;
	
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
	// 협력사 정보 등록 콜백 함수
	function fn_insertPartnerCallback(data) {
		var code = data.code;
		if(code > 0) {	// 정상 추가시 회원 목록 화면으로 이동
			alert("협력사 등록이 정상적으로 완료되었습니다.");
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/erp/partner/selectPartnerPagingList.do' />");
			comSubmit.submit();
		}else {
			alert("협력사 등록에 실패하였습니다.");
		}
	}
	// 사업자 등록번호 갑 변경 이벤트.
	$("#prtnEnrlmNum").change(function(){
		
		duplicate = true;
	})
	// 중복확인 버튼 클릭 이벤트
	$("#duplBtn").click(function(){
		
		var prtnEnrlmNum = $("#prtnEnrlmNum").val();
		
		var comAjax = new ComAjax();
		comAjax.setUrl("<c:url value='/erp/partner/checkDuplicate.do' />");
		comAjax.addParam("prtnEnrlmNum",prtnEnrlmNum);
		comAjax.setCallback(fn_checkDuplicateCallback);
		comAjax.ajax();
			
	})
	// 중복확인 콜백함수
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
		
		body.children().last().remove();
		
		fileFormCount = fileFormCount - 1;
		
		if(fileFormCount < 0){
			fileFormCount = 0;
		}
	})
	// 협력사 담당자2 정보 추가 버튼 클릭 이벤트
	$("#addMngr").click(function(){
		
		if( $("#mngrForm2").is(':visible') ){
			alert("담당자는 최대 2명만 등록할 수 있습니다.");
		}
		$("#mngrForm2").show();
	})
	// 협력사 담당자2 정보 삭제 버튼 클릭 이벤트 
	$("#delMngr").click(function(){
		
		if($("#mngrForm2").is(':visible') == false) {
			alert("담당자는 최소 1명이상 등록하여야 합니다!");
		}
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
	})
	// select 박스 옵션(개인사업자/법인사업자) 변경 이벤트
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
	
	// 협력사 정보 등록 submit 버튼 클릭 이벤트 //
	$("#insertBtn").on("click", function() {
		// 유효성 검사
		var prtnTypCd = $("#prtnTypCd option:selected").val();
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
		/*
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
		
		/* addParam 필수값만 셋팅 후 나머지는 값 있을시 추가 */
		
		// 필수 parameter (협력사 정보, 담당자1 정보) */
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
			url : '/erp/partner/insertPartner.do',
			type : 'POST',
			success : function(data){
				console.log("[ajax.success]");
				console.log(data);
				
				gv_errCd = data.errCd;
				gv_errMsg = data.errMsg;
				
				fn_insertPartnerCallback(data);
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
	</script>
</body>
</html>