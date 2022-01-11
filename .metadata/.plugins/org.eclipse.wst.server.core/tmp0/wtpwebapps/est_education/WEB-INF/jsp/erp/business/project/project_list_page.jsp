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
.list-row:hover {
	cursor: pointer;
}
.prjctNm:hover {
	cursor: pointer;
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
				href="/erp/sample/openSamplePage.do" class="nav-link">Home</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a href="#"
				class="nav-link">Contact</a></li>
			<li class="nav-item d-none d-sm-inline-block"><a
				href="/index.html" class="nav-link" target="_blank">Template</a></li>
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
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">프로젝트 관리 게시판</h1>
						</div>
						<div class="col-sm-6">
							<button class="btn btn-primary float-right" id="projectdeleteall">삭제</button>

							<a
								href='<c:url value="openProjectInsertPage.do" />'
								class="btn btn-primary float-right" style="margin-right: 10px;">프로젝트
								등록</a>
						</div>
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
								<h3 class="card-title">EST 프로젝트 목록</h3>

								<div class="card-tools">
									<div class="input-group input-group-sm" style="width: 400px;">
										<!-- 검색 조건 유지 -->
										<!-- 직급별 리스트 -->
										<select class="form-control" id="select_position">
											<option value="all">전체</option>
											<option value="개발">개발</option>
											<option value="운영">운영</option>
											<option value="개발/운영">개발/운영</option>
										</select> 
										<select class="form-control" name="condition"
											id="select_cond">
											<option value="all">전체</option>
											<option value="mbrSq" id="mbrSq"
												<c:if test="${condition eq 'mbrSq' }">selected</c:if>>사번</option>
											<option value="prjctNm" id="prjctNm"
												<c:if test="${condition eq 'prjctNm' }">selected</c:if>>이름</option>
											<option value="prjctAddr" id="prjctAddr"
												<c:if test="${condition eq 'prjctAddr' }">selected</c:if>>주소</option>
										</select> <input type="text" id="input_sch" name="search"
											class="form-control float-right" placeholder="Search"
											value="${search}">
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
									<table id="project_table"
										class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class="checkbox-wrapper"><input type="checkbox"
													id="allCheckbox" class="table-checkbox"
													onclick='selectAll(this)'></th>
												<th>SQ</th>
												<th>사원번호</th>
												<th>프로젝트 이름</th>
												<th>프로젝트 유형</th>
												<th>프로젝트 시작일</th>
												<th>프로젝트 종료일</th>
												<th>프로젝트 주소</th>

											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(projectList.list) == 0 }">
													<tr>
														<td colspan="10">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="project" items="${ projectList.list }">
														<tr class="list-row">
															<td class="checkbox-wrapper" id="checkBox">
																<input id="${ project.prjctSq }"
																		type="checkbox" name='select'
																		class="table-checkbox checkbox-item"
																		value='<c:out value="${ project.prjctSq }" />' 
																/>
															</td>
															<td class="prjctSq goDetail"><c:out
																	value="${ project.prjctSq }" /></td>
															<td><c:out value="${ project.mbrSq }" /></td>
															<td style="color:blue;" class="prjctNm" onclick="goDetaill('${ project.prjctSq }');"><c:out value="${ project.prjctNm }" /></td>
															<td><c:out value="${ project.prjctTyp }" /></td>
															<td ><c:out value="${ project.prjctStrtDt }" /></td>
															<td><c:out value="${ project.prjctEndDt }" /></td>
															<td><c:out value="${ project.prjctAddr }" /></td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
								</div>
								<!-- pageing -->
							<div class="card-tools" style="margin: auto;" id="pagingAjax">
								<ul class="pagination pagination-sm" >
										<!-- 처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
										<c:if test="${projectList.erpProject.curBlock > 1}">
											<li class="page-item">
												<a a class="page-link" href="javascript:pageClick('1')">[처음]</a>
											</li>
										</c:if>
										
										<!-- 이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
										<c:if test="${projectList.erpProject.curBlock > 1}">
										<li class="page-item">
											<a class="page-link" href="javascript:pageClick('$projectList.erpProject.prevPage}')">[이전]</a>
											</li>
										</c:if>
										
										<!-- **하나의 블럭 시작페이지부터 끝페이지까지 반복문 실행 -->
										<c:forEach var="num" begin="${projectList.erpProject.blockBegin}" end="${projectList.erpProject.blockEnd}">
											<!-- 현재페이지이면 하이퍼링크 제거 -->
											<c:if test="${num == projectList.erpProject.curPage}">
												<span style="background: lightblue;" class="page-link">${num}</span>&nbsp;
											</c:if>
											<c:if test="${num != projectList.erpProject.curPage}">
												<a class="page-link" href="javascript:pageClick('${num}')">${num}</a>&nbsp;
											</c:if>
										</c:forEach>
										
										<!-- 다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
										<c:if test="${projectList.erpProject.curBlock < projectList.erpProject.totBlock}">
										<li class="page-item">
											<a class="page-link" href="javascript:pageClick('${projectList.erpProject.nextPage}')">[다음]</a>
											</li>
										</c:if>
										
										<!-- 끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
										<c:if test="${projectList.erpProject.curPage < projectList.erpProject.totPage}">
										<li class="page-item">
											<a class="page-link" href="javascript:pageClick('${projectList.erpProject.totPage}')">[끝]</a>
											</li>
										</c:if>
										<li>
											<input type="hidden" value="${projectList.curPage }" id="curPage"/>
										</li>
								</ul>
							</div>
							<!-- /.paging end -->
							<!-- /.card-body -->
							<!-- /.card -->
							
						</div>
					</div>
					<!-- /.row -->

				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
			<form id="commonForm"></form>
		</div>
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
	// 리스트 ajax 콜 함수
	function comAjaxCall(page){
		var prjctTypPosition = $("#select_position").val(); // 유형선택
		var condition = $("#select_cond").val();	//이름,사번,주소 선택
		var search = $("#input_sch").val();	//검색
		var curPage = $("#curPage").val();	//curPage
		
		var comAjax = new ComAjax(); 
		comAjax.setUrl("<c:url value='selectProjectListPage.do' />"); 
		
		if (condition != "all") { 
			comAjax.addParam(condition, search); //이름, 사번 ,주소에 해당하는 검색을 넣는다
		}
		
		if (prjctTypPosition != "all") {
			comAjax.addParam("prjctTyp", prjctTypPosition); // 유형
		}
		
		comAjax.addParam("page", page);
		
		alert(curPage);
		alert(page);
		
		
		
		
		comAjax.setCallback(fn_ProJectCallBack); // 리스트로 콜백
		comAjax.ajax();
	}

	 //리스트 페이징 Url 셋팅 func()
	function pageClick(page){
   	
		comAjaxCall(page);
		
	}
	 
	function element_isnull(obj) {
		return (!!obj) ? obj : '';
	}
	
	// 리스트 콜백 함수
	function fn_ProJectCallBack(data) { // 리스트 불러오는 함수
		console.log(data.projectList.count)
		var projectLists = data.projectList.list; // 가져온 데이터값들
		var body = $("#project_table>tbody"); //
		var pager = data.projectList.erpProject;
		
		body.empty(); // 바디를 없애고 다시 부른다
		console.log(projectLists)
		
		if(projectLists.length > 0) {
			
			projectLists.forEach(projectList => {
	
				body.append(
						"<tr class='list-row'>" + 
							"<td class='checkbox-wrapper'>" +
								"<input type='checkbox' name='select' class='table-checkbox checkbox-item' value='"+ projectList.prjctSq +"' />" +
							"</td>" +
							"<td class='prjctSq'>" + projectList.prjctSq + "</td>" +
							"<td>" + element_isnull(projectList.mbrSq) + "</td>" +
							"<td style='color:blue;' onclick='goDetaill("+ projectList.prjctSq +");'>" + element_isnull(projectList.prjctNm) + "</td>" +
							"<td>" + element_isnull(projectList.prjctTyp) + "</td>" +
							"<td>" + element_isnull(projectList.prjctStrtDt) + "</td>" +
							"<td>" + element_isnull(projectList.prjctEndDt) + "</td>" +
							"<td>" + element_isnull(projectList.prjctAddr) + "</td>" +
						"</tr>" );
					
				 $(document).ready(function() { 	//체크박스 클릭시 이벤트를 멈춰라
					$(".checkbox-wrapper").on("click", function(e) {
						e.stopPropagation();
					});
					
					$(".delete-btn").on("click", function(e) { //삭제 버튼 클릭시 이벤트를 멈춰라
						e.stopPropagation();
					});
				});
				//page();
			});
		
		} else {
			body.append("<tr>" + "<td colspan='10'>조회 결과가 없습니다</td>" + "</tr>");
			
		}
		
		
		var curPage = pager.curPage;
		var curBlock = pager.curBlock;
		var prevPage = pager.prevPage;
		var blockBegin = pager.blockBegin;
		var blockEnd = pager.blockEnd;
		var totBlock = pager.totBlock;
		var nextPage = pager.nextPage;
		var totPage = pager.totPage;
		
		var ul = $("#pagingAjax"); //
		ul.empty(); // 바디를 없애고 다시 부른다
		var str = "";
		str+= '<ul class="pagination pagination-sm" >';
		
		if(curPage > 1){
			str+= '<li class="page-item">                                                                                       '+
			'<a a class="page-link" href="javascript:pageClick(\'1\')">[처음]</a>                                          '+
			'</li>																										';
		}
		
		if(curBlock > 1){
			str+= '<li class="page-item">                                                                                       '+
			'<a a class="page-link" href="javascript:pageClick('+ prevPage +')">[이전]</a>                                          '+
			'</li>																										';
		}


// 	var totalPage = data.totalPage / 10;
	
	
// 	if(blockEnd > totalPage) {
// 		blockEnd = totalPage;
// 	}
	
	
// 	for(var i = blockBegin; i <= totalPage; i++){
	for(var i = blockBegin; i <= totPage; i++){
		if(i == curPage){
			str+= '<span style="background: lightblue;" class="page-link" id="'+ curPage + '">' + i + '</span>';
			
		}else{
			str+= '<a class="page-link" href="javascript:pageClick('+ i +')" id="'+ curPage + '">' + i + '</a>'; 
		}	
	
	}
	
	if(curBlock < totBlock){
		str += '<li class="page-item">                                                                                       '+
		'<a class="page-link" href="javascript:pageClick('+ nextPage +')">[다음]</a>           '+
		'</li>                                                                                                        ';
	}
	if(curPage < totPage){
		str += '<li class="page-item">                                                                                       '+
		'<a class="page-link" href="javascript:pageClick('+ totPage +')">[끝]</a>           '+
		'</li>                                                                                                        ';
	}
		str+=
		'<li>'+
		'<input type="hidden" value="'+ curPage +'" id="curPage"/>'+
		'</li></ul>';
	ul.append(str);	    
		
		
	};
	
	//삭제 버튼
 	function deletebutton(sq) {
		
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='deleteProject.do' />"); //프로그램 URI
		comSubmit.addParam("delete", sq);
		comSubmit.setCallback(fn_listopenProjectCallBack);//콜백 선언
		comSubmit.submit();
		
	}
	function delCal(){
		
		alert("삭제");
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='selectProjectListPage.do' />"); //프로그램 URI
		comSubmit.submit();
		
	}
	
	//삭제 콜백함수
	function fn_deleteProjectCallBack(data) {
		var code = data.code;

		var checkbox = $("input[name='select']:checked");
		var prjctSqArr = new Array();
			
		// 체크된 체크박스 값을 가져온다
		checkbox.each(function(i) {
					
			// checkbox.parent() : checkbox의 부모는 <td>이다.
			// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
			var tr = checkbox.parent().parent().eq(i);
			var td = tr.children();
								
			// td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
			var Sq = td.eq(1).text();
					
			var obj = new Object();
			obj.prjctSq = parseInt(Sq);
			prjctSqArr.push(obj);
		});
			
			$.ajax({
				url : "<c:url value='deleteProjectAll.do' />",    
				type : "POST",
				data : JSON.stringify(prjctSqArr),
		        dataType : "json",
		        contentType : "application/json; charset=UTF-8",
				async : false,
				beforeSend : function() {
					console.log("[ajax.beforeSend]");
				},
				success : function(data) {
					console.log("[ajax.success]");
					console.log(data);
					fn_listopenProjectCallBack(data);
				},
				complete:function(){
					console.log("[ajax.complete]");
			    },
			    error:function(request,status,error){
			    	console.log("[ajax.error]");
			    	return false;
				}
			});
		}
	
	function fn_listopenProjectCallBack(data) {
		var code = data.code;
		if(code > 0) {	// 정상 삭제시 프로젝트 목록 화면으로 이동
			alert("프로젝트 삭제가 정상적으로 완료되었습니다.");
			var comAjax = new ComAjax();
			comAjax.setCallback(comAjaxCall);//콜백 선언
			comAjax.ajax();
		}else {
			alert("프로젝트 삭제에 실패하였습니다.");
		}
	}
	
	// 전체 선택 함수
	function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('select');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })}
		$(document).ready(function() {	
		})
		//리스트 ajax 실행
			/* comAjaxCall(); */	
			//전체 삭제버튼 클릭 이벤트 바인딩
			$("#projectdeleteall").click(function(){
				
				var checkbox = $("input[name='select']:checked");
				var prjctSqArr = new Array();
				
				// 체크된 체크박스 값을 가져온다
				checkbox.each(function(i) {
					
					// checkbox.parent() : checkbox의 부모는 <td>이다.
					// checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
					var tr = checkbox.parent().parent().eq(i);
					var td = tr.children();
								
					// td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
					var Sq = td.eq(1).text();
					
					var obj = new Object();
					obj.prjctSq = parseInt(Sq);
			        prjctSqArr.push(obj);
				});
				
				$.ajax({
					url : "<c:url value='deleteProjectSkillAll.do' />",    
					type : "POST",
					data : JSON.stringify(prjctSqArr),
			        dataType : "json",
			        contentType : "application/json; charset=UTF-8",
					async : false,
					beforeSend : function() {
						console.log("[ajax.beforeSend]");
					},
					success : function(data) {
						console.log("[ajax.success]");
						console.log(data);
						fn_deleteProjectCallBack(data);
					},
					complete:function(){
						console.log("[ajax.complete]");
				    },
				    error:function(request,status,error){
				    	console.log("[ajax.error]");
				    	return false;
					}
				});
				
			});
			
			// 세부정보 페이지로 이동하는 프로젝트 컬럼 클릭 이벤트 바인딩
// 			$("#project_table .list-row .goDetail").on("click", function(e) {
// 				var prjctSq = $(this).attr("id");
// 				var sq = $('.findPrjctSq').val();
// 				alert(prjctSq)
// 				var comSubmit = new ComSubmit();
// 				comSubmit.setUrl("<c:url value='openProjectDetailPage.do' />");
// 				comSubmit.addParam("prjctSq", prjctSq);
// 				comSubmit.submit();
// 			});
			
			function goDetaill(sq){
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='openProjectDetailPage.do' />");
				comSubmit.addParam("prjctSq", sq);
// 				console.log(sq)
				alert(sq);
				comSubmit.submit();
			}
			
			
			// 박스변경 이벤트 바인딩 ,검색 버튼 클릭 이벤트 바인딩
			$("#select_position").on("change",function() {
				var prjctTypPosition = $("#select_position").val();
				var condition = $("#select_cond").val();
				var search = $("#input_sch").val();
				alert(prjctTypPosition);
				alert(condition);
				alert(search);
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='selectProjectListPage.do' />");
				
			 	if (prjctTypPosition != "all") {
					comAjax.addParam("prjctTyp",prjctTypPosition);
				}
				
				if (condition == "all") {
					comAjax.addParam("mbrSq", search);
					comAjax.addParam("prjctNm", search);
					comAjax.addParam("prjctAddr",search);} 
				else {
					comAjax.addParam(condition, search);}
				
				comAjax.setCallback(fn_ProJectCallBack);//콜백 선언
				comAjax.ajax();});
			
				// 검색 입력창 엔터키 이벤트 바인딩
				$("#input_sch").on("keyup", function(e) {
					if (e.keyCode === 13)
					$("#button_sch").click();
				});
		
			
			// 박스변경 이벤트 바인딩 ,검색 버튼 클릭 이벤트 바인딩
			$("#button_sch").on("click",function() {
				var prjctTypPosition = $("#select_position").val();
				var condition = $("#select_cond").val();
				var search = $("#input_sch").val();
				alert(prjctTypPosition);
				alert(condition);
				alert(search);
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='selectProjectListPage.do' />");
				
			 	if (prjctTypPosition != "all") {
					comAjax.addParam("prjctTyp",prjctTypPosition);
				}
				
				if (condition == "all") {
					comAjax.addParam("mbrSq", search);
					comAjax.addParam("prjctNm", search);
					comAjax.addParam("prjctAddr",search);} 
				else {
					comAjax.addParam(condition, search);}
				
				comAjax.setCallback(fn_ProJectCallBack);//콜백 선언
				comAjax.ajax();
				});
			
			
			
	</script>
</body>
</html>