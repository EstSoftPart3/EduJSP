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
								<h1 class="m-0 text-dark">회원 정보</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<div class="btn-wrapper float-right">
									<a href='<c:url value="/member/openMemberListPage.do" />' class="btn btn-info">목록으로</a>
									<button class="btn btn-primary" id="updateBtn">수정</button>
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
						<div class="col-md-6">
							<!-- general form elements -->
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">회원 정보</h3>
								</div>
								<!-- /.card-header -->

								<!-- card-body -->
								<div class="card-body" style="height: 530px;">
									 <div class="form-group row">
										<label class="col-sm-2 col-form-label">ID</label>
										<span class="input-group-text col-sm-4" ><b>${ memberVo.mbrId }</b></span>
										
										<label class="col-sm-2 col-form-label text-right">Password</label>
										<span class="input-group-text col-sm-4" ><b>${ memberVo.mbrPwd }</b></span>
									</div> 
									
									
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">소속</label>
										<span class="input-group-text col-sm-4" ><b>${ memberVo.mbrTypNm }</b></span>
										<label class="col-sm-2 col-form-label text-right">부서</label>
										<span class="input-group-text col-sm-4" ><b>${ memberVo.mbrDprtmtNm }</b></span>
									</div>
									
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">직급</label>
										<span class="input-group-text col-sm-4" ><b>${ memberVo.mbrPositnNm }</b></span>
										<label class="col-sm-2 col-form-label text-right">이름</label>
										<span class="input-group-text col-sm-4" ><b>${ memberVo.mbrNm }</b></span>
									</div>
									
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">주민번호</label>
										<span class="input-group-text col-sm-4" ><b>${ memberVo.mbrRegNum }</b></span>
										<label class="col-sm-2 col-form-label text-right">Email</label>
										<span class="input-group-text col-sm-4" ><b>${ memberVo.mbrEmail }</b></span>
									</div>
									
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">전화번호</label>
										<span class="input-group-text col-sm-4" ><b>${ memberVo.mbrHpNum }</b></span>
									</div>
									
									
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">주소</label>
										<span class="input-group-text col-sm-10" ><b>${ memberVo.mbrAddr }</b></span>
									</div>
									
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">은행</label>
										<span class="input-group-text col-sm-4" ><b>${ memberVo.mbrBankCd }</b></span>
										<label class="col-sm-2 col-form-label text-right">계좌번호</label>
										<span class="input-group-text col-sm-4" ><b>${ memberVo.mbrAccNum }</b></span>
									</div>
									
									
									
									
									
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- right column -->
						<div class="col-md-6">
						
						<!-- <form action="/uploadFile.do" method="POST" enctype="multipart/form-data">
										mbrId : <input type="text" name="mbrSq_test" /><br/>
										doc_flag : <input type="text" name="document_flag" /><br/>
										file : <input type="file" name="document" /><br/>
										<input type="submit" /> 
									
						</form>	-->
						
						<form id="frm" name="frm" enctype="multipart/form-data">

							<!-- general form elements disabled -->
							<div class="card card-warning" style="height: 575px;">
								<div class="card-header">
									<h3 class="card-title">기타 정보</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body" >
									
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">입사일</label>
										<span class="input-group-text col-sm-3" ><b>${ memberVo.mbrStrtDt }</b></span>
										<label class="col-sm-3 col-form-label text-right">전환일</label>
										<span class="input-group-text col-sm-3" ><b>${ memberVo.mbrJoinDt }</b></span>
									</div>
									
									
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">퇴사일</label>
										<span class="input-group-text col-sm-3" ><b>${ memberVo.mbrLeaveDt }</b></span>
									</div>
									
									
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">비상연락망 관계1</label>
										<span class="input-group-text col-sm-3" ><b>${ memberVo.mbrRltnshpNm1 }</b></span>
									</div>
									
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">비상연락망 연락처1</label>
										<span class="input-group-text col-sm-3" ><b>${ memberVo.mbrRltnshpHpNum1 }</b></span>
									</div>
									
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">비상연락망 관계2</label>
										<span class="input-group-text col-sm-3" ><b>${ memberVo.mbrRltnshpNm2 }</b></span>
									</div>
									
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">비상연락망 연락처2</label>
										<span class="input-group-text col-sm-3" ><b>${ memberVo.mbrRltnshpHpNum2 }</b></span>
									</div>
									
									
									<%-- <div class="form-group row">
										<label class="col-sm-2 col-form-label">기타정보</label>
										<label class="col-sm-10 col-form-label">${ memberVo.mbrEtcInfo }</label>
									</div> --%>
									<div class="form-group row">
										<label class="col-sm-3 col-form-label">기타정보</label>
										<span class="input-group-text col-sm-9" ><b>${ memberVo.mbrEtcInfo }</b></span>
									</div>
									
									
									<div class="form-group row">
										
											<div class="form-check col-sm-2">
												<input class="form-check-input" type="checkbox" disabled
													<c:if test="${ memberVo.mbrDcmnt1Yn eq 'Y' }">checked</c:if> >
												<label class="form-check-label">등본</label>
											</div>
											
											
											<div class="col-sm-4">
												<!-- <input type="file" name="file_1"> -->
											</div>
											
											
										
										
											<div class="form-check col-sm-2">
												<input class="form-check-input" type="checkbox" disabled
													<c:if test="${ memberVo.mbrDcmnt2Yn eq 'Y' }">checked</c:if> >
												<label class="form-check-label">졸업증명서</label>
											</div>
											<div class="col-sm-4">
												<!-- <input type="file" name="file_2"> -->
											</div>
										
									</div>
									<div class="form-group row">
										
											<div class="form-check col-sm-2">
												<input class="form-check-input" type="checkbox" disabled
													<c:if test="${ memberVo.mbrDcmnt3Yn eq 'Y' }">checked</c:if> >
												<label class="form-check-label">통장사본</label>
											</div>
											<div class="col-sm-4">
												<!-- <input type="file" name="file_2"> -->
											</div>
										
										
											<div class="form-check col-sm-2">
												<input class="form-check-input" type="checkbox" disabled
													<c:if test="${ memberVo.mbrDcmnt4Yn eq 'Y' }">checked</c:if> >
												<label class="form-check-label">증명사진</label>
											</div>
											<div class="col-sm-4">
												<!-- <input type="file" name="file_2"> -->
											</div>
										
									</div>
									<div class="form-group row">
											<div class="form-check col-sm-2">
												<input class="form-check-input" type="checkbox" disabled
													<c:if test="${ memberVo.mbrDcmnt5Yn eq 'Y' }">checked</c:if> >
												<label class="form-check-label">근로계약서</label>
											</div>
											<div class="col-sm-4">
												<!-- <input type="file" name="file_2"> -->
											</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
							</form>
						</div>
					</div>
				</div>
				
				
				<!-- 담당 프로젝트 -->
				<div class="card">
				<div class="card-body">
								<div class="card-header">
									<h3 class="card-title"><b>담당 프로젝트 </b>  ( *클릭 시 프로젝트 정보 조회 ) </h3> 
								</div>
								<div style="height: 150px; overflow: auto;">
									<table id="project_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<!-- <th class="checkbox-wrapper"><input type="checkbox" id="allCheckbox" class="table-checkbox" onclick='selectAll(this)'></th> -->
												 <!-- <th>SQ</th> -->
												<th>프로젝트 번호</th>
												<th>프로젝트 이름</th>
												<th>프로젝트 유형</th>
												<th>프로젝트 시작일</th>
												<th>프로젝트 종료일</th>
												<th>프로젝트 주소</th>
												<!-- <th>수정</th> -->
												<!-- <th>삭제</th> -->
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(projectList) == 0 }">
													<tr>
														<td colspan="10">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="project" items="${ projectList }">
														<c:if test="${project.mbrSq == memberVo.mbrSq}">
															<tr class="list-row">
																<%-- <td class="checkbox-wrapper">
																	<input id="checkbox" type="checkbox" name='select' class="table-checkbox checkbox-item" value='<c:out value="${ project.prjctSq }" />' />
																</td> --%>
																<td class="prjctSq"><c:out value="${ project.prjctSq }" /></td>
																<%-- <td><c:out value="${ project.mbrSq }" /></td> --%>
																<td><c:out value="${ project.prjctNm }" /></td>
																<td><c:out value="${ project.prjctTypCd }" /></td>
																<td><c:out value="${ project.prjctStartDt }" /></td>
																<td><c:out value="${ project.prjctEndDt }" /></td>
																<td><c:out value="${ project.prjctAddr }" /></td>
																<%-- <td><a href='<c:url value='/project/openProjectUpdatePage.do?update=${ project.prjctSq }' />' class='btn btn-primary float-center'>수정</a></td> --%>
																<%-- <td class='delete-btn'><button class='btn btn-primary float-center' onclick="deletebutton('+${ project.prjctSq }+')" >삭제</button></td> --%>
															</tr>
														</c:if>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
								</div>
							</div>
						</div>
				
				<!--대여 장비 리스트  -->
				<div class="card">
				<div class="card-body">
								<div class="card-header">
									<h3 class="card-title"><b>대여 장비</b></h3>
								</div>
								<div style="height: 100px; overflow: auto;">
									<table id="equipmentLental_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<!-- <th class="checkbox-wrapper"><input type="checkbox" id="allCheckbox" class="table-checkbox" onclick='selectAll(this)'></th> -->
												 <!-- <th>SQ</th> -->
												<th>장비관리번호</th>
												<th>장비 구분</th>
												<th>대여 일자</th>
												<th>반납 일자</th>
												<th>비고</th>
												<!-- <th>프로젝트 주소</th> -->
												<!-- <th>수정</th> -->
												<!-- <th>삭제</th> -->
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(equipmentlentalList) == 0 }">
													<tr>
														<td colspan="10">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
												
													<c:forEach var="equipLental" items="${ equipmentlentalList }">
													
													<c:if test="${equipLental.mbrSq == memberVo.mbrSq}">
														<tr class="list-row">
															<%-- <td class="checkbox-wrapper">
																<input id="checkbox" type="checkbox" name='select' class="table-checkbox checkbox-item" value='<c:out value="${ project.prjctSq }" />' />
															</td> --%>
															<td class="prjctSq"><c:out value="${ equipLental.eqpmntSq }" /></td>
															<%-- <td><c:out value="${ project.mbrSq }" /></td> --%>
															<td><c:out value="${ equipLental.eqpmntTcd }" /></td>
															<td><c:out value="${ equipLental.lntlStrtDate }" /></td>
															<td><c:out value="${ equipLental.lntlRtrnDate }" /></td>
															<td><c:out value="${ equipLental.lntlMemo }" /></td>
															<%-- <td><c:out value="${ project.prjctAddr }" /></td> --%>
															<%-- <td><a href='<c:url value='/project/openProjectUpdatePage.do?update=${ project.prjctSq }' />' class='btn btn-primary float-center'>수정</a></td> --%>
															<%-- <td class='delete-btn'><button class='btn btn-primary float-center' onclick="deletebutton('+${ project.prjctSq }+')" >삭제</button></td> --%>
														</tr>
													</c:if>
														
													</c:forEach>
													
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
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
			function fn_deleteCallback(data) {
				var code = data.code;
				if(code > 0) {
					alert("회원이 정상적으로 삭제되었습니다.");
					var comSubmit = new ComSubmit();
					comSubmit.setUrl("<c:url value='/member/openMemberListPage.do' />");
					comSubmit.submit();
				}else {
					alert("회원 삭제에 실패하였습니다.");
				}
			}
			
			var mbrSq = "${memberVo.mbrSq}";
			$("#updateBtn").on("click", function() {
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/member/openMemberUpdatePage.do' />");
				comSubmit.addParam("sq", mbrSq);
				comSubmit.submit();
			});
			$("#deleteBtn").on("click", function() {
				if(confirm("정말 삭제하시겠습니까?")) {
					var comAjax = new ComAjax();
					comAjax.setUrl("<c:url value='/member/deleteMember.do' />");
					comAjax.addParam("sq", mbrSq);
					comAjax.setCallback(fn_deleteCallback);
					comAjax.ajax();
				}
			});
		});
		
		
		/* 프로젝트 클릭시 detail로 이동 */
		$("#project_table").on("click", ".list-row", function(e) {
			var prjctSq = $(this).find(".prjctSq").text();
			
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='/project/openProjectDetailPage.do' />");
			comSubmit.addParam("prjctSq", prjctSq);
			comSubmit.submit();
		});
	</script>
</body>
</html>