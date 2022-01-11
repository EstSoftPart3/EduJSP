<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
<style>
.card {
	height: 400px;
}
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

input[type=checkbox] {
	display: block;
	margin: 0 auto;
}

p {
    margin-top: 0px;
    margin-bottom: 0px;
}

#program_table td{
	height: 30px;
}

table .status{
	width: 5%;
	text-align: center;
}

#program_table .checkbox-wrapper{
	width: 5%;
}

#program_table .programGrp{
	width: 8%;
}

#program_table .programCd{
	width: 10%;
	text-align: center;
}

#program_table .programNm{
	width: 5%;
	text-align: center;
}

#program_table .srcPath{
	width: 5%;
	text-align: center;
	vertical-align: middle;
}

#program_table .isUse{
	width: 1%;
	text-align: center;
	vertical-align: middle;
}

#program_table .not{
	width: 5%;
	text-align: center;
}

#program_table .programGrpCd{
	display:none;
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
							<h1 class="m-0 text-dark">SYSTEM > Program Management</h1>
							<span style="font-size: 12px; color: gray;">프로그램과 프로그램 접근 권한 관리를 하는 페이지입니다.</span>
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
							<div class="card-header row">
								<div class="col-sm-4">
									<h3 class="card-title">프로그램</h3>
								</div>
								<div class="col-sm-4">
									<div class="input-group input-group-sm">
										<input type="text" id="input_sch" name="search" class="form-control float-right" placeholder="프로그램 그룹 및 프로그램명을 검색해주세요." value="${search}">
										<div class="input-group-append">
											<button id="button_sch" type="button" class="btn btn-default">
												<i class="fas fa-search"></i>
											</button>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="float-right">
										<input type="radio" class="IsUseRadio" name="IsUseRadio" value="ALL" checked="checked"> 전체
										<input type="radio" class="IsUseRadio" name="IsUseRadio" value="Y"> 사용
										<input type="radio" class="IsUseRadio" name="IsUseRadio" value="N"> 미사용
										<input type="button" value="저장" id="programSave" class="btn btn-default">
										<input type="button" value="추가" id="programInsert" class="btn btn-default">
										<input type="button" value="취소" id="programCancel" class="btn btn-default">
									</div>
								</div>
							</div>
							<!-- /.card-header -->
							
							<!-- card-program List -->
							<div class="card-body">
								<div style="height: 100%; overflow: auto;">
									<table id="program_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class="status">상태</th>
												<th class="checkbox-wrapper"><input type="checkbox" class="table-checkbox delChkAll"></th>
												<th class='programGrpNm'>프로그램그룹</th>
												<th class='programCd'>프로그램코드</th>
												<th class='programNm'>프로그램명</th>
												<th class='srcPath'>프로그램소스경로</th>
												<th class='isUse'>사용여부</th>
												<th class='note'>비고</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(programList) == 0 }">
													<tr>
														<td colspan="8">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="pro" items="${ programList }">
														<tr class="list-row">
															<td class="status" data-status="R">
															
															</td>
															<td class="checkbox-wrapper">
																<input type="checkbox" class="table-checkbox checkbox-item delChk"/>
															</td>
															<td class='programGrpNm'>
																<p class='rowColumn' contenteditable='false' data-default='${ pro.programGrpNm }'><c:out value="${ pro.programGrpNm }" /> </p>
																<input name="programGrpCd" class="programGrpCd" type="hidden" value="${pro.programGrpCd}">
															</td>
															<td class='programCd'>
																<p class='rowColumn' contenteditable='false' data-default='${ pro.programCd }'><c:out value="${ pro.programCd }" /></p>
															</td>
															<td class='programNm'>
																<p class='rowColumn' contenteditable='false' data-default='${ pro.programNm }'><c:out value="${ pro.programNm }" /></p>
															</td>
															<td class='srcPath'>
																<p class='rowColumn' contenteditable='false' data-default='${ pro.srcPath }'><c:out value="${ pro.srcPath }" /></p>
															</td>
															<td class='isUse'>
																<c:if test="${pro.isUse == 'Y' }">
																	<input type="checkbox" checked="checked" data-isuse0="Y" class="isUse0" data-default='${ pro.isUse }'>
																</c:if>
																<c:if test="${pro.isUse == 'N' }">
																	<input type="checkbox" data-isuse0="N" class="isUse0" data-default='${ pro.isUse }'>
																</c:if>
															</td>
															<td class='note'>
																<p class='rowColumn' contenteditable='false' data-default='${ pro.note }'><c:out value="${ pro.note }" /></p>
															</td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- /.card-program List -->
						
							<span style="margin-left: 5px; font-size: 8px; color: gray; align: center;"> ↓ 해당 프로그램 클릭시 접근 권한을 보실 수 있습니다. </span>

						<!-- card-programAuth List -->
						<div class="card">
							<div class="card-header">
								<h3 class="card-title row">프로그램별 접근 권한</h3>
								<div class="col">
									<div class="float-right">
										<input type="button" value="저장" id="programAuthSave" class="btn btn-default">
										<input type="button" value="추가" id="programAuthInsert" class="btn btn-default">
										<input type="button" value="취소" id="programAuthCancel" class="btn btn-default">
									</div>
								</div>
							</div>
							<div class="card-body">
								<div style="height: 100%; overflow: auto;">
									<table id="programAuth_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class="status">상태</th>
												<th class="checkbox-wrapper"><input type="checkbox" class="table-checkbox delChkAll"></th>
												<th class="programAuthCd">권한코드</th>
												<th class="programAuthNm">권한명</th>
												<th class="isAuthSelect">조회권한여부</th>
												<th class="isAuthSave">저장권한여부</th>
												<th class="isAuthExcel">엑셀권한여부</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="7">조회 결과가 없습니다</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- /.card-programAuth List -->
					</div>
					<!-- /.card -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid --> 
		</section>
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

	//프로그램 초기화 변수 생성.
	var nowProgram = 0;
	
	var defaultProgramData = {
			
			keyWord : "",
			isUse : "ALL"
	}
	
	var defaultProgramAuthData = {
			
			programCd : nowProgram
			
	}
	
	//프로그램(프로그램명/프로그램그룹 단위) 검색 버튼 이벤트 바인딩
	$("#button_sch").on("click", function() {
		
		var keyword = $("#input_sch").val().trim();
		
		$(":radio[name='IsUseRadio'][value='ALL']").prop('checked', true);
		
		showSearchList(keyword, "ALL");
		
	})
	$("#input_sch").on("keyup", function(e) {
		if (e.keyCode === 13)
			$("#button_sch").click();
	});
	
	//프로그램/프로그램 접근 권한  저장,수정 이벤트 바인딩
	$("#programSave").on("click", function() {
		
		programSave();
	});
	$("#programAuthSave").on("click", function() {
		
		programAuthSave();
	});
	
	//프로그램 추가버튼 이벤트 바인딩
	$("#programInsert").on("click", function() {
	
		var table = document.getElementById("program_table");
	    var row = table.insertRow();
	    var cell1 = row.insertCell(0);
	    var cell2 = row.insertCell(1);
	    var cell3 = row.insertCell(2);
	    var cell4 = row.insertCell(3);
	    var cell5 = row.insertCell(4);
	    var cell6 = row.insertCell(5);
	    var cell7 = row.insertCell(6);
	    var cell8 = row.insertCell(7);
	    var cell9 = row.insertCell(8);
	    
	    row.className = "list-row";
	    
	    cell1.innerHTML = "추가";
	    cell1.setAttribute('class', 'status');
	    cell1.setAttribute('data-status', 'I');
	    
	    cell2.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item'/>";
	    cell2.setAttribute('class', 'checkbox-wrapper');
	    
	    cell3.innerHTML = "<p class='rowColumn' contenteditable='true' onclick='openPop()'></p>";
	    cell3.setAttribute('class', 'programGrpNm');
	    
	    cell4.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell4.setAttribute('class', 'programCd');
	    
	    cell5.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell5.setAttribute('class', 'programNm');
	    
	    cell6.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell6.setAttribute('class', 'srcPath');
	    
	    cell7.innerHTML = "<input type='checkBox' checked data-isuse0='Y' class='isUse0' data-default='Y'/>";
	    cell7.setAttribute('class', 'isUse');
	    
	    cell8.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell8.setAttribute('class', 'note');
	
	    cell9.innerHTML = "<input name='programGrpCd' class='programGrpCd' type='hidden' value=''>";
	    cell9.setAttribute('class', 'programGrpCd');
	
	    
	    
	});
	
	//프로그램 그룹 선택 팝업창
	function openPop(){
	    var popup = window.open('', '네이버팝업', 'width=400px, height=500px, scrollbars=yes');
	}
	
	//프로그램 점근 권한 등록 이벤트 바인딩
	$("#programAuthInsert").on("click", function() {
		
		if(nowProgram == 0) {
			alert("프로그램을 먼저 선택해주세요.");
			return;
		}
		
		var table = document.getElementById("programAuth_table");
		
		var row = table.insertRow();
	    var cell1 = row.insertCell(0);
	    var cell2 = row.insertCell(1);
	    var cell3 = row.insertCell(2);
	    var cell4 = row.insertCell(3);
	    var cell5 = row.insertCell(4);
	    var cell6 = row.insertCell(5);
	    var cell7 = row.insertCell(6);	
	    
	    cell1.innerHTML = "추가";
	    cell1.setAttribute('class', 'status');
	    cell1.setAttribute('data-status', 'I');
	    
	    cell2.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item'/>"
	    cell2.setAttribute('class', 'checkbox-wrapper');
	    
	    cell3.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell3.setAttribute('class', 'programAuthCd');
	    
	    cell4.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell4.setAttribute('class', 'programAuthNm');

	    cell5.innerHTML = "<input type='checkBox' checked data-isuse1='Y' class='isUse1' data-default='Y'/>";
	    cell5.setAttribute('class', 'isAuthSelect');
	    
	    cell6.innerHTML = "<input type='checkBox' checked data-isuse2='Y' class='isUse2' data-default='Y'/>";
	    cell6.setAttribute('class', 'isAuthSave');
	    
	    cell7.innerHTML = "<input type='checkBox' checked data-isuse3='Y' class='isUse3' data-default='Y'/>";
	    cell7.setAttribute('class', 'isAuthExcel');
	    

	})
	
	//프로그램 행 클릭 이벤트 바인딩
	$(document).on("click", "#program_table tbody tr", function() {
		
		var con = true;
		
		$("#programAuth_table tbody .status").each(function(i) {
			
			if($(this).data('status') != 'R') {
				
				con = confirm("프로그램 접근 권한의 변경사항이 있습니다. 저장하시겠습니까?");
				
				if(con == true) {
					
					programAuthSave();
					
					return false;
				}
				
				return false;
			}
		});
		
		if(con == false) {
			
			return false;
		}
		
		nowProgram = $(this).find("td.programCd").text().trim();
		
		$(":radio[name='IsUseRadio'][value='ALL']").prop('checked', true);
		
		
		selectProgramAuthList();
		
	})
	
	//프로그램 사용여부 라디오 버튼 클릭 이벤트 바인딩
	$(".IsUseRadio").on("click", function() {
		
		
		
		var isUse =  $("input[name='IsUseRadio']:checked").val();
		
		showSearchList("", isUse);
	})
	
	//컬럼 더블클릭시 수정활성화 이벤트 바인딩
	$("table").on("dblclick", "td", function() {
		
		//해당 td class명을 가진 것은 빼고 활성화 시킨다.
		if($(this).attr("class") == "programCd" || 
		  $(this).attr("class") == "checkbox-wrapper" || 
		  $(this).attr("class") == "status" ||
		  $(this).attr("class") == "programAuthCd") {
			
			return;
		}
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		//td class status가 I(insert)이거나 D(delete)면 반환하라.
		if(statusCell.data("status") == "I" || statusCell.data("status") == "D") {
			
			return;
			
		}
		
		$(this).find("p").attr("contenteditable", "true").focus();
		
		statusCell.html("수정");
		
		statusCell.data("status", "U");
		
	});
	
	//삭제 체크박스 클릭시 이벤트 바인딩
	$(document).on("click", ".delChk", function() {
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		if($(this).is(":checked")) {
			
			statusCell.html("삭제");
			
			statusCell.data("status", "D");
			
		} else {
			
			statusCell.html("");
			
			statusCell.data("status", "R");
			
			$(this).parents("table").find(".delChkAll").prop("checked",false);
		}
		
	});
	
	//프로그램 사용여부 체크박스 이벤트 바인딩
	$(document).on("click", ".isUse0", function() {
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		if(statusCell.data("status") == "I") {
			
			if($(this).is(":checked")) {
				
				$(this).data("isuse0", "Y");
				
			} else {
				
				$(this).data("isuse0", "N");
			}
			
			return;
			
		} else {
			
			statusCell.html("수정");
			
			statusCell.data("status", "U");
			
			if($(this).is(":checked")) {
				
				$(this).data("isuse0", "Y");
				
			} else {
				
				$(this).data("isuse0", "N");
			}
			
		}
		
		checkChangeCell(this);
		
	});
	
	//프로그램 접근 권한 조회권한여부 체크박스 사용여부 이벤트 바인딩
	$(document).on("click", ".isUse1", function() {
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		if(statusCell.data("status") == "I") {
			
			if($(this).is(":checked")) {
				
				$(this).data("isuse1", "Y");
				
			} else {
				
				$(this).data("isuse1", "N");
			}
			
			return;
			
		} else {
			
			statusCell.html("수정");
			
			statusCell.data("status", "U");
			
			if($(this).is(":checked")) {
				
				$(this).data("isuse1", "Y");
				
			} else {
				
				$(this).data("isuse1", "N");
			}
			
		}
		
		checkChangeCell(this);
		
	});
	
	//프로그램 접근 권한 저장권한여부 체크박스 사용여부 이벤트 바인딩
	$(document).on("click", ".isUse2", function() {
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		if(statusCell.data("status") == "I") {
			
			if($(this).is(":checked")) {
				
				$(this).data("isuse2", "Y");
				
			} else {
				
				$(this).data("isuse2", "N");
			}
			
			return;
			
		} else {
			
			statusCell.html("수정");
			
			statusCell.data("status", "U");
			
			if($(this).is(":checked")) {
				
				$(this).data("isuse2", "Y");
				
			} else {
				
				$(this).data("isuse2", "N");
			}
			
		}
		
		checkChangeCell(this);
		
	});
	
	//프로그램 접근 권한 엑셀권한여부 체크박스 사용여부 이벤트 바인딩
	$(document).on("click", ".isUse3", function() {
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		if(statusCell.data("status") == "I") {
			
			if($(this).is(":checked")) {
				
				$(this).data("isuse3", "Y");
				
			} else {
				
				$(this).data("isuse3", "N");
			}
			
			return;
			
		} else {
			
			statusCell.html("수정");
			
			statusCell.data("status", "U");
			
			if($(this).is(":checked")) {
				
				$(this).data("isuse3", "Y");
				
			} else {
				
				$(this).data("isuse3", "N");
			}
			
		}
		
		checkChangeCell(this);
		
	});
	
	//프로그램 그룹 취소버튼 이벤트 바인딩
	$("#programCancel").on("click", function() {
		
		showSearchList("", "ALL");
		
	})
	
	//프로그램 접근 권한 취소버큰 이벤트 바인딩
	$("#programAuthCancel").on("click", function() {
		
		selectProgramAuthList();
		
	})
	
	
	$(document).on("focusout", "table p", function() {
		
		if($(this).parents("tr").find(".status").data("status") == "U") {
			
			checkChangeCell($(this));
		}
	});
	
	$(".delChkAll").on("click", function() {
		
		var statusTd = $(this).parents("table").find("td.status");
		
		if($(this).is(":checked")) {
			
			var isDel = true;
			
			$(statusTd).each(function(i) {
				
				var status = $(this).data("status");
				
				if(status != "R" && status !="D") {
					
					isDel = false;
					return;
					
				}
				
			})
			
			$(statusTd).each(function() {
				
				if(isDel) {
					
					$(this).data("status", "D");
					$(this).html("삭제");
					$(this).parents("tr").find(".delChk").prop("checked",true);
					
				} else {
					
					$(this).parents("table").find(".delChkAll").prop("checked",false);
					return false;
					
				}
			})
			
			
		} else {
			
			$(statusTd).each(function() {
				
				$(this).data("status", "R");
				$(this).html("");
				$(this).parents("tr").find(".delChk").prop("checked",false);
				
			})
			
		}
		
	})
	
	//프로그램 리스트 표시 함수
	function showProgramList(data) {
		
		var programList = data.programList;
		var body = $("#program_table tbody");
		body.empty();
		
		if(programList.length > 0) {
			
			programList.forEach(pro => {
				
				var str = 
						 "<tr class='list-row'>"
						+	"<td class='status' data-status='R'> </td>"
						+	"<td class='checkbox-wrapper'>"
						+		"<input type='checkbox' class='table-checkbox checkbox-item delChk'/>"
						+	"</td>"
						+	"<td class='programGrpNm'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + pro.programGrpNm + "'>" + pro.programGrpNm + "</p>"
						+		"<input type='hidden' class='programGrpCd' id='programGrpCd' value='" + pro.programGrpCd + "'/>"
						+	"</td>"
						+	"<td class='programCd'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + pro.programCd + "'>" + pro.programCd +"</p>"
						+	"</td>"
						+	"<td class='programNm'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + pro.programNm +"'>" + pro.programNm + "</p>"
						+	"</td>"
						+	"<td class='srcPath'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + pro.srcPath +"'>" + pro.srcPath + "</p>"
						+	"</td>"
						+	"<td class='isUse'>";
							if(pro.isUse == 'Y') {
								str += "<input type='checkbox' checked='checked' data-isuse0='Y' class='isUse0' data-default='" + pro.isUse + "'>";
							} else {
								str += "<input type='checkbox' data-isuse0='N' class='isUse0' data-default='" + pro.isUse + "'>";
							}
							str += "</td>"
								+	"<td class='note'>"
								+		"<p class='rowColumn' contenteditable='false' data-default='" + pro.note + "'>" + pro.note + "</p>"
								+	"</td>"
								+"</tr>";
					
					body.append(str);
					
				});
		
		} else {
			
			body.append("<tr>" + "<td colspan='8'>조회 결과가 없습니다</td>" + "</tr>");
			
		}
	}
	
	//프로그램 접근 권한 리스트 표시 함수
	function showProgramAuthList(data) {
		
		var table = document.getElementById("programAuth_table").getElementsByTagName('tbody')[0];
		
		$("#programAuth_table tbody").empty();
		
		if(data.programAuthList.length <= 0) {

			var row = table.insertRow();
			var cell1 = row.insertCell(0);
			
			cell1.innerHTML = "조회결과가 없습니다.";
		    cell1.setAttribute('colspan', '7');
			return;
		}
		
		for(var i = 0; i<data.programAuthList.length; i++) {
			
		    var row = table.insertRow();
		    var cell1 = row.insertCell(0);
		    var cell2 = row.insertCell(1);
		    var cell3 = row.insertCell(2);
		    var cell4 = row.insertCell(3);
		    var cell5 = row.insertCell(4);
		    var cell6 = row.insertCell(5);
		    var cell7 = row.insertCell(6);
		    
		    cell1.innerHTML = "";
		    cell1.setAttribute('class', 'status');
		    cell1.setAttribute('data-status', 'R');
		    
		    cell2.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item delChk'/>"
		    cell2.setAttribute('class', 'checkbox-wrapper');
		    
		    cell3.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.programAuthList[i].programAuthCd + "'>" + data.programAuthList[i].programAuthCd + "</p>";
		    cell3.setAttribute('class', 'programAuthCd');
		    
		    cell4.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.programAuthList[i].programAuthNm + "'>" + data.programAuthList[i].programAuthNm + "</p>";
		    cell4.setAttribute('class', 'programAuthNm');
		    
		    if (data.programAuthList[i].isAuthSelect == "Y") {
		    	cell5.innerHTML = "<input type='checkbox' checked='checked' data-isuse1='Y' class='isUse1' data-default='" + data.programAuthList[i].isAuthSelect + "'>";
			} else {
				cell5.innerHTML = "<input type='checkbox' data-isuse1='N' class='isUse1' data-default='" + data.programAuthList[i].isAuthSelect + "'>";
			}
		    
		    if (data.programAuthList[i].isAuthSave == "Y") {
		    	cell6.innerHTML = "<input type='checkbox' checked='checked' data-isuse2='Y' class='isUse2' data-default='" + data.programAuthList[i].isAuthSave + "'>";
			} else {
				cell6.innerHTML = "<input type='checkbox' data-isuse2='N' class='isUse2' data-default='" + data.programAuthList[i].isAuthSave + "'>";
			}
		    
		    if (data.programAuthList[i].isAuthExcel == "Y") {
		    	cell7.innerHTML = "<input type='checkbox' checked='checked' data-isuse3='Y' class='isUse3' data-default='" + data.programAuthList[i].isAuthExcel + "'>";
			} else {
				cell7.innerHTML = "<input type='checkbox' data-isuse3='N' class='isUse3' data-default='" + data.programAuthList[i].isAuthExcel + "'>";
			}
		   
		    
		    
		}
		
	}
	
	//프로그램 검색 리스트
	function showSearchList(_keyWord, _isUse) {
		
		var searchData = {
				
			keyWord : _keyWord,
			isUse : _isUse
					
		};
		
		$.ajax({
			url : '/program/searchProgram.do',
	        type: 'POST',
	        data: JSON.stringify(searchData),
	        dataType:'json',
	        contentType:"application/json;charset=UTF-8",
	        success: function(data) {
				
	        	showProgramList(data);
	            
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        }
		});
	}
	
	//프로그램 클릭 시 프로그램 접근 권한 목록 체크
	function selectProgramAuthList(programCd) {
		
		var searchData = {
				
				programCd : nowProgram,
					
		};
			
		console.log(searchData);	
			
		$.ajax({
			url : '/program/programAuthListPage.do',
	        type: 'POST',
	        data : JSON.stringify(searchData),
	        dataType:'json',
	        contentType:"application/json;charset=UTF-8",
	        success: function(data) {
				
	        	showProgramAuthList(data);
	            
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        }
		});
	}
	
	//프로그램 저장
	function programSave() {
		
		var programList = [];
		
		$("#program_table tbody .status").each(function(i) {
			
			if($(this).data('status') != 'R') {
				
				var data = {
						
					programStatus : $(this).data('status'),
					programGrpNm : $(this).parents('tr').find("td.programGrpNm").text().trim(),
					programGrpCd : $("input[name=programGrpCd]").val(),
					programCd : $(this).parents('tr').find("td.programCd").text().trim(),
					programNm : $(this).parents('tr').find("td.programNm").text().trim(),
					srcPath : $(this).parents('tr').find("td.srcPath").text().trim(),
					isUse : $(this).parents('tr').find("input.isUse0").data("isuse0"),
					note : $(this).parents('tr').find("td.note").text().trim()
					
				};
				
				if(data.programGrpNm == "시스템"){
					
					data.programGrpCd = "BM";
					programList.push(data);
					
				}else if(data.programGrpNm == "인사"){
					
					data.programGrpCd = "HM";
					programList.push(data);
					
				}else if(data.programGrpNm == "샘플화면"){
					
					data.programGrpCd = "SP";
					programList.push(data);
					
				}else{
					
					alert("포함되지 않은 프로그램 그룹이 존재합니다. 확인 후 다시 입력해 주세요.");
					exit;
					
				}
	
			}
			
		});
		
		var programData = JSON.stringify(programList);
		
		$.ajax({
			url : '/program/iudprogram.do',
	        type: 'POST',
	        data: {"programData" : programData},
	        dataType:'json',
	        success: function(data) {
	        	alert("저장되었습니다.");
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        },
	        complete: function() {
	        	showSearchList("", "ALL");
			}
		});
	}
	
	//프로그램 접근 권한 저장
	function programAuthSave() {
		
		var programAuthList = [];
		
		$("#programAuth_table tbody .status").each(function(i) {
			
			if($(this).data('status') != 'R') {
				
				var data = {
						
					programAuthStatus : $(this).data('status').trim(),
					programCd : nowProgram,
					programAuthCd : $(this).parents('tr').find("td.programAuthCd").text().trim(),
					programAuthNm : $(this).parents('tr').find("td.programAuthNm").text().trim(),
					isAuthSelect : $(this).parents('tr').find("input.isUse1").data("isuse1"),
					isAuthSave : $(this).parents('tr').find("input.isUse2").data("isuse2"),
					isAuthExcel : $(this).parents('tr').find("input.isUse3").data("isuse3"),

				
				};
				
				programAuthList.push(data);
				
			}
			
		});
		
		var programAuthData = JSON.stringify(programAuthList);
		
		$.ajax({
			url : '/program/iudProgramAuth.do',
	        type: 'POST',
	        data: {"programAuthData" : programAuthData},
	        dataType:'json',
	        success: function(data) {
	        	alert("저장되었습니다.");
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        },
	        complete: function() {
	        	selectProgramAuthList();
			}
		});
	}
	
	//수정 메시지 이벤트 바인딩
	function checkChangeCell(cell) {
		
		var changeCell = 0;
			
		if($(cell).data("default") == $(cell).html().trim()) {
			$(cell).prop("contenteditable", false);
		}
		
			$(cell).parents("tr").find("p").each(function(i) {
			
				var defaultText = $(this).data("default");
				var changeText = $(this).html().trim();
				
				if(defaultText != changeText) {
					
					changeCell++;
				}
		})
		
			var isUse0ChkDefault = $(cell).parents("tr").find(".isUse0").data("default");
			var isUse1ChkDefault = $(cell).parents("tr").find(".isUse1").data("default");
			var isUse2ChkDefault = $(cell).parents("tr").find(".isUse2").data("default");
			var isUse3ChkDefault = $(cell).parents("tr").find(".isUse3").data("default");
			
			var isUse0ChkNow = $(cell).parents("tr").find(".isUse0").data("isuse0");
			var isUse1ChkNow = $(cell).parents("tr").find(".isUse1").data("isuse1");
			var isUse2ChkNow = $(cell).parents("tr").find(".isUse2").data("isuse2");
			var isUse3ChkNow = $(cell).parents("tr").find(".isUse3").data("isuse3");
			
		
			if(isUse0ChkDefault != isUse0ChkNow || isUse1ChkDefault != isUse1ChkNow || isUse2ChkDefault != isUse2ChkNow || isUse3ChkDefault != isUse3ChkNow) {
				
				changeCell++;
			}
		
		if(changeCell <= 0) {
			
			var statusCell = $(cell).parents("tr").find("td.status");
				
				statusCell.html("");
				
				statusCell.data("status", "R"); 
				
		}
		
	}

</script>
</body>
</html>