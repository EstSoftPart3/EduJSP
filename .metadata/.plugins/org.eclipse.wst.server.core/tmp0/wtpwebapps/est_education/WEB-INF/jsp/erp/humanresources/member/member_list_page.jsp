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
							</h3>
							<span>직원에 대한 정보를 확인할 수 있습니다.</span>
						</div>
						<h2 class="float-right">직원 관리</h2>
						<a onclick="goNewMem();"
							class="btn btn-primary float-right">
							직원 신규 등록
						</a>
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
										<div class="input-group input-group-sm" style="width: 800px;">
											<a onclick="deleteList(this.form);" class="btn btn-primary float-left" > 삭제 </a>
											<!-- 검색 리스트 -->
											<select class="form-control" name="deptCtd" id="select_dept">
												<option value="all">부서 선택</option>
												<option value="아르바이트">아르바이트</option>
												<option value="연구개발팀">연구/개발팀</option>
												<option value="인사관리팀">인사관리팀</option>
												<option value="경영지원팀">경영지원팀</option>
											</select>
											<select class="form-control" name="rckTcd" id="select_rnk">
												<option value="all">직급</option>
												<option value="사원">사원</option>
												<option value="대리">대리</option>
												<option value="팀장">팀장</option>
												<option value="차장">차장</option>
												<option value="부장">부장</option>
												<option value="대표">대표</option>
											</select>
											<select class="form-control" name="iswork" id="select_iswork">
												<option value="3">재직여부</option>
												<option value="1">재직</option>
												<option value="0">퇴직</option>
											</select>
											<input type="text" id="search_keyword" name="search" class="form-control float-right" placeholder="직원 이름을 입력하세요" value="${search}">
											<div class="input-group-append">
												<button id="button_sch" type="button" class="btn btn-default">
													<i class="fas fa-search"></i>
												</button>
											</div>
										</div>
									</div>
								</div>
								<!-- /card-header -->
								
								<!-- card-body -->
								<form action="/erp/member/deleteMember.do" method="POST" id="bodyForm">
								<div class="card-body">
									<div style="height: 400px; overflow: auto;">
										<table id="emply_table" class="table table-hover table-striped table-bordered text-nowrap">
											<thead>
												<tr>
													<th class="checkbox-wrapper" id="checkTh">
														<input type="checkbox" id="checkAll"/>
													</th>
													<th>이름</th>
													<th>계약구분</th>
													<th>부서명</th>
													<th>직급</th>
													<th>전화번호</th>
													<th>이메일</th>
													<th>프로필</th>
												</tr>
											</thead>
											<!-- 직원 데이터 -->
											<tbody>
											<c:choose>
												<c:when test="${ fn:length(memberList) == 0 }">
													<tr>
														<td colspan="8">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="member" items="${ memberList }">
														<tr>
															<td class="checkbox-wrapper" id="checkBox">
																<input type="checkbox" class="table-checkbox checkbox-item" name='checked' value='<c:out value="${ member.emplySq }" />' />
															</td>
															<td onclick="info(${ member.emplySq });">
																<c:out value="${ member.emplyNm }" />
															</td>
															<td onclick="info(${ member.emplySq });">
																<c:out value="${ member.cntrcTcd }" />
																</td>
															<td onclick="info(${ member.emplySq });">
																<c:out value="${ member.deptTcd}" />
															</td>
															<td onclick="info(${ member.emplySq });">
																<c:out value="${ member.rnkTcd}" />
															</td>
															<td onclick="info(${ member.emplySq });">
																<c:out value="${ member.emplyPhNum}" />
															</td>
															<td onclick="info(${ member.emplySq });">
																<c:out value="${ member.emplyEml}" />
															</td>
															<td>
																<button type="button" class="btn btn-default" onclick="">보기</button>
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
								<!-- pageing -->
								<div class="card-tools" style="margin: auto;"  id="pagerList">
									<ul class="pagination pagination-sm">
										<!-- 처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
										<c:if test="${pager.curPage != 1}">
											<li class="page-item">
												<a class="page-link" href="javascript:clickPage('1')">[처음]</a>
											</li>
										</c:if>
										
										<!-- 이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
										<c:if test="${pager.prevBlock != 0}">
											<li class="page-item">
												<a class="page-link" href="javascript:clickPage('${pager.prevBlock}')">[이전]</a>
											</li>
										</c:if>
										
										<!-- **하나의 블럭 시작페이지부터 끝페이지까지 반복문 실행 -->
										<c:forEach var="num" begin="${pager.blockBegin}" end="${pager.blockEnd}">
											<li class="page-item"><a class="page-link"
												href="javascript:clickPage('${num}')">${num}</a>&nbsp;
											</li>
										</c:forEach>
										
										<!-- 다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
										<c:if test="${pager.nextBlock != 0 }">
										<li class="page-item">
											<a class="page-link" href="javascript:clickPage('${pager.nextBlock}')">[다음]</a>
											</li>
										</c:if>
										
										<!-- 끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
										<c:if test="${pager.curPage != pager.totPage}">
											<li class="page-item">
												<a class="page-link" href="javascript:clickPage('${pager.totPage}')">[끝]</a>
											</li>
										</c:if>
									</ul>
									<input type="hidden" value="${pager.curPage }" id="curPage"/>
								</div>
								<!-- /.paging end -->
							
								</form>
							</div>
							<!-- /card-header -->
							
						</div>
					</div>
				</div>
			
		</div>
		<!----------------------------------------------------------------------- /Main content ------------------------------------------------------------------------------>
		
		<script type="text/javascript">
		
		
		
		
			/* -------------------------------- function --------------------------------*/
			function element_isnull(obj) {
				return (!!obj) ? obj : '';
			}
			
			//전체선택 체크박스 클릭 
			$("#checkTh").click(function checkCheck() {
				if ($("#checkAll").prop("checked")) {
					$("input[type=checkbox]").prop("checked", true);
				} else {
					$("input[type=checkbox]").prop("checked", false);
				}
			});

			//콜백
			function fn_selectMemberCallBack(data) {
				var memberList = data.memberList;
				
				
				var body = $("#emply_table>tbody");
				body.empty();
				var pagerList = $("#pagerList");
				pagerList.empty();
				
				if(memberList.length > 0) {
					memberList.forEach(member => {
						body.append(
							"<tr>" + 
								"<td class='checkbox-wrapper' id='checkBox'>" +
									"<input type='checkbox' class='table-checkbox checkbox-item' name='checked' value='${ member.emplySq }' />" +
								"</td>" +
								"<td class='sq'>" + member.mbrSq + "</td>" +
								"<td onclick='info("+ member.emplySq +");'>" + element_isnull(member.emplyNm) + "</td>" +
								"<td onclick='info("+ member.emplySq +");'>" + element_isnull(member.cntrcTcd) + "</td>" +
								"<td onclick='info("+ member.emplySq +");'>" + element_isnull(member.deptTcd) + "</td>" +
								"<td onclick='info("+ member.emplySq +");'>" + element_isnull(member.rnkTcd) + "</td>" +
								"<td onclick='info("+ member.emplySq +");'>" + element_isnull(member.emplyPhNum) + "</td>" +
								"<td onclick='info("+ member.emplySq +");'>" + element_isnull(member.emplyEml) + "</td>" +
								"<td><button type='button' class='btn btn-default' onclick=''>보기</button></td>" +
								"</tr>" 
							);
						});
					
				} else {
					body.append("<tr>" + "<td colspan='8'>조회 결과가 없습니다</td>" + "</tr>");
				}
				
				var pager = data.pager;
				
				var curPage = pager.curPage;
				var prevPage = pager.prevPage;
				var nextPage = pager.nextPage;
				var totPage = pager.totPage;
				var curBlock = pager.curBlock;
				var prevBlock = pager.prevBlock;
				var nextBlock = pager.nextBlock;
				var blockBegin = pager.blockBegin;
				var blockEnd = pager.blockEnd;
				var totBlock = pager.totBlock;
	var str = "";
	str+='<ul class="pagination pagination-sm">';
	
	if(curPage != 1){
		str+=
			'<li class="page-item">                                                            '+
			'<a class="page-link" href="javascript:clickPage(1)">[처음]</a>                     '+
			'</li>';
	}
	
	if(prevBlock != 0){
		str+=
			'<li class="page-item">'+
			'<a class="page-link" href="javascript:clickPage('+prevBlock+')">[이전]</a>'+
			'</li>';
	}
	
	for(var i=blockBegin; i<blockEnd+1; i++){
		str+=
			'<li class="page-item"><a class="page-link"'+
			'href="javascript:clickPage('+ i +')">'+ i +'</a>&nbsp;'+
			'</li>';
	}
	
	if(nextBlock != 0){
		str+=
			'<li class="page-item">'+
			'<a class="page-link" href="javascript:clickPage('+nextBlock+')">[다음]</a>'+
			'</li>';
	}
	
	if(curPage != totPage){
		str+=
			'<li class="page-item">'+
			'<a class="page-link" href="javascript:clickPage('+totPage+')">[끝]</a>'+
			'</li>';
	}
	str+=
		'</ul>'+ 
		'<input type="hidden" value="'+curPage+'" id="curPage"/>';



					pagerList.append(str);
					
					}
			/* -------------------------------- btn click event --------------------------------*/

			function deleteList() {
				var form = $('#bodyForm');
				
				alert('삭제 되었습니다.');
				form.submit();
			}
			
			function goNewMem() {
				location.href="/erp/member/openMemberInsertPage.do";
			}
			
			function info(idx){
				location.href="/erp/member/openMemberDetailPage.do?emplySq="+idx;
			}
			
			/* -------------------------------- row click event --------------------------------*/
// 			$(".checkbox-wrapper").on("click", function() {
// 				var clicked = $(this).children('input');
// 				if (clicked.is(":checked") === true) {
// 					clicked.prop("checked", false);
// 				} else {
// 					clicked.prop("checked", true);
// 				}
				
// 			});							고장..




			/* -------------------------------- select / search --------------------------------*/
			function select_search(page) {
				var select_dept = $("#select_dept").val();
				var select_rnk = $("#select_rnk").val();
				var select_iswork = $("#select_iswork").val();
				var search_keyword = $("#search_keyword").val();
				var curPage = $("#curPage").val();
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/erp/member/selectMemberListPage.do' />");
				
				if (select_dept != "all") {
					comAjax.addParam("deptTcd", select_dept);
				}
				
				if (select_rnk != "all") {
					comAjax.addParam("rnkTcd", select_rnk);
				}
				
				if (select_iswork != "3") {
					comAjax.addParam("iswork", select_iswork);
				}
				
				comAjax.addParam("keyword", search_keyword);
				
				comAjax.addParam("curPage", curPage);
				comAjax.addParam("page", page);
				
// 				console.log(search_keyword);
// 				console.log(curPage);
// 				console.log(page);
				
				comAjax.setCallback(fn_selectMemberCallBack);
				comAjax.ajax();
			}
			
			$("#select_dept, #select_rnk, #select_iswork").on("change", function() {
				var page=1;
				select_search(page);
			});
			
			$("#button_sch").on("click", function() {
				var page=1;
				select_search(page);
			});
			
			function clickPage(page){
				select_search(page);
			}
		</script>
		
		
		
		
		
		
		
		<form id="commonForm"></form>		<!-- include-body -->
	</div>
	<!-- /wrapper -->
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