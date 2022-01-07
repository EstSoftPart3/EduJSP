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
							<h1 class="m-0 text-dark">회원 관리 게시판</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<a href='<c:url value="/member/openMemberInsertPage.do" />' class="btn btn-primary float-right">회원 등록</a>
							<a href='<c:url value="" />' class="btn btn-primary float-right leaveAll-btn" style="margin-right: 10px;">일괄 퇴사 처리</a>
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
								<h3 class="card-title">EST 회원 목록</h3>
								<div class="card-tools">
									<div class="input-group input-group-sm" style="width: 550px;">
										<!-- 부서별 리스트 -->
										<select class="form-control" id="select_department" >
											<option value="all">전체</option>
											<c:forEach var="code" items="${codeDept}">
												<option value="${code.codeComCd}">${code.codeNm}</option>
											</c:forEach>
										</select>
										
										<!-- 직급별 리스트 -->
										<select class="form-control" id="select_position">
											<option value="all">전체</option>
											<c:forEach var="code" items="${codePosition}">
												<option value="${code.codeComCd}">${code.codeNm}</option>
											</c:forEach>
										</select>
										<!-- 재직여부 -->
										<select class="form-control" id="select_employee">
											<option value="all">전체</option>
											<option value="employee">재직자</option>
											<option value="notEmployee">퇴사자</option>
										</select>
										<!-- 검색 조건 유지 -->
										<select class="form-control" name="condition" id="select_cond">
											<option value="all">전체</option>
											<option value="mbrNm" <c:if test="${condition eq 'mbrNm' }">selected</c:if>>이름</option>
											<option value="mbrEmail" <c:if test="${condition eq 'mbrEmail' }">selected</c:if>>이메일</option>
											<option value="mbrHpNum" <c:if test="${condition eq 'mbrHpNum' }">selected</c:if>>전화번호</option>
										</select>
										<input type="text" id="input_sch" name="search" class="form-control float-right" placeholder="Search" value="${search}">
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
									<table id="member_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class="checkbox-wrapper"><input type="checkbox" id="allCheckbox" class="table-checkbox"></th>
												<th>SQ</th>
												<th>이름</th>
												<th>입사일</th>
												<th>퇴사일</th>
												<th>부서명</th>
												<th>직급</th>
												<th>전화번호</th>
												<th>이메일</th>
												<th>퇴사처리</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(memberList) == 0 }">
													<tr>
														<td colspan="7">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="member" items="${ memberList }">
														<tr class="list-row">
															<td class="checkbox-wrapper">
																<input type="checkbox" class="table-checkbox checkbox-item" value='<c:out value="${ member.mbrSq }" />' />
															</td>
															<td class="sq">
																<c:out value="${ member.mbrSq }" />
															</td>
															<td>
																<c:out value="${ member.mbrNm }" />
															</td>
															<td>
																<c:out value="${ member.mbrStrtDt }" />
															</td>
															<td>
																<c:out value="${ member.mbrLeaveDt }" />
															</td>
															<td>
																<c:out value="${ member.mbrDprtmtNm }" />
															</td>
															<td>
																<c:out value="${ member.mbrPositnNm }" />
															</td>
															<td>
																<c:out value="${ member.mbrHpNum }" />
															</td>
															<td>
																<c:out value="${ member.mbrEmail }" />
															</td>
															<td>
																<c:if test="${member.mbrLeaveDt eq null }">
																	<button type="button" class="btn btn-default leave-btn">퇴사 처리</button>
																</c:if>
																<c:if test="${member.mbrLeaveDt ne null }">
																	<button type="button" class="btn btn-default leave-cancel-btn">퇴사 취소</button>
																</c:if>
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
							<div class="card-footer">
								<a href='<c:url value="/member/openMemberInsertPage.do" />' class="btn btn-primary">등록</a>
							</div>
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
		
		const popupOption = "width=500, height=360, " +
							"left=150, top=150, " +
							"titlebar=no, scrollbars=no, location= no, toolbars= no, status= no";
	
		
		function fn_selectMemberCallBack(data) {
			var memberList = data.memberList;
			var body = $("#member_table>tbody");
			body.empty();
			
			if(memberList.length > 0) {
				
				memberList.forEach(member => {
					var leaveButton = (member.mbrLeaveDt === null) ? 
							"<td><button type='button' class='btn btn-default leave-btn'>퇴사 처리</button></td>" : 
							"<td><button type='button' class='btn btn-default leave-cancel-btn'>퇴사 취소</button></td>";
					
					body.append(
							"<tr class='list-row'>" + 
								"<td class='checkbox-wrapper'>" +
									"<input type='checkbox' class='table-checkbox checkbox-item' value='"+ member.mbrSq +"' />" +
								"</td>" +
								"<td class='sq'>" + member.mbrSq + "</td>" +
								"<td>" + element_isnull(member.mbrNm) + "</td>" +
								"<td>" + element_isnull(member.mbrStrtDt) + "</td>" +
								"<td>" + element_isnull(member.mbrLeaveDt) + "</td>" +
								"<td>" + element_isnull(member.mbrDprtmtNm) + "</td>" +
								"<td>" + element_isnull(member.mbrPositnNm) + "</td>" +
								"<td>" + element_isnull(member.mbrHpNum) + "</td>" +
								"<td>" + element_isnull(member.mbrEmail) + "</td>" +
								leaveButton +
							"</tr>" );
					});
			
			} else {
				body.append("<tr>" + "<td colspan='7'>조회 결과가 없습니다</td>" + "</tr>");
				
			}
		}
		
		function fn_selectMemberOneCallBack(data) {
			var member = data.memberVo;
			
			if (member === null) {
				alert("잘못된 접근입니다.");
				
			} else if (!!member.mbrLeaveDt) {
				var mbrSqArr = member.mbrSq;
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/member/cancelLeaveDt.do' />");
				
				comAjax.addParam("mbrSqArr", mbrSqArr);
				
				comAjax.setCallback(fn_updateMemberCallBack);
				comAjax.ajax();
				
			} else if (member != null && !member.mbrLeaveDt) {
				var mbrSqArr = member.mbrSq;
				
				window.open("/member/openLeaveDtPopup.do?mbrSqArr="+ mbrSqArr,
							"popup",
							popupOption );
			}
		}
		
		function fn_updateMemberCallBack(data) {
			var success = data.code;
			
			if (success > 0) {
				alert("퇴사 취소처리 되었습니다.");
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/member/selectMemberListPage.do' />");
				
				comAjax.setCallback(fn_selectMemberCallBack);
				comAjax.ajax();
			}
		}
		
		function fn_isMbrLeaveDtAll(data) {
			var memberList = data.memberList;
			var mbrSqArr = "";
			
			var isLeaveDt = memberList.some((member) => {
				if (!!member.mbrLeaveDt) return true;
				else mbrSqArr += member.mbrSq + ","; 
			});
			
			if (isLeaveDt === true) {
				alert("이미 퇴사한 직원입니다.");
				
			} else {
				mbrSqArr = mbrSqArr.slice(0, -1);

				window.open("/member/openLeaveDtPopup.do?mbrSqArr="+ mbrSqArr,
						"popup",
						popupOption );
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
			$("#select_position, #select_employee, #select_department").on("change", function() {
				var mbrPosition = $("#select_position").val();
				var mbrDepartment = $("#select_department").val();
				var mbrLeaveCheck = $("#select_employee").val();
				var condition = $("#select_cond").val();
				var search = $("#input_sch").val();
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/member/selectMemberListPage.do' />");
				
				if (condition != "all") {
					comAjax.addParam(condition, search);
				}
				
				if (mbrPosition != "all") {
					comAjax.addParam("mbrPositnCd", mbrPosition);
				}
				
				if (mbrDepartment != "all") {
					comAjax.addParam("mbrDprtmtCd", mbrDepartment);
				}
				
				if (mbrLeaveCheck != "all") {
					comAjax.addParam("isMbrLeaveDt", mbrLeaveCheck);
				}
				
				comAjax.setCallback(fn_selectMemberCallBack);
				comAjax.ajax();
			});
			
			
			// 검색 버튼 클릭 이벤트 바인딩
			$("#button_sch").on("click", function() {
				var mbrPosition = $("#select_position").val();
				var mbrDepartment = $("#select_department").val();
				var mbrLeaveCheck = $("#select_employee").val();
				var condition = $("#select_cond").val();
				var search = $("#input_sch").val();

				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/member/selectMemberListPage.do' />");
				
				if (condition != "all") {
					comAjax.addParam(condition, search);
				}
				
				if (mbrPosition != "all") {
					comAjax.addParam("mbrPositnCd", mbrPosition);
				}
				
				if (mbrDepartment != "all") {
					comAjax.addParam("mbrDprtmtCd", mbrDepartment);
				}
				
				if (mbrLeaveCheck != "all") {
					comAjax.addParam("isMbrLeaveDt", mbrLeaveCheck);
				}
				
				comAjax.setCallback(fn_selectMemberCallBack);//콜백 선언
				comAjax.ajax();
			});
			
			
			// 검색 입력창 엔터키 이벤트 바인딩
			$("#input_sch").on("keyup", function(e) {
				if (e.keyCode === 13)
					$("#button_sch").click();
			});
			
			
			// 일괄 퇴사처리 버튼 클릭 이벤트 바인딩
			$(".leaveAll-btn").on("click", function(e) {
				e.preventDefault();
				
				var mbrSqArr = $(".checkbox-item").map((index, item) => {
					if (item.checked == true) {
						return Number(item.value);
					}
				}).toArray();
				
				if (isEmptyArr(mbrSqArr)) {
					alert("퇴사 처리할 멤버를 선택해주세요.");
					return false;
				}
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/member/selectMemberSqList.do' />");
				
				comAjax.addParam("mbrSqArr", mbrSqArr);
				
				comAjax.setCallback(fn_isMbrLeaveDtAll);
				comAjax.ajax();
			});
			
			
			// 세부정보 페이지로 이동하는 직원 컬럼 클릭 이벤트 바인딩
			$("#member_table").on("click", ".list-row", function(e) {
				var sq = $(this).find(".sq").text();
				
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/member/openMemberDetailPage.do' />");
				comSubmit.addParam("sq", sq);
				comSubmit.submit();
			});
			
			
			// 직원 개별 퇴사처리 버튼 이벤트 바인딩
			$("#member_table").on("click", ".leave-btn", function(e) {
				e.stopPropagation();
				var sq = $(this).closest("tr").find(".sq").text();
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/member/selectMemberOne.do?mbrSq=" + sq + "' />");
				
				comAjax.setCallback(fn_selectMemberOneCallBack);//콜백 선언
				comAjax.ajax();
			});
			

			// 직원 개별 퇴사취소 버튼 이벤트 바인딩
			$("#member_table").on("click", ".leave-cancel-btn", function(e) {
				e.stopPropagation();
				var sq = $(this).closest("tr").find(".sq").text();
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/member/selectMemberOne.do?mbrSq=" + sq + "' />");
				
				comAjax.setCallback(fn_selectMemberOneCallBack);//콜백 선언
				comAjax.ajax();
			});
			
			
			// checkbox 클릭시 list-row(세부정보 조회) 클릭 이벤트 방지
			$(".checkbox-wrapper").on("click", function(e) {
				e.stopPropagation();
			});
			
			
			// 체크박스 전체 체크 이벤트 바인딩
			$("#allCheckbox").on("click", function(e) {
				var isAllCheck = $(this).is(":checked");
				
				// 아직 미구현, todo
			});
		});
		
	</script>
</body>
</html>