<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
<style>
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
							<h1 class="m-0 text-dark">기술 관리 게시판</h1>
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
								<h3 class="card-title">EST 기술 목록</h3>
								<div class="card-tools">
									<div class="input-group input-group-sm" style="width: 400px;">
										<!-- 스킬 유형 코드별 리스트 -->
										<select class="form-control" id="select_name">
											<option value="all">전체</option>
											<option value="OS">OS</option>
											<option value="언어">언어</option>
											<option value="DBMS">DBMS</option>
											<option value="TOOL">TOOL</option>
											<option value="FRAME WORK">FRAME WORK</option>
											<option value="기타">기타</option>
										</select>
										<select class="form-control" name="condition" id="select_cond">
											<option value="all">전체</option>
											<option value="skillTypNm" <c:if test="${condition eq 'skillTypNm' }">selected</c:if>>유형이름</option>
											<option value="skillTypDtlNm" <c:if test="${condition eq 'skillTypDtlNm' }">selected</c:if>>상세유형이름</option>
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
									<table id="skill_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th>sq</th>
												<th>스킬 유형 코드</th>
												<th>스킬 유형 이름</th>
												<th>스킬 유형 상세</th>
												<th>스킬 상세 유형 이름</th>
												<th>수정</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody>
										
										</tbody>
									</table>
								</div>
							</div>
							<!-- /.card-body -->
							<div class="card-footer">
								<a href='<c:url value="/skill/openskillInsertPage.do" />' class="btn btn-primary">등록</a>
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
		
		//삭제
		function deletebutton(sq) {
			 if (confirm("정말 삭제하시겠습니까??") == true){    //확인
					var comAjax = new ComAjax();
					comAjax.setUrl("<c:url value='/skill/deleteSkill.do' />"); //프로그램 URI
					comAjax.addParam("delete", sq);
					comAjax.setCallback(fn_deleteProjectCallBack);//콜백 선언
					comAjax.ajax();
			 }else{   //취소
			     return false;
			 }
		}
		
		// 기술 삭제버튼 클릭 이벤트 바인딩
		function fn_deleteProjectCallBack(data) {
			var code = data.code;
			if(code > 0) {	// 정상 삭제시 프로젝트 목록 화면으로 이동
				alert("프로젝트 삭제가 정상적으로 완료되었습니다.");
				comAjaxCall();
	
			}else {
				alert("프로젝트 삭제에 실패하였습니다.");
			}
		}
		function element_isnull(obj) {
			return (!!obj) ? obj : '';
		}
	
		//
		function fn_selectskillCallBack(data) {
			var skillList = data.skillList;
			var body = $("#skill_table>tbody");
			body.empty();
			
			if(skillList.length > 0) {
				skillList.forEach(skill => {
					body.append(
							"<tr class='list-row'>" + 
								"<td>" + element_isnull(skill.skillSq) + "</td>" +
								"<td>" + element_isnull(skill.skillTypCd) + "</td>" +
								"<td>" + element_isnull(skill.skillTypNm) + "</td>" +
								"<td>" + element_isnull(skill.skillTypDtlCd) + "</td>" +
								"<td>" + element_isnull(skill.skillTypDtlNm) + "</td>" +
								"<td>" + "<a href='<c:url value='/skill/openskillUpdatePage.do?update="+element_isnull(skill.skillSq)+"' />' class='btn btn-primary float-center'>수정</a>" +"</td>" +
								"<td>" + "<button class='btn btn-primary float-center' id='deleteButton' onclick='deletebutton("+ element_isnull(skill.skillSq) +")'>삭제</button>"+"</td>"+
							"</tr>");				
																												
					});
			} else {
				body.append("<tr>" + "<td colspan='7'>조회 결과가 없습니다</td>" + "</tr>");
			}
		}
		
		function comAjaxCall() {
			var skillname = $("#select_name").val();
			var condition = $("#select_cond").val();
			var search = $("#input_sch").val();
			
			
			var comAjax = new ComAjax();
			
			console.log(skillname);
			if (skillname != "all") {
				comAjax.addParam("skillTypNm", skillname);
				console.log("a");
			}
			
			if (condition != "all") {
				comAjax.addParam(condition, search);
			}
			else{
				if(search != '')
				{
					comAjax.addParam("all", search);
				}
			}
			
			comAjax.setUrl("<c:url value='/skill/selectskillListPage.do' />");
			comAjax.setCallback(fn_selectskillCallBack);
			comAjax.ajax();
		}
		
		$("#input_sch").on("keyup", function(e) {
			if (e.keyCode === 13)
				$("#button_sch").click();
		});
		
		$(document).ready(function() {
			
				comAjaxCall();
			
			// 직급과 퇴사여부 select 박스 변경 이벤트 바인딩
			$("#select_name").on("change", function() {
				comAjaxCall();
			});			
			
			// 직급과 퇴사여부 select 박스 변경 이벤트 바인딩
			$("#button_sch").on("click", function() {
				comAjaxCall();
			});
			
		});
		
	</script>
</body>
</html>