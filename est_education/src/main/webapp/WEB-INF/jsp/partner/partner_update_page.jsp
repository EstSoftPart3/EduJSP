<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
<%-- 회원 전화번호 3등분 --%>
<c:set var="areaTelNum" value="${ fn:substring(partnerVo.prtnDirTelNum, 0, 2) }" />
<c:if test="${ fn:length(partnerVo.prtnDirTelNum) > 0  && areaTelNum == '02' }">
	<c:set var="dirTelNum1" value="${ fn:substring(partnerVo.prtnDirTelNum, 0, 2 ) }" />
	<c:set var="dirTelNum2" value="${ fn:substring(partnerVo.prtnDirTelNum, 3, 6) }" />
	<c:set var="dirTelNum3" value="${ fn:substring(partnerVo.prtnDirTelNum, 7, 11) }" />
</c:if>
<c:if test="${ fn:length(partnerVo.prtnDirTelNum) > 0 && areaTelNum != '02' }">
	<c:set var="dirTelNum1" value="${ fn:substring(partnerVo.prtnDirTelNum, 0, 3 ) }" />
	<c:set var="dirTelNum2" value="${ fn:substring(partnerVo.prtnDirTelNum, 4, 7) }" />
	<c:set var="dirTelNum3" value="${ fn:substring(partnerVo.prtnDirTelNum, 8, 12 ) }" />
</c:if>
<c:if test="${ fn:length(partnerVo.prtnDirHpNum) > 0 }">
	<c:set var="dirHpNum1" value="${ fn:substring(partnerVo.prtnDirHpNum, 0, 4) }" />
	<c:set var="dirHpNum2" value="${ fn:substring(partnerVo.prtnDirHpNum, 4, 8) }" />
	<c:set var="dirHpNum3" value="${ fn:substring(partnerVo.prtnDirHpNum, 9, 13) }" />
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
								<h1 class="m-0 text-dark">협력사 수정</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<div class="btn-wrapper float-right">
									<a href='<c:url value="/partner/openPartnerListPage.do" />' class="btn btn-info">목록으로</a>
									<button class="btn btn-primary" id="updateBtn">수정</button>
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
						<div class="col-md-6">
							<!-- general form elements -->
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">협력사 정보</h3>
								</div>
								<!-- /.card-header -->

								<!-- card-body -->
								<div class="card-body">
									<div class="form-group row">
										<label for="inputCodeComCd" class="col-sm-2 col-form-label">사업자 유형</label>
										<div class="col-sm-4">
											<select class="form-control" id="selectBizType">
												<option value="P00001"  <c:if test="${ partnerVo.codeComCd eq 'P00001' }">selected</c:if> >개인 사업자</option>
												<option value="P00002"  <c:if test="${ partnerVo.codeComCd eq 'P00002' }">selected</c:if> >법인 사업자</option>
										</select>
										</div>
										<label for="inputBizRegNum"
											class="col-sm-2 col-form-label text-right">등록번호</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="prtnBizRegNum"
												id="inputBizRegNum" maxlength="12" placeholder="123-12-45678 " value="${ partnerVo.prtnBizRegNum }">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputCorpNm" class="col-sm-2 col-form-label">법인 명</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="inputCorpNm"
												id="inputCorpNm" placeholder="ex) 법인 이름" value="${ partnerVo.prtnCorpNm }">  
										</div>
										<label for="inputRepNm"
											class="col-sm-2 col-form-label text-right">대표자</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="inputRepNm"
												id="inputRepNm" placeholder="ex) 대표자 이름" value="${ partnerVo.prtnRepNm }">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputRegDt" class="col-sm-2 col-form-label">개업 연월일</label>
										<div class="col-sm-4">
											<input type="date" class="form-control" name="inputRegDt"
												id="inputRegDt" placeholder="ex)대리, 차장" value="${ partnerVo.prtnRegDt }">
										</div>
										<label for="inputCorpRegNum"
											class="col-sm-2 col-form-label text-right" id="labelCorpRegNum">법인 등록번호</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="inputCorpRegNum"
												id="inputCorpRegNum" maxlength="14" placeholder="ex)123456-0987654" value="${ partnerVo.prtnCorpRegNum }">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputBizAddr" class="col-sm-2 col-form-label">사업장 소재지</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="inputBizAddr"
												id="inputBizAddr" placeholder="ex)구로구 구로동..." value="${ partnerVo.prtnBizAddr }">
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- right column -->
						<div class="col-md-6">
							<!-- general form elements disabled -->
							<div class="card card-warning">
								<div class="card-header">
									<h3 class="card-title">기타 정보</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<div class="form-group row">
										<label for="inputBizCnd" class="col-sm-2 col-form-label">업태</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="inputBizCnd"
												id="inputBizCnd" placeholder="ex) 서비스 " value="${ partnerVo.prtnBizCnd }">
										</div>
										<label for="inputBizPrd"
											class="col-sm-2 col-form-label text-right">서비스</label>
										<div class="col-sm-4"> 
											<input type="text" class="form-control" name="inputBizPrd"
												id="inputBizPrd" placeholder="ex) 소프트웨어 개발" value="${ partnerVo.prtnBizPrd }">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputFileUrl"
											class="col-sm-4 col-form-label">파일</label>
										<input type="file" class="form-control" name="inputFileUrl" 
										id="inputFileUrl" value="">
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- left column -->
						<div class="col-md-12">
							<!-- general form elements -->
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">담당자 	정보</h3>
								</div>
								<!-- /.card-header -->

								<!-- card-body -->
								<div class="card-body">
									<div class="form-group row">
										<label for="inputDirNm" class="col-sm-2 col-form-label">담당자 이름</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="inputDirNm" 
												id="inputDirNm" value="${ partnerVo.prtnDirNm }">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputDirDrtmtCd" class="col-sm-2 col-form-label">담당자 부서</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="inputDirDrtmtCd"
												id="inputDirDrtmtCd" placeholder="ex) 경영지원 " value="${ partnerVo.prtnDirDrtmtCd }">
										</div>
										<label for="inputDirPositn"
											class="col-sm-2 col-form-label text-right">담당자 직급</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="inputDirPositn"
												id="inputDirPositn" placeholder="ex) 사원, 과장, 대리 " value="${ partnerVo.prtnDirPositn }">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputDirTelNum1" class="col-sm-2 col-form-label">대표번호</label>
										<div class="col-sm-2">
											<select id="inputDirTelNum1" class="form-control">
												<option value="02" <c:if test="${ dirTelNum1 eq '02' }">selected</c:if> >02</option>
												<option value="031" <c:if test="${ dirTelNum1 eq '031' }">selected</c:if> >031</option>
											</select>
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="inputDirTelNum2" maxlength="3" value="${ dirTelNum2 }" >
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="inputDirTelNum3" maxlength="4" value="${ dirTelNum3 }" >
										</div>
										<input type="hidden" name="prtnDirTelNum" id="inputDirTelNum">
									</div>
									<div class="form-group row">
										<label for="inputDirHpNum1" class="col-sm-2 col-form-label">담당자 전화번호</label>
										<div class="col-sm-2">
										<select id="inputDirHpNum1" class="form-control">
												<option value="010" <c:if test="${ dirHpNum1 eq '010' }">selected</c:if> >010</option>
												<option value="011" <c:if test="${ dirHpNum1 eq '011' }">selected</c:if> >011</option>
												<option value="012" <c:if test="${ dirHpNum1 eq '012' }">selected</c:if> >012</option>
												<option value="013" <c:if test="${ dirHpNum1 eq '013' }">selected</c:if> >013</option>
												<option value="019" <c:if test="${ dirHpNum1 eq '019' }">selected</c:if> >019</option>
											</select>
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="inputDirHpNum2" maxlength="4" value="${ dirHpNum2 }" >
										</div>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="inputDirHpNum3" maxlength="4" value="${ dirHpNum3 }" >
										</div>
										<input type="hidden" name="prtnDirHpNum" id="inputDirHpNum">
									</div>
									<div class="form-group row">
										<label for="inputDirEmail" class="col-sm-2 col-form-label">담당자 Email</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="inputDirEmail"
												id="inputDirEmail" placeholder="ex) ASDF@gmail.com" value="${ partnerVo.prtnDirEmail }">
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
		var prtnSq = "${ partnerVo.prtnSq }";
		var codeComCd = $("#selectBizType option:selected").val();
		var label = $("#labelCorpRegNum");
		var input = $("#inputCorpRegNum");
		
		$(document).ready(function() {
			// bizType에 따른 Input hide
			function fn_bizTypeInputShow() {		
				
				if(codeComCd == "P00001") {
					
					label.hide();
					input.hide();
				}
			}
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
			
			function fn_updatePartnerCallback(data) {
				var code = data.code;
				if(code > 0) {	// 정상 추가시 회원 목록 화면으로 이동
					alert("협력사 수정이 정상적으로 완료되었습니다.");
					var comSubmit = new ComSubmit();
					comSubmit.setUrl("<c:url value='/partner/openPartnerDetailPage.do' />");
					comSubmit.addParam("sq", prtnSq);
					comSubmit.submit();
				}else {
					alert("협력사 수정에 실패하였습니다.");
				}
			}
			
			// bizType에 따른 Input hide
			fn_bizTypeInputShow();
						
			// 숫자 입력 이벤트 바인딩
			gfn_onlyNumber($("#inputDirTelNum2"));
			gfn_onlyNumber($("#inputDirTelNum3"));
			gfn_onlyNumber($("#inputDirHpNum2"));
			gfn_onlyNumber($("#inputDirHpNum3"));
			
			$("#selectBizType").on("change", function() {
				
				codeComCd = $("#selectBizType option:selected").val();
				
				if(codeComCd == "P00001") {
					
					label.hide();
					input.hide();
				} else if(codeComCd == "P00002") {
					
					label.show();
					input.show();
				}
			});
			
			
			$("#updateBtn").on("click", function() {
				// 유효성 검사
				var bizRegNum = $("#inputBizRegNum").val();
				var corpNm = $("#inputCorpNm").val();
				var repNm = $("#inputRepNm").val();
				var regDt = $("#inputRegDt").val();
				var corpRegNum = $("#inputCorpRegNum").val();
				var bizAddr = $("#inputBizAddr").val();
				var bizCnd = $("#inputBizCnd").val();
				var bizPrd = $("#inputBizPrd").val();
				var dirNm = $("#inputDirNm").val();
				var dirDrtmtCd = $("#inputDirDrtmtCd").val();
				var dirPositn = $("#inputDirPositn").val();
				var dirTelNum_2 = $("#inputDirTelNum2").val();
				var dirTelNum_3 = $("#inputDirTelNum3").val();
				var dirHpNum_2 = $("#inputDirHpNum2").val();
				var dirHpNum_3 = $("#inputDirHpNum3").val();
				var dirEmail = $("#inputDirEmail").val();
				
				// 사업자 유형 유효성 체크
				if(gfn_isNull(codeComCd)) {
					alert("사업자 유형을 선택해 주세요");
					return false;
				}
				
				// 등록번호 유효성 체크
				if(gfn_isNull(bizRegNum)) {
					alert("등록번호를 입력해주세요.");
					return false;
				}
				
				// 법인 명 유효성 체크
				if(gfn_isNull(corpNm)) {
					alert("법인 명을 입력해주세요.");
					return false
				}
				
				// 대표자 유효성 체크
				if(gfn_isNull(repNm)) {
					alert("대표자를 입력해주세요.");
					return false
				}
				
				// 법인 등록번호 유효성 체크
				if(gfn_isNull(corpRegNum) && codeComCd == "P00002") {
					alert("법인 등록번호를 입력해 주세요.");
					return false;
				} else if(corpRegNum == "P00001") {
					
					return true;
				}
				
				// 개업 연월일 유효성 체크
				if(gfn_isNull(regDt)) {
					alert("개업 연월일을 입력해주세요.");
					return false
				}
				
				// 주소 유효성 체크
				if(gfn_isNull(bizAddr)) {
					alert("주소를 입력해주세요.");
					return false;
				}
				// 업태 유효성 체크
				if(gfn_isNull(bizCnd)) {
					alert("업태를 입력해주세요.");
					return false;
				}
				// 서비스 유효성 체크
				if(gfn_isNull(bizPrd)) {
					alert("서비스를 입력해주세요.");
					return false;
				}
				
				// 담당자 이름 유효성 체크
				if(gfn_isNull(dirNm)) {
					
					alert("담당자 이름을 입력해 주세요.");
					return false;
				}
				
				// 담당자 부서 유효성 체크
				if(gfn_isNull(dirDrtmtCd)) {
					
					alert("담당자 부서를 입력해 주세요");
					return false;
				}
				
				// 담당자 직급 유효성체크
				if(gfn_isNull(dirPositn)) {
					
					alert("담당자 직급을 입력해 주세요.");
					return false;
				}
				
				// 대표번호 유효성 체크
				if(dirTelNum_2.length < 3 || dirTelNum_3.length < 4){
					alert("대표번호를  확인해주세요");
					return false;
				}
				
				// 이메일 유효성 체크
				if(!gfn_emailVaild(dirEmail)) return false;
				
				
				var dirTelNum = fn_telNumConvert($("#inputDirTelNum1").val(), dirTelNum_2, dirTelNum_3);
				var dirHpNum = fn_hpNumConvert($("#inputDirHpNum1").val(), dirHpNum_2, dirHpNum_3);
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/partner/updatePartner.do' />"); //프로그램 URI
				
				/* addParam 필수값만 셋팅 후 나머지는 값 있을시 추가 */
				comAjax.addParam("prtnSq", prtnSq);
				comAjax.addParam("codeComCd", codeComCd);
				comAjax.addParam("prtnBizRegNum", bizRegNum);
				comAjax.addParam("prtnCorpNm", corpNm);
				comAjax.addParam("prtnRepNm", repNm);
				comAjax.addParam("prtnRegDt", regDt);
				comAjax.addParam("prtnBizAddr", bizAddr);
				comAjax.addParam("prtnBizCnd", bizCnd);
				comAjax.addParam("prtnBizPrd", bizPrd);
				comAjax.addParam("prtnDirNm", dirNm);
				comAjax.addParam("prtnDirDrtmtCd", dirDrtmtCd);
				comAjax.addParam("prtnDirPositn", dirPositn);
				comAjax.addParam("prtnDirTelNum", dirTelNum);
				comAjax.addParam("prtnDirHpNum", dirHpNum);
				comAjax.addParam("prtnDirEmail", dirEmail);
				
				/* 추가 parameter */
				if(!gfn_isNull(corpRegNum))			comAjax.addParam("prtnCorpRegNum", corpRegNum);
				
				comAjax.setCallback(fn_updatePartnerCallback);//콜백 선언
				comAjax.ajax();
			});
		});
	</script>
</body>
</html>