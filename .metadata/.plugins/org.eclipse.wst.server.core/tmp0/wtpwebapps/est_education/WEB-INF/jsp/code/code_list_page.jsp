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

#codeGrp_table td{
	height: 30px;
}

table .status{
	width: 5%;
	text-align: center;
}

#codeGrp_table .checkbox-wrapper{
	width: 5%;
}

#codeGrp_table .grpCd{
	width: 8%;
}

#codeGrp_table .grpNm{
	width: 10%;
}

#codeGrp_table .grpSortOrder{
	width: 5%;
	text-align: center;
}

#codeGrp_table .grpIsUse{
	width: 5%;
	text-align: center;
	vertical-align: middle;
}

#codeGrp_table .grpNote{
	width: 25%;
}

#code_table .codeComCd {
	width: 5%;
}

#code_table .codeNm {
	width: 18%;
}

#code_table .codeIsUse{
	width: 5%;
	text-align: center;
	vertical-align: middle;
}

#code_table .codeSortOrder{
	width: 5%;
	text-align: center;
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
							<h1 class="m-0 text-dark">코드 관리 게시판</h1>
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
									<h3 class="card-title">코드 그룹</h3>
									<span style="margin-left: 5px; font-size: 13px; color: gray;">더블클릭시 수정상태로 변합니다.</span>
								</div>
								<div class="col-sm-4">
									<div class="input-group input-group-sm">
										<input type="text" id="input_sch" name="search" class="form-control float-right" placeholder="그룹코드나 그룹명을 검색해주세요." value="${search}">
										<div class="input-group-append">
											<button id="button_sch" type="button" class="btn btn-default">
												<i class="fas fa-search"></i>
											</button>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="float-right">
										<input type="radio" class="grpIsUseRadio" name="grpIsUseRadio" value="ALL" checked="checked"> 전체
										<input type="radio" class="grpIsUseRadio" name="grpIsUseRadio" value="Y"> 사용
										<input type="radio" class="grpIsUseRadio" name="grpIsUseRadio" value="N"> 미사용
										<input type="button" value="저장" id="codeGrpSave" class="btn btn-primary">
										<input type="button" value="추가" id="codeGrpInsert" class="btn btn-primary">
										<input type="button" value="취소" id="codeGrpCancel" class="btn btn-primary">
									</div>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div style="height: 100%; overflow: auto;">
									<table id="codeGrp_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class="status">상태</th>
												<th class="checkbox-wrapper"><input type="checkbox" class="table-checkbox delChkAll"></th>
												<th class='grpCd'>그룹코드</th>
												<th class='grpNm'>그룹명</th>
												<th class='grpSortOrder'>코드순서</th>
												<th class='grpIsUse'>사용여부</th>
												<th class='grpNote'>비고</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(codeGroupList) == 0 }">
													<tr>
														<td colspan="8">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="code" items="${ codeGroupList }">
														<tr class="list-row">
															<td class="status" data-status="R">
															
															</td>
															<td class="checkbox-wrapper">
																<input type="checkbox" class="table-checkbox checkbox-item delChk"/>
															</td>
															<td class='grpCd'>
																<p class='rowColumn' contenteditable='false' data-default='${ code.grpCd }'><c:out value="${ code.grpCd }" /> </p>
															</td>
															<td class='grpNm'>
																<p class='rowColumn' contenteditable='false' data-default='${ code.grpNm }'><c:out value="${ code.grpNm }" /></p>
															</td>
															<td class='grpSortOrder'>
																<p class='rowColumn' contenteditable='false' data-default='${ code.grpSortOrder }'><c:out value="${ code.grpSortOrder }" /></p>
															</td>
															<td class='grpIsUse'>
																<c:if test="${code.grpIsUse == 'Y' }">
																	<input type="checkbox" checked="checked" data-isuse="Y" class="isUse" data-default='${ code.grpIsUse }'>
																</c:if>
																<c:if test="${code.grpIsUse == 'N' }">
																	<input type="checkbox" data-isuse="N" class="isUse" data-default='${ code.grpIsUse }'>
																</c:if>
															</td>
															<td class='grpNote'>
																<p class='rowColumn' contenteditable='false' data-default='${ code.grpNote }'><c:out value="${ code.grpNote }" /></p>
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
						<!-- /.codeGroup card-body -->
						
						
						<div class="card">
							<div class="card-header">
								<h3 class="card-title row">코드</h3>
								<div class="col">
									<div class="float-right">
										<input type="radio" class="codeIsUseRadio" name="codeIsUseRadio" value="ALL" checked="checked"> 전체
										<input type="radio" class="codeIsUseRadio" name="codeIsUseRadio" value="Y"> 사용
										<input type="radio" class="codeIsUseRadio" name="codeIsUseRadio" value="N"> 미사용
										<input type="button" value="저장" id="codeSave" class="btn btn-primary">
										<input type="button" value="추가" id="codeInsert" class="btn btn-primary">
										<input type="button" value="취소" id="codeCancel" class="btn btn-primary">
									</div>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div style="height: 100%; overflow: auto;">
									<table id="code_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class="status">상태</th>
												<th class="checkbox-wrapper"><input type="checkbox" class="table-checkbox delChkAll"></th>
												<th class="codeComCd">공통코드</th>
												<th class="codeNm">코드명</th>
												<th class="codeSortOrder">코드순서</th>
												<th class="codeIsUse">사용여부</th>
												<th>속성값1</th>
												<th>속성값2</th>
												<th>속성값3</th>
												<th>비고</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td colspan="10">조회 결과가 없습니다</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- /.card-body -->
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
	
	var nowGrpCd = 0;
	
	var defaultGrpData = {
			
			keyWord : "",
			isUse : "ALL"
	}
	
	var defaultCodeData = {
			
			grpCd : nowGrpCd,
			isUse : "ALL"
	}
	
	//검색 버튼 이벤트 바인딩
	$("#button_sch").on("click", function() {
		
		var keyword = $("#input_sch").val().trim();
		//var isUse = $("input[name='grpIsUseRadio']:checked").val();
		
		$(":radio[name='grpIsUseRadio'][value='ALL']").prop('checked', true);
		
		showSearchList(keyword, "ALL");
		
	})
	
	$("#input_sch").on("keyup", function(e) {
		if (e.keyCode === 13)
			$("#button_sch").click();
	});

	//저장 버튼 이벤트 바인딩
	$("#codeGrpSave").on("click", function() {
		
		codeGrpSave();
	});
	
	$("#codeSave").on("click", function() {
		
		codeSave();
	});
	
	//코드 그룹 등록버튼 이벤트 바인딩
	$("#codeGrpInsert").on("click", function() {
		
		var table = document.getElementById("codeGrp_table");
	    var row = table.insertRow();
	    var cell1 = row.insertCell(0);
	    var cell2 = row.insertCell(1);
	    var cell3 = row.insertCell(2);
	    var cell4 = row.insertCell(3);
	    var cell5 = row.insertCell(4);
	    var cell6 = row.insertCell(5);
	    var cell7 = row.insertCell(6);
	    
	    row.className = "list-row";
	    
	    cell1.innerHTML = "추가";
	    cell1.setAttribute('class', 'status');
	    cell1.setAttribute('data-status', 'C');
	    
	    cell2.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item'/>"
	    cell2.setAttribute('class', 'checkbox-wrapper');
	    
	    cell3.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell3.setAttribute('class', 'grpCd');
	    
	    cell4.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell4.setAttribute('class', 'grpNm');
	    
	    cell5.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell5.setAttribute('class', 'grpSortOrder');
	    
	    cell6.innerHTML = "<input type='checkBox' checked data-isuse='Y' class='isUse' data-default='Y'/>";
	    cell6.setAttribute('class', 'grpIsUse');
	    
	    cell7.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell7.setAttribute('class', 'grpNote');
		
	});
	
	//코드 등록 이벤트 바인딩
	$("#codeInsert").on("click", function() {
		
		if(nowGrpCd == 0) {
			alert("코드 그룹을 선택해주세요.");
			return;
		}
		
		var table = document.getElementById("code_table");
		
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
	    var cell10 = row.insertCell(9);
	    
	    cell1.innerHTML = "추가";
	    cell1.setAttribute('class', 'status');
	    cell1.setAttribute('data-status', 'C');
	    
	    cell2.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item'/>"
	    cell2.setAttribute('class', 'checkbox-wrapper');
	    
	    cell3.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell3.setAttribute('class', 'codeComCd');
	    
	    cell4.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell4.setAttribute('class', 'codeNm');
	    
	    cell5.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell5.setAttribute('class', 'codeSortOrder');
	    
	    cell6.innerHTML = "<input type='checkBox' checked data-isuse='Y' class='isUse' data-default='Y'/>";
	    cell6.setAttribute('class', 'codeIsUse');
	    
	    cell7.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell7.setAttribute('class', 'codeAttrValue1');
	    
	    cell8.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell8.setAttribute('class', 'codeAttrValue2');
	    
	    cell9.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell9.setAttribute('class', 'codeAttrValue3');
	    
	    cell10.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell10.setAttribute('class', 'codeNote');
	})
	
	//코드 그룹 행 클릭 이벤트 바인딩
	$(document).on("click", "#codeGrp_table tbody tr", function() {
		
		var con = true;
		
		$("#code_table tbody .status").each(function(i) {
			
			if($(this).data('status') != 'R') {
				
				con = confirm("코드의 변경사항이 있습니다. 저장하고 진행하시겠습니까?");
				
				if(con == true) {
					codeSave();
					
					return false;
				}
				
				return false;
			}
		});
		
		if(con == false) {
			
			return false;
		}
		
		nowGrpCd = $(this).find("td.grpCd").text().trim();
		
		$(":radio[name='codeIsUseRadio'][value='ALL']").prop('checked', true);
		
		selectCodeList();
	})
	
	//코드그룹 사용여부 라디오 버튼 클릭 이벤트 바인딩
	$(".grpIsUseRadio").on("click", function() {
		
		
		
		var grpIsUse =  $("input[name='grpIsUseRadio']:checked").val();
		
		showSearchList("", grpIsUse);
	})
	
	//코드 사용여부 라디오 버튼 클릭 이벤트 바인딩
	$(".codeIsUseRadio").on("click", function() {
		
		var codeIsUse =  $("input[name='codeIsUseRadio']:checked").val();
		selectCodeList(codeIsUse);
	})
	
	//컬럼 더블클릭시 수정활성화 이벤트 바인딩
	$("table").on("dblclick", "td", function() {
		
		if($(this).attr("class") == "grpCd" || $(this).attr("class") == "codeComCd" || $(this).attr("class") == "checkbox-wrapper"
				|| $(this).attr("class") == "status" || $(this).attr("class") == "grpIsUse" || $(this).attr("class") == "codeIsUse") {
			
			return;
		}
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		if(statusCell.data("status") == "C" || statusCell.data("status") == "D") {
			
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
	
	//사용여부 체크박스 이벤트 바인딩
	$(document).on("click", ".isUse", function() {
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		statusCell.html("수정");
		
		statusCell.data("status", "U");
		
		if($(this).is(":checked")) {
			
			$(this).data("isuse", "Y");
			
		} else {
			
			$(this).data("isuse", "N");
		}
		
		checkChangeCell(this);
		
	});
	
	//코드 취소버튼 이벤트 바인딩
	$("#codeCancel").on("click", function() {
		
		selectCodeList();
	})
	
	//코드그룹 취소버튼 이벤트 바인딩
	$("#codeGrpCancel").on("click", function() {
		
		showSearchList("", "ALL");
		
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
			console.log(statusTd);
			
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
					
					alert("수정중이거나 추가중인 항목이있습니다.");
					
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
	
	function showCodeGrpList(data) {
		
		var codeGroupList = data.codeGroupList;
		var body = $("#codeGrp_table tbody");
		body.empty();
		console.log(codeGroupList);
		if(codeGroupList.length > 0) {
			
			codeGroupList.forEach(code => {
				
				var str = 
						 "<tr class='list-row'>"
						+	"<td class='status' data-status='R'> </td>"
						+	"<td class='checkbox-wrapper'>"
						+	"<input type='checkbox' class='table-checkbox checkbox-item delChk'/>"
						+	"</td>"
						+	"<td class='grpCd'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + code.grpCd + "'>" + code.grpCd + "</p>"
						+	"</td>"
						+	"<td class='grpNm'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + code.grpNm + "'>" + code.grpNm +"</p>"
						+	"</td>"
						+	"<td class='grpSortOrder'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + code.grpSortOrder +"'>" + code.grpSortOrder + "</p>"
						+	"</td>"
						+	"<td class='grpIsUse'>";
							if(code.grpIsUse == 'Y') {
								str += "<input type='checkbox' checked='checked' data-isuse='Y' class='isUse' data-default='" + code.grpIsUse + "'>";
							} else {
								str += "<input type='checkbox' data-isuse='N' class='isUse' data-default='" + code.grpIsUse + "'>";
							}
					str += "</td>"
						+	"<td class='grpNote'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + code.grpNote + "'>" + code.grpNote + "</p>"
						+	"</td>"
						+"</tr>";
					
					body.append(str);
				});
		
		} else {
			body.append("<tr>" + "<td colspan='7'>조회 결과가 없습니다</td>" + "</tr>");
			
		}
	}
	
	//코드 리스트 표시 함수
	function showCodeList(data) {
		
		var table = document.getElementById("code_table").getElementsByTagName('tbody')[0];
		
		$("#code_table tbody").empty();
		
		if(data.codeList.length <= 0) {

			var row = table.insertRow();
			var cell1 = row.insertCell(0);
			
			cell1.innerHTML = "조회결과가 없습니다.";
		    cell1.setAttribute('colspan', '10');
			return;
		}
		
		for(var i = 0; i<data.codeList.length; i++) {
			
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
		    var cell10 = row.insertCell(9);
		    
		    cell1.innerHTML = "";
		    cell1.setAttribute('class', 'status');
		    cell1.setAttribute('data-status', 'R');
		    
		    cell2.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item delChk'/>"
		    cell2.setAttribute('class', 'checkbox-wrapper');
		    
		    cell3.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.codeList[i].codeComCd + "'>" + data.codeList[i].codeComCd + "</p>";
		    cell3.setAttribute('class', 'codeComCd');
		    
		    cell4.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.codeList[i].codeNm + "'>" + data.codeList[i].codeNm + "</p>";
		    cell4.setAttribute('class', 'codeNm');
		    
		    cell5.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.codeList[i].codeSortOrder + "'>" + data.codeList[i].codeSortOrder + "</p>";
		    cell5.setAttribute('class', 'codeSortOrder');
		    
		    if (data.codeList[i].codeIsUse == "Y") {
		    	cell6.innerHTML = "<input type='checkbox' checked='checked' data-isuse='Y' class='isUse'data-default='" + data.codeList[i].codeIsUse + "'>";
			} else {
				
				cell6.innerHTML = "<input type='checkbox' data-isuse='N' class='isUse'data-default='" + data.codeList[i].codeIsUse + "'>";
			}
		    cell6.setAttribute('class', 'codeIsUse');
		    
		    cell7.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.codeList[i].codeAttrValue1 + "'>" + data.codeList[i].codeAttrValue1 + "</p>";
		    cell7.setAttribute('class', 'codeAttrValue1');
		    
		    cell8.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.codeList[i].codeAttrValue2 + "'>" + data.codeList[i].codeAttrValue2 + "</p>";
		    cell8.setAttribute('class', 'codeAttrValue2');
		    
		    cell9.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.codeList[i].codeAttrValue3 + "'>" + data.codeList[i].codeAttrValue3 + "</p>";
		    cell9.setAttribute('class', 'codeAttrValue3');
		    
		    cell10.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.codeList[i].codeNote + "'>" + data.codeList[i].codeNote + "</p>";
		    cell10.setAttribute('class', 'codeNote');
		}
		
	}
	
	function showSearchList(_keyWord, _isUse) {
		
		var searchData = {
				
			keyWord : _keyWord,
			isUse : _isUse
					
		};
		
		$.ajax({
			url : '/code/searchCodeGrp.do',
	        type: 'POST',
	        data: JSON.stringify(searchData),
	        dataType:'json',
	        contentType:"application/json;charset=UTF-8",
	        success: function(data) {
				
	        	showCodeGrpList(data);
	            
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        }
		});
	}
	
	//코드그룹 클릭시 코드 목록 조회
	function selectCodeList(codeIsUse) {
		
		var searchData = {
			
			grpCd : nowGrpCd,
			isUse : codeIsUse
				
		};
		
		$.ajax({
			url : '/code/selectCode.do',
	        type: 'POST',
	        data: JSON.stringify(searchData),
	        dataType:'json',
	        contentType:"application/json;charset=UTF-8",
	        success: function(data) {
				
	        	showCodeList(data);
	            
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        }
		});
	}
	
	function codeGrpSave() {
		var codeGrpList = [];
		var codeList = [];
		
		$("#codeGrp_table tbody .status").each(function(i) {
			
			if($(this).data('status') != 'R') {
				
				var data = {
						
					grpStatus : $(this).data('status'),
					grpCd : $(this).parents('tr').find("td.grpCd").text().trim(),
					grpNm : $(this).parents('tr').find("td.grpNm").text().trim(),
					grpSortOrder : $(this).parents('tr').find("td.grpSortOrder").text().trim(),
					grpIsUse : $(this).parents('tr').find("input.isUse").data("isuse"),
					grpNote : $(this).parents('tr').find("td.grpNote").text().trim()
				
				};
				
				codeGrpList.push(data);
				
			}
			
		});
		
		var codeGrpData = JSON.stringify(codeGrpList);
		
		$.ajax({
			url : '/code/cudCodeGrp.do',
	        type: 'POST',
	        data: {"codeGrpData" : codeGrpData},
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
	
	function codeSave() {
		
		var codeList = [];
		var codeGrpList = [];
		
		$("#code_table tbody .status").each(function(i) {
			
			if($(this).data('status') != 'R') {
				
				var data = {
						
					codeStatus : $(this).data('status').trim(),
					codeGrpCd : nowGrpCd,
					codeComCd : $(this).parents('tr').find("td.codeComCd").text().trim(),
					codeNm : $(this).parents('tr').find("td.codeNm").text().trim(),
					codeSortOrder : $(this).parents('tr').find("td.codeSortOrder").text().trim(),
					codeIsUse : $(this).parents('tr').find("input.isUse").data("isuse"),
					codeAttrValue1 : $(this).parents('tr').find("td.codeAttrValue1").text().trim(),
					codeAttrValue2 : $(this).parents('tr').find("td.codeAttrValue2").text().trim(),
					codeAttrValue3 : $(this).parents('tr').find("td.codeAttrValue3").text().trim(),
					codeNote : $(this).parents('tr').find("td.codeNote").text().trim()
				
				};
				
				codeList.push(data);
			}
			
		});
		
		var codeData = JSON.stringify(codeList);
		
		$.ajax({
			url : '/code/cudCode.do',
	        type: 'POST',
	        data: {"codeData" : codeData},
	        dataType:'json',
	        success: function(data) {
	        	alert("저장되었습니다.");
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        },
	        complete: function() {
	        	selectCodeList();
			}
		});
	}
	
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
		
		var isUseChkDefault = $(cell).parents("tr").find(".isUse").data("default");
 		var isUseChkNow = $(cell).parents("tr").find(".isUse").data("isuse");
		
 		if(isUseChkDefault != isUseChkNow) {
 			
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