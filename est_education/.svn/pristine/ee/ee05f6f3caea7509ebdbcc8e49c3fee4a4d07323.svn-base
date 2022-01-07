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
								<a href="/erp/member/selectMemberListPage.do">업무 > 직원관리</a>
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
										<a class="btn btn-primary" id="goBackBtn">목록</a>
										<a onclick="goUpdate(${emply.emplySq})" class="btn btn-primary" id="goUpdate">수정</a>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>ID</th>
												<td>${emply.emplyId }</td>
												<th colspan="2">Password</th>
												<td colspan="2">********</td>
											</tr>
											<tr>
												<th>성명</th>
												<td>${emply.emplyNm }</td>
												<th colspan="2">주민등록번호</th>
												<td colspan="2">${emply.emplyRrn }</td>
											</tr>
											<tr>
												<th>계약구분</th>
												<td>${emply.cntrcTcd }</td>
												<th colspan="2">부서</th>
												<td colspan="2">${emply.deptTcd }</td>
											</tr>
											<tr>
												<th>직급</th>
												<td>${emply.rnkTcd }</td>
												<th colspan="2">전화번호</th>
												<td colspan="2">${emply.emplyPhNum }</td>
											</tr>
											<tr>
												<th>이메일</th>
												<td>${emply.emplyEml }</td>
												<th>은행</th>
												<td>${emply.emplyBnk }</td>
												<th>계좌번호</th>
												<td>${emply.emplyAcct }</td>
											</tr>
											<tr>
												<th>주소</th>
												<td colspan="5">${emply.emplyAddr }</td>
											</tr>
										</table>
										
										<h4 class="">학력</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>최종학력</th>
												<th>학과명</th>
												<th>졸업일자</th>
												<th>위치</th>
											</tr>
											<c:choose>
												<c:when test="${ fn:length(education) == 0 }">
													<tr>
														<td colspan="4">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="edu" items="${ education }">
														<tr>
															<td><c:out value="${ edu.eductnFnl }" /></td>
															<td><c:out value="${ edu.eductnMjr }" /></td>
															<td><c:out value="${ edu.eductnGrdtdDt }" /></td>
															<td><c:out value="${ edu.eductnLc }" /></td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</table>
										
										<h4 class="">경력</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>직장명</th>
												<th>근무기간</th>
												<th>직급</th>
												<th>담당업무</th>
												<th>근무지역</th>
												<th>퇴사사유</th>
												<th>연봉</th>
											</tr>
											<c:choose>
												<c:when test="${ fn:length(carrer) == 0 }">
													<tr>
														<td colspan="7">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="carr" items="${ carrer }">
														<tr>
															<td><c:out value="${ carr.carrNm }" /></td>
															<td><c:out value="${ carr.carrDt }" /></td>
															<td><c:out value="${ carr.carrRnk }" /></td>
															<td><c:out value="${ carr.carrWrk }" /></td>
															<td><c:out value="${ carr.carrLc }" /></td>
															<td><c:out value="${ carr.carrRsgnt }" /></td>
															<td><c:out value="${ carr.carrSlry }" /></td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</table>
										
										<h4 class="">자격증</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>자격증 이름</th>
												<th>발행처</th>
												<th>취득일</th>
											</tr>
											<c:choose>
												<c:when test="${ fn:length(certification) == 0 }">
													<tr>
														<td colspan="3">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="certf" items="${ certification }">
														<tr>
															<td><c:out value="${ certf.certfctnNm }" /></td>
															<td><c:out value="${ certf.certfctnLc }" /></td>
															<td><c:out value="${ certf.certfctnDt }" /></td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</table>
										
										<h4 class="">대외 활동</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>활동 구분</th>
												<th>활동 이름</th>
												<th>기관</th>
												<th>활동 기간</th>
												<th>활동 내용</th>
											</tr>
											<c:choose>
												<c:when test="${ fn:length(OA) == 0 }">
													<tr>
														<td colspan="5">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="oa" items="${ OA }">
														<tr>
															<td><c:out value="${ oa.OADvsn }" /></td>
															<td><c:out value="${ oa.OANm }" /></td>
															<td><c:out value="${ oa.OAOrgnz }" /></td>
															<td><c:out value="${ oa.OADt }" /></td>
															<td><c:out value="${ oa.OADtl }" /></td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</table>
										
										<h4 class="">기타 사항</h4>
										<table id="partner_table" class="table table-hover table-striped table-bordered text-nowrap">
											<tr>
												<th>입사일</th>
												<td colspan="2">${emply.cntrcStrtDt }</td>
												<th>전환일</th>
												<td colspan="2">${emply.cntrcTrnstDt }</td>
											</tr>
											<tr>
												<th>퇴사일</th>
												<td colspan="4">
													<c:choose>
														<c:when test="${emply.cntrcEndDt }!=null">
															${emply.cntrcEndDt }
														</c:when>
														<c:otherwise>
															${emply.cntrcEndDt }
														</c:otherwise>
													</c:choose>
												</td>
											</tr>
											<tr>
												<th rowspan="2">비상연락망</th>
												<th>관계</th>
												<td>${emply.emplyEcnRelatnTcd1 }</td>
												<th>전화번호</th>
												<td>${emply.emplyEcnRelatnNum1 }</td>
											</tr>
											<tr>
												<th>관계</th>
												<td>${emply.emplyEcnRelatnTcd2 }</td>
												<th>전화번호</th>
												<td>${emply.emplyEcnRelatnNum2 }</td>
											</tr>
											<tr>
												<th>비고</th>
												<td colspan="4">${emply.emplyNote }</td>
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
										
										<c:forEach var="file" items="${document}">
											<tr>
												<th>
													<a href="#" onclick="fn_fileDown('${file.docSq}'); return false;"> 
														${file.docOrgFile}
													</a>
												</th>
											</tr>
											<form name="readForm" method="post"> 
												<input type="hidden" id="DOC_SQ" name="DOC_SQ" value="${file.docSq }"> 
											</form>
										</c:forEach>
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
		
		
		
		<script type="text/javascript">
		/* -------------------------------- function --------------------------------*/
		function fn_fileDown(fileNo){

			var msg = confirm("다운로드를 하시겠습니까?"); 
			if (msg == true) { 
				
				var formObj = $("form[name='readForm']");
				$("#DOC_SQ").attr("value", fileNo);
				formObj.attr("action", "/erpFileDown.do");
				formObj.submit();
				
			}
		}
		
		/* -------------------------------- btn click event --------------------------------*/
		/* -------------------top button ------------------*/
		$("#goBackBtn").on("click",function() {
			history.back();
		});
		
		function goUpdate(idx){
			location.href="/erp/member/openMemberUpdatePage.do?emplySq="+idx;
		}
		</script>
		
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