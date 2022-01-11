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

#auth_table td{
	height: 30px;
}

table .status{
	width: 5%;
	text-align: center;
}

#auth_table .checkbox-wrapper{
	width: 5%;
}

#auth_table .authCd{
	width: 8%;
}

#auth_table .authNm{
	width: 10%;
}

#auth_table .useYn{
	width: 5%;
	text-align: center;
	vertical-align: middle;
}

#auth_table .note{
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
							<h1 class="m-0 text-dark">권한 관리 게시판</h1>
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
									<h3 class="card-title">권한</h3>
									<span style="margin-left: 5px; font-size: 13px; color: gray;">더블클릭시 수정상태로 변합니다.</span>
								</div>
								<div class="col-sm-4">
									<div class="input-group input-group-sm">
										<input type="text" id="input_sch" name="search" class="form-control float-right" placeholder="권한코드나 권한명을 검색해주세요." value="${search}">
										<div class="input-group-append">
											<button id="button_sch" type="button" class="btn btn-default">
												<i class="fas fa-search"></i>
											</button>
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="float-right">
										<input type="radio" class="authIsUseRadio" name="authIsUseRadio" value="ALL" checked="checked"> 전체
										<input type="radio" class="authIsUseRadio" name="authIsUseRadio" value="Y"> 사용
										<input type="radio" class="authIsUseRadio" name="authIsUseRadio" value="N"> 미사용
										<input type="button" value="저장" id="authSave" class="btn btn-primary">
										<input type="button" value="추가" id="authInsert" class="btn btn-primary">
<!-- 										<input type="button" value="삭제" id="authDelete" class="btn btn-primary"> -->
										<input type="button" value="취소" id="authCancel" class="btn btn-primary">
									</div>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div style="height: 100%; overflow: auto;">
									<table id="auth_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class="status">상태</th>
												<th class="checkbox-wrapper"><input type="checkbox" class="table-checkbox delChkAll"></th>
												<th class='authCd'>권한코드</th>
												<th class='authNm'>권한명</th>
												<th class='useYn'>사용여부</th>
												<th class='note'>비고</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(authorityGroupList) == 0 }">
													<tr>
														<td colspan="8">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="authority" items="${ authorityGroupList }">
														<tr class="list-row">
															<td class="status" data-status="R">
															
															</td>
															<td class="checkbox-wrapper">
																<input type="checkbox" class="table-checkbox checkbox-item delChk"/>
															</td>
															<td class='authCd'>
																<p class='rowColumn' contenteditable='false' data-default='${ authority.authCd }'><c:out value="${ authority.authCd }" /> </p>
															</td>
															<td class='authNm'>
																<p class='rowColumn' contenteditable='false' data-default='${ authority.authNm }'><c:out value="${ authority.authNm }" /></p>
															</td>
															<td class='useYn'>
																<c:if test="${authority.useYn == 'Y' }">
																	<input type="checkbox" checked="checked" data-isuse="Y" class="isUse" data-default='${ authority.useYn }'>
																</c:if>
																<c:if test="${authority.useYn == 'N' }">
																	<input type="checkbox" data-isuse="N" class="isUse" data-default='${ authority.useYn }'>
																</c:if>
															</td>
															<td class='note'>
																<p class='rowColumn' contenteditable='false' data-default='${ authority.note }'><c:out value="${ authority.note }" /></p>
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
								<h3 class="card-title row">권한별 등록사원</h3>
								<div class="col">
									<div class="float-right">
<!-- 										<input type="button" value="저장" id="memberSave" class="btn btn-primary"> -->
<!-- 										<input type="button" value="추가" id="memberInsert" class="btn btn-primary" data-target="#mem" data-toggle="modal"> -->
<!--										<input type="button" value="삭제" id="memberDelete" class="btn btn-primary"> -->
<!-- 										<input type="button" value="취소" id="memberCancel" class="btn btn-primary"> -->
									</div>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div style="height: 100%; overflow: auto;">
									<table id="member_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
<!-- 												<th class="status">상태</th> -->
<!-- 												<th class="checkbox-wrapper"><input type="checkbox" class="table-checkbox delChkAll"></th> -->
												<th class="memberSq">사원코드</th>
												<th class="memberNm">사원명</th>
												<th class="memberDprtmt">조직</th>
												<th class="memberPosition">직급</th>
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
	
	var nowAuthCd = 0;
	
	var defaultAuthData = {
			
			keyWord : "",
			isUse : "ALL"
	};
	
	var defaultMemberData = {
			
			authCd : nowAuthCd,
			isUse : "ALL"
	};
	
	//검색 버튼 이벤트 바인딩
	$("#button_sch").on("click", function() {
		
		
		var keyword = $("#input_sch").val().trim();
		
		$(":radio[name='authIsUseRadio'][value='ALL']").prop('checked', true);
		
		showSearchList(keyword, "ALL");
		
		
	});
	
	$("#input_sch").on("keyup", function(e) {
		if (e.keyCode === 13)
			$("#button_sch").click();
	});
	
	//저장 버튼 이벤트 바인딩
	$("#authSave").on("click", function() {
		
		authSave();
	});
	
	$("#memberSave").on("click", function() {
		
		memberSave();
	});
	
	//권한 추가버튼 이벤트 바인딩
	  $("#authInsert").on("click", function() {
		
		
		var table = document.getElementById("auth_table");
	    var row = table.insertRow();
	    var cell1 = row.insertCell(0);
	    var cell2 = row.insertCell(1);
	    var cell3 = row.insertCell(2);
	    var cell4 = row.insertCell(3);
	    var cell5 = row.insertCell(4);
	    var cell6 = row.insertCell(5);
	    
	    row.className = "list-row";
	    
	    cell1.innerHTML = "추가";
	    cell1.setAttribute('class', 'status');
	    cell1.setAttribute('data-status', 'C');
	    
	    cell2.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item'/>"
	    cell2.setAttribute('class', 'checkbox-wrapper');
	    
	    cell3.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell3.setAttribute('class', 'authCd');
	    
	    cell4.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell4.setAttribute('class', 'authNm');
	    
	    cell5.innerHTML = "<input type='checkBox' checked data-isuse='Y' class='isUse' data-default='Y'/>";
	    cell5.setAttribute('class', 'useYn');
	    
	    cell6.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell6.setAttribute('class', 'note');
		
	});
	
// // 	사원 등록 추가시 모달창 이벤트 바인딩
// 	$("#memberInsert").on("click", function() {
		
// 		if(nowAuthCd == 0) {
// 			alert("추가할 권한을 선택해주세요.");
// 			return false;
// 		}
// 	});
// 		var table = document.getElementById("member_table");
		
// 		var row = table.insertRow();
// 	    var cell1 = row.insertCell(0);
// 	    var cell2 = row.insertCell(1);
// 	    var cell3 = row.insertCell(2);
// 	    var cell4 = row.insertCell(3);
// 	    var cell5 = row.insertCell(4);
// 	    var cell6 = row.insertCell(5);
	    
// 	    cell1.innerHTML = "추가";
// 	    cell1.setAttribute('class', 'status');
// 	    cell1.setAttribute('data-status', 'C');
	    
// 	    cell2.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item'/>"
// 	    cell2.setAttribute('class', 'checkbox-wrapper');
	    
// 	    cell3.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
// 	    cell3.setAttribute('class', 'memberSq');
	    
// 	    cell4.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
// 	    cell4.setAttribute('class', 'memberNm');
	    
// 	    cell5.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
// 	    cell5.setAttribute('class', 'memberDprtmt');
	    
// 	    cell6.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
// 	    cell6.setAttribute('class', 'memberPosition');
	    

	
	//권한  행 클릭 이벤트 바인딩
	$(document).on("click", "#auth_table tbody tr", function() {
		
		var con = true;
		
		$("#member_table tbody .status").each(function(i) {
			
			if($(this).data('status') != 'R') {
				
				con = confirm("변경사항이 있습니다. 저장하고 진행하시겠습니까?");
				
				if(con == true) {
					memberSave();
					
					return false;
				}
				
				return false;
			}
		});
		
		if(con == false) {
			
			return false;
		}
		
		nowAuthCd = $(this).find("td.authCd").text().trim();
		
		selectMemberList();
	});
	
	//권한 사용여부 라디오 버튼 클릭 이벤트 바인딩
	$(".authIsUseRadio").on("click", function() {
		
		var useYn =  $("input[name='authIsUseRadio']:checked").val();
		
		showSearchList("", useYn);
	});
	
	//컬럼 더블클릭시 수정활성화 이벤트 바인딩
	$("table").on("dblclick", "td", function() {   
		
		if($(this).attr("class") == "authCd" || $(this).attr("class") == "memberSq" || $(this).attr("class") == "checkbox-wrapper"
				|| $(this).attr("class") == "status" || $(this).attr("class") == "useYn" || $(this).attr("class") == "memberNm" 
				|| $(this).attr("class") == "memberDprtmt" || $(this).attr("class") == "memberPosition") {
			
			return;
		}
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		
		if(statusCell.data("status") == "C" || statusCell.data("status") == "D") {
			console.log(statusCell.data);
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
	
// 	//사원등록 취소버튼 이벤트 바인딩
// 	$("#memberCancel").on("click", function() {
		
// 		selectMemberList();
// 	});
	
	//권한 취소버튼 이벤트 바인딩
	$("#authCancel").on("click", function() {
		showSearchList("", "ALL");
		
	});
	
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
				
			});
			
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
			});
			
			
		} else {
			
			$(statusTd).each(function() {
				
				$(this).data("status", "R");
				$(this).html("");
				$(this).parents("tr").find(".delChk").prop("checked",false);
				
			});
			
		}
		
	})
	
	//권한 리스트 표시 함수
	function showAuthorityList(data) {
		
		var authorityGroupList = data.authorityGroupList;
		
		var body = $("#auth_table tbody");
		body.empty();
		
		if(authorityGroupList.length > 0) {
			
			$.each(authorityGroupList, function(index, value) {
				
				str = "<tr class='list-row'>"
				+	"<td class='status' data-status='R'> </td>"
				+	"<td class='checkbox-wrapper'>"
				+	"<input type='checkbox' class='table-checkbox checkbox-item delChk'/>"
				+	"</td>"
				+	"<td class='authCd'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.authCd + "'>" + value.authCd + "</p>"
				+	"</td>"
				+	"<td class='authNm'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.authNm + "'>" + value.authNm +"</p>"
				+	"</td>"
				+	"<td class='useYn'>"
					if(value.useYn == 'Y') {
						str += "<input type='checkbox' checked='checked' data-isuse='Y' class='isUse' data-default='" + value.useYn + "'>";
					} else {
						str += "<input type='checkbox' data-isuse='N' class='isUse' data-default='" + value.useYn + "'>";
					}
			str += "</td>"
				+	"<td class='note'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.note + "'>" + value.note + "</p>"
				+	"</td>"
				+"</tr>"
				
			body.append(str);
			}); //소스에 맞는 태그로 변경(실제 데이터 목록)
			
		} else {
			body.append("<tr>" + "<td colspan='7'>조회 결과가 없습니다</td>" + "</tr>");
			
		}
	}
	
	//사원 리스트 표시 함수
	function showMemberList(data) {
		
		var table = document.getElementById("member_table").getElementsByTagName('tbody')[0];
		
		$("#member_table tbody").empty();
		
		if(data.memberList.length <= 0) {

			var row = table.insertRow();
			var cell1 = row.insertCell(0);
			
			cell1.innerHTML = "조회결과가 없습니다.";
		    cell1.setAttribute('colspan', '10');
			return;
		}
		
		for(var i = 0; i<data.memberList.length; i++) {
			
		    var row = table.insertRow();
		    var cell1 = row.insertCell(0);
		    var cell2 = row.insertCell(1);
		    var cell3 = row.insertCell(2);
		    var cell4 = row.insertCell(3);
// 		    var cell5 = row.insertCell(4);
// 		    var cell6 = row.insertCell(5);
		   
// 		    cell1.innerHTML = "";
// 		    cell1.setAttribute('class', 'status');
// 		    cell1.setAttribute('data-status', 'R');
		    
// 		    cell2.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item delChk'/>"
// 		    cell2.setAttribute('class', 'checkbox-wrapper');
		    
		    cell1.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.memberList[i].memberSq + "'>" + data.memberList[i].memberSq + "</p>";
		    cell1.setAttribute('class', 'memberSq');
		    
		    cell2.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.memberList[i].memberNm + "'>" + data.memberList[i].memberNm + "</p>";
		    cell2.setAttribute('class', 'memberNm');
		    
		    cell3.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.memberList[i].memberDprtmt + "'>" + data.memberList[i].memberDprtmt + "</p>";
		    cell3.setAttribute('class', 'memberDprtmt');
		    
		    cell4.innerHTML = "<p class='rowColumn' contenteditable='false' data-default='" + data.memberList[i].memberPosition + "'>" + data.memberList[i].memberPosition + "</p>";
		    cell4.setAttribute('class', 'memberPosition');
		    
		}
		
	}
	
	function showSearchList(_keyWord, _isUse) {
		
		var searchData = {
				
			keyWord : _keyWord,
			useYn : _isUse
					
		};
		
		$.ajax({
			url : '/authority/searchAuthority.do',
	        type: 'POST',
	        data: JSON.stringify(searchData),
	        dataType:'json',
	        contentType:"application/json;charset=UTF-8",
	        success: function(data) {
				
	        	showAuthorityList(data);
	            
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        }
		});
	}
	
	//권한 클릭시 사원 목록 조회
	function selectMemberList(_memberSq) { //memberSq
		
		var searchData = {
			
			authCd : nowAuthCd,
			memberSq : _memberSq 
				
		};
		
		$.ajax({
			url : '/authority/selectMember.do',
	        type: 'POST',
	        data: JSON.stringify(searchData),
	        dataType:'json',
	        contentType:"application/json;charset=UTF-8",
	        success: function(data) {
				
	        	showMemberList(data);
	            
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        }
		});
	}
	
	//권한 저장함수
	function authSave() {
		var authList = [];
// 		var memberList = [];
		
		$("#auth_table tbody .status").each(function(i) {
			
			if($(this).data('status') != 'R') {
				
				var data = {
						
					authStatus : $(this).data('status'),
					authCd : $(this).parents('tr').find("td.authCd").text().trim(),
					authNm : $(this).parents('tr').find("td.authNm").text().trim(),
					useYn : $(this).parents('tr').find("input.isUse").data("isuse"),
					note : $(this).parents('tr').find("td.note").text().trim()
				
				};
				
				authList.push(data);
				
			}
			
		});
		
		var authData = JSON.stringify(authList);
		
		$.ajax({
			url : '/authority/cudAuthority.do',
	        type: 'POST',
	        data: {"authData" : authData},
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
	
// 	//사원 저장함수
// 	function memberSave() {
		
// 		var memberList = [];
// // 		var authList = [];
		
// 		$("#member_table tbody .status").each(function(i) {
			
// 			if($(this).data('status') != 'R') {
				
// 				var data = {
						
// 					memberStatus : $(this).data('status').trim(),
// 					authCd : nowAuthCd,
// 					memberSq : $(this).parents('tr').find("td.memberSq").text().trim(),
// 					memberNm : $(this).parents('tr').find("td.memberNm").text().trim(),
// 					memberDprtmt : $(this).parents('tr').find("td.memberDprtmt").text().trim(),
// 					memberPosition : $(this).parents('tr').find("td.memberPosition").text().trim(),
				
// 				};
				
// 				memberList.push(data);
// 			}
			
// 		});
		
// 		var memberData = JSON.stringify(memberList);
		
// 		$.ajax({
// 			url : '/authority/cudMember.do',
// 	        type: 'POST',
// 	        data: {"memberData" : memberData},
// 	        dataType:'json',
// 	        success: function(data) {
// 	        	alert("저장되었습니다.");
// 	        },
// 	        error: function(x, e) {
// 	            //err msg 출력
// 	            $.failMsg('error');
// 	        },
// 	        complete: function() {
// 	        	selectMemberList();
// 			}
// 		});
// 	}
	
	
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