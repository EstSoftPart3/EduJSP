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
								<h1 class="m-0 text-dark">프로젝트 정보</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<div class="btn-wrapper float-right">
									<a href='<c:url value="/project/openProjectListPage.do" />' class="btn btn-info">목록으로</a>
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
									<h3 class="card-title">프로젝트 정보</h3>
								</div>
								<!-- /.card-header -->

								<!-- card-body -->
								<div class="card-body">
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">직원 번호</label>
										<label class="col-sm-4 col-form-label">${ projectOne.mbrSq }</label>
										<label class="col-sm-2 col-form-label text-right">정렬 순번</label>
										<label class="col-sm-4 col-form-label">${ projectOne.prjctSortOrder }</label>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">프로젝트명</label>
										<label class="col-sm-4 col-form-label">${ projectOne.prjctNm }</label>
										<label class="col-sm-2 col-form-label text-right">유형</label>
										<label class="col-sm-4 col-form-label">${ projectOne.prjctTypCd }</label>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">목적</label>
										<label class="col-sm-4 col-form-label">${ projectOne.prjctRoleDtl }</label>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">시작일</label>
										<label class="col-sm-4 col-form-label">${ projectOne.prjctStartDt }</label>
										<label class="col-sm-2 col-form-label text-right">종료일</label>
										<label class="col-sm-4 col-form-label">${ projectOne.prjctEndDt }</label>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">주소</label>
										<label class="col-sm-4 col-form-label">${ projectOne.prjctAddr }</label>
										<label class="col-sm-2 col-form-label text-right">마케팅</label>
										<label class="col-sm-4 col-form-label">${ projectOne.prjctCstmrCmpny }</label>
									</div>
									<div class="form-group row">
										<label class="col-sm-2 col-form-label">분산지점</label>
										<label class="col-sm-10 col-form-label">${ projectOne.prjctWrkCmpny }</label>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>						
				            
				            <!-- right content -->
						<div class="card" style="margin-right: 10px;">	
              				<!-- /.card-header -->
              				<div class="card-body p-0">
				                <table id="skill_table_OS" class="table table-sm">
				                  <thead>
				                    <tr>
				                      <th style="width: 10px">1.</th>
				                      <th style="text-align: left;">Os</th>
				                    </tr>
				                  </thead>
				                  <tbody>
				                    
				                  </tbody>
				                </table>
				              </div>
				              
				              <div class="card-body p-0">
				                <table id="skill_table_TOOL" class="table table-sm">
				                  <thead>
				                    <tr>
				                      <th style="width: 10px">4.</th>
				                      <th style="text-align: left;">Tool</th>
				                    </tr>
				                  </thead>
				                  <tbody>
				                    
				                  </tbody>
				                </table>
				              </div>
				              <!-- /.card-body -->
				            </div>
				            <!-- /.card -->
				            
				            <!-- right content -->
						<div class="card" style="margin-right: 10px;">	
              				<!-- /.card-header -->
              				<div class="card-body p-0">
				                <table id="skill_table_LANG" class="table table-sm">
				                  <thead>
				                    <tr>
				                      <th style="width: 10px">2.</th>
				                      <th style="text-align: left;">Lang</th>
				                    </tr>
				                  </thead>
				                  <tbody>
				                    
				                  </tbody>
				                </table>
				              </div>
				              
				              <div class="card-body p-0">
				                <table id="skill_table_FRAMEWORK" class="table table-sm">
				                  <thead>
				                    <tr>
				                      <th style="width: 10px">5.</th>
				                      <th style="text-align: left;">Framework</th>
				                    </tr>
				                  </thead>
				                  <tbody>
				                    
				                  </tbody>
				                </table>
				              </div>
				              <!-- /.card-body -->
				            </div>
				            <!-- /.card -->
				            
				            <!-- right content -->
						<div class="card" >	
              				<!-- /.card-header -->
              				<div class="card-body p-0">
				                <table id="skill_table_DBMS" class="table table-sm">
				                  <thead>
				                    <tr>
				                      <th style="width: 10px">3.</th>
				                      <th style="text-align: left;">DBMS</th>
				                    </tr>
				                  </thead>
				                  <tbody>
				                    			                    
				                  </tbody>
				                </table>
				              </div>
				              
				              <div class="card-body p-0">
				                <table id="skill_table_ETC" class="table table-sm">
				                  <thead>
				                    <tr>
				                      <th style="width: 10px">6.</th>
				                      <th style="text-align: left;">ETC</th>
				                    </tr>
				                  </thead>
				                  <tbody>
				                    
				                   
				                  </tbody>
				                </table>
				              </div>
				              <!-- /.card-body -->
				            </div>
				            <!-- /.card -->

										
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
	
	//전역변수 초기화
	var prjctSq = "${projectOne.prjctSq}";
	
	function element_isnull(obj) {
		return (!!obj) ? obj : '';
	}
	
	function comAjaxSkillCall() {
		var comAjax = new ComAjax();
		comAjax.addParam("prjctSq", prjctSq);
		comAjax.setUrl("<c:url value='/projectskill/selectProjectSkillList.do' />");
		comAjax.setCallback(fn_selectskill);
		comAjax.ajax();
	}
	
	function fn_selectskill(data) {
		var skillList = data.skillList;
		
		var body = $("#skill_table_OS>tbody");
		body.empty();
		var body2 = $("#skill_table_TOOL>tbody");
		body2.empty();
		var body3 = $("#skill_table_LANG>tbody");
		body3.empty();
		var body4 = $("#skill_table_FRAMEWORK>tbody");
		body4.empty();
		var body5 = $("#skill_table_DBMS>tbody");
		body5.empty();
		var body6 = $("#skill_table_ETC>tbody");
		body6.empty();
		
		if(skillList.length > 0) {
			skillList.forEach(skill => {
				
				 /* var updateButton = (projectOne.prjctSq === null) ? 
						"<td><button type='button' class='btn btn-default leave-btn'>등록</button></td>" : 
						"<td><button type='button' class='btn btn-default leave-cancel-btn'>삭제</button></td>"; */
				 
				if(skill.skillTypNm == "OS"){
					body.append(
							"<tr class='list-row'>" +
								"<td> </td>" +
								"<td>" + element_isnull(skill.skillTypDtlNm) + "</td>" +
								 /* updateButton + */ 
							"</tr>");
				}
						
				else if(skill.skillTypNm == "TOOL"){
					body2.append(
							"<tr class='list-row'>" +
								"<td> </td>" +
								"<td>" + element_isnull(skill.skillTypDtlNm) + "</td>" +
								 /* updateButton + */ 
							"</tr>");
				}
						
				else if(skill.skillTypNm == "언어"){
					body3.append(
							"<tr class='list-row'>" +
								"<td> </td>" +
								"<td>" + element_isnull(skill.skillTypDtlNm) + "</td>" +
								 /* updateButton + */ 
							"</tr>");
				}
							
				else if(skill.skillTypNm == "FRAMEWORK"){
					body4.append(
							"<tr class='list-row'>" +
								"<td> </td>" +
								"<td>" + element_isnull(skill.skillTypDtlNm) + "</td>" +
							 	/* updateButton + */ 
							"</tr>");
				}
							
				else if(skill.skillTypNm == "DBMS"){
					body5.append(
							"<tr class='list-row'>" +
								"<td> </td>" +
								"<td>" + element_isnull(skill.skillTypDtlNm) + "</td>" +
						 		/* updateButton + */ 
							"</tr>");
				}
						
				else if(skill.skillTypNm == "기타"){
					body6.append(
							"<tr class='list-row'>" +
								"<td> </td>" +
								"<td>" + element_isnull(skill.skillTypDtlNm) + "</td>" +
						 		/* updateButton + */ 
							"</tr>");
				}
				 
				});
			
		} else {
			body.append("<tr>" + "<td colspan='7'>조회 결과가 없습니다</td>" + "</tr>");
		}
	}
	
	// 리스트 콜백 함수
	function fn_ProJectSkillCallBack(data) {
		var projectList = data.projectList;
		var body = $("#project_table>tbody");
		body.empty();
		
		if(projectList.length > 0) {
			
			projectList.forEach(project => {
	
				body.append(
						"<tr class='list-row'>" + 
							"<td class='checkbox-wrapper'>" +
								"<input type='checkbox' name='select' class='table-checkbox checkbox-item' value='"+ project.prjctSq +"' />" +
							"</td>" +
							"<td class='sq'>" + project.prjctSq + "</td>" +
							"<td>" + element_isnull(project.mbrSq) + "</td>" +
							"<td>" + element_isnull(project.prjctNm) + "</td>" +
							"<td>" + element_isnull(project.prjctTypCd) + "</td>" +
							"<td>" + element_isnull(project.prjctStartDt) + "</td>" +
							"<td>" + element_isnull(project.prjctEndDt) + "</td>" +
							"<td>" + element_isnull(project.prjctAddr) + "</td>" +
							"<td><a href='<c:url value='/project/openProjectUpdatePage.do?update=" + project.prjctSq + "' />' class='btn btn-primary float-center'>수정</a></td>" +
							"<td class='delete-btn'><button class='btn btn-primary float-center' onclick='deletebutton("+ project.prjctSq +")'>삭제</button></td>" +
						"</tr>" );
					
				});
		
		} else {
			body.append("<tr>" + "<td colspan='10'>조회 결과가 없습니다</td>" + "</tr>");
			
		}
	}
	
	
		$(document).ready(function() {
			
			comAjaxSkillCall();
			
			function fn_deleteCallback(data) {
				var code = data.code;
				if(code > 0) {
					alert("프로젝트가 정상적으로 삭제되었습니다.");
					var comSubmit = new ComSubmit();
					comSubmit.setUrl("<c:url value='/project/openProjectListPage.do' />");
					comSubmit.submit();
				}else {
					alert("프로젝트 삭제에 실패하였습니다.");
				}
			}
			
			$("#updateBtn").on("click", function() {
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/project/openProjectUpdatePage.do?update=${ projectOne.prjctSq }' />");
				comSubmit.addParam("update", prjctSq);
				comSubmit.submit();
			});
			
			$("#deleteBtn").on("click", function() {
				if(confirm("정말 삭제하시겠습니까?")) {
					var comAjax = new ComAjax();
					comAjax.setUrl("<c:url value='/project/deleteProject.do' />");
					comAjax.addParam("delete", prjctSq);
					comAjax.setCallback(fn_deleteCallback);
					comAjax.ajax();
				}
			});
			
			
		});
	</script>
</body>
</html>