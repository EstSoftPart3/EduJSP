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
							<h1 class="m-0 text-dark">장비 관리 게시판</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<a href='<c:url value="/equipment/openEquipmentInsertPage.do" />' class="btn btn-primary float-right">장비 등록</a>
							<button  id="eqpmntdeleteall" class="btn btn-primary float-right" style="margin-right: 10px;" onclick="eqpmntdeleteall();">삭제</button>
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
								<h3 class="card-title">EST 장비 목록</h3>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								<!-- 체크박스 메뉴 -->
										<input type="checkbox" name="select_Tcd" id="select_Tcd" value="노트북" checked>&nbsp;노트북&emsp;
										<input type="checkbox" name="select_Tcd" id="select_Tcd" value="데스크탑" checked>&nbsp;데스크탑&emsp;
										<input type="checkbox" name="select_Tcd" id="select_Tcd" value="모니터" checked>&nbsp;모니터&emsp;
										<input type="checkbox" name="select_Tcd" id="select_Tcd" value="기타" checked>&nbsp;기타&emsp;
								<div class="card-tools">
									<div class="input-group input-group-sm" style="width: 400px;">
										<!-- 상태별 리스트 -->
										<select class="form-control" id="select_position">
											<option value="all">전체</option>
											<option value="정상">정상</option>
											<option value="고장">고장</option>
											<option value="수리중">수리중</option>
										</select>
										
										<!-- 검색 조건 유지 -->
										<select class="form-control" name="condition" id="select_cond">
											<option value="all">전체</option>
											<option value="eqpmntBrand" <c:if test="${condition eq 'eqpmntBrand' }">selected</c:if>>브랜드명</option>
											<option value="eqpmntModel" <c:if test="${condition eq 'eqpmntModel' }">selected</c:if>>모델명</option>
											<option value="eqpmntSerial" <c:if test="${condition eq 'eqpmntSerial' }">selected</c:if>>시리얼넘버</option>
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
												<th class="checkbox-wrapper"><input type="checkbox" name='select' id="allCheckbox" class="table-checkbox" onclick='selectAll(this)'></th>
												<th>SQ</th>
												<th>장비 관리번호</th>
												<th>장비 브랜드</th>
												<th>장비 모델명</th>
												<th>장비 시리얼넘버</th>
												<th>장비 상태</th>
												<th>장비 정보</th>
												<th>장비 구분</th>
												<th>대여 상태</th>
												<th>수정</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(equipmentList) == 0 }">
													<tr>
														<td colspan="10">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="eqpmnt" items="${ equipmentList }">
														<tr class="list-row">
															<td class="checkbox-wrapper">
																<input type="checkbox" name='select' id="checkbox" class="table-checkbox checkbox-item" value='<c:out value="${ eqpmnt.eqpmntSq }" />' />
															</td>
															<td class="eqpmntSq">
																<c:out value="${ eqpmnt.eqpmntSq }" />
															</td>
																<td><c:out value="${ eqpmnt.eqpmntMngNum }" /></td>
															<td><c:out value="${ eqpmnt.eqpmntBrand }" /></td>
															<td><c:out value="${ eqpmnt.eqpmntModel }" /></td>
															<td><c:out value="${ eqpmnt.eqpmntSerial }" /></td>
															<td>
																<c:out value="${ eqpmnt.eqpmntStsTcd }" />
															</td>
															<td><c:out value="${ eqpmnt.eqpmntInfo }" /></td>
															<td>
																<c:out value="${ eqpmnt.eqpmntTcd }" />
															</td>
															<td>
																<c:out value="${ eqpmnt.eqpmntIsUse }" />
															</td>
															<td><a href='<c:url value='/equipment/openEquipmentUpdatePage.do?update=${ eqpmnt.eqpmntSq }' />' class='btn btn-primary float-center'>수정</a></td>
														 <td class='delete-btn'><button class="btn btn-primary float-center" onclick="deletebutton('+${eqpmnt.eqpmntSq}+')">삭제</button></td> 
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
	//리스트 콜 함수
	function comAjaxCall(){
		var eqpmntPosition = $("#select_position").val();
		var condition = $("#select_cond").val();
		var search = $("#input_sch").val();
		
		var comAjax = new ComAjax();
		comAjax.setUrl("<c:url value='/equipment/selectEquipmentListPage.do' />");
		
		if (condition != "all") {
			comAjax.addParam(condition, search);
		}
		
		if (eqpmntPosition != "all") {
			comAjax.addParam("eqpmntStsTcd", eqpmntPosition);
		}
		
		comAjax.setCallback(fn_EqpmntCallBack);
		comAjax.ajax();
	}
	
	function element_isnull(obj) {
		return (!!obj) ? obj : '';
	}
	// 리스트 콜백 함수
	function fn_EqpmntCallBack(data) {
		var eqpmntList = data.equipmentList;
		var body = $("#member_table>tbody");
		body.empty();
		
		if(eqpmntList.length > 0) {
			
			eqpmntList.forEach(eqpmnt => {
	
				body.append(
						"<tr class='list-row'>" + 
							"<td class='checkbox-wrapper'>" +
								"<input type='checkbox' name='select' class='table-checkbox checkbox-item' value='"+ eqpmnt.eqpmntSq +"' />" +
							"</td>" +
							"<td class='eqpmntSq'>" + eqpmnt.eqpmntSq + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntMngNum) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntBrand) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntModel) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntSerial) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntStsTcd) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntInfo) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntTcd) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntIsUse) + "</td>" +
							"<td><a href='<c:url value='/equipment/openEquipmentUpdatePage.do?update=" + eqpmnt.eqpmntSq + "' />' class='btn btn-primary float-center'>수정</a></td>" +
							"<td class='delete-btn'><button class='btn btn-primary float-center' onclick='deletebutton("+ eqpmnt.eqpmntSq +")'>삭제</button></td>" +
						"</tr>" );
					
				 $(document).ready(function() {
					$(".checkbox-wrapper").on("click", function(e) {
						e.stopPropagation();
					});
					
					$(".delete-btn").on("click", function(e) {
						e.stopPropagation();
					});
				})
				});
		
		} else {
			body.append("<tr>" + "<td colspan='10'>조회 결과가 없습니다</td>" + "</tr>"); 
			
		}
	} 
	
		//삭제 콜백함수
		function fn_deleteEquipmentCallBack(data){
			var code = data.code;
			
			if(code > 0){
				alert("삭제되었습니다.");
				var comAjax = new ComAjax();
				comAjax.setCallback(comAjaxCall);
				comAjax.ajax();
			}else{
				alert("장비삭제 실패하셨습니다.");
			}
		
			
		}
		
		
		
		
		//전체선택함수
		function selectAll(selectAll)  {
	 		 const checkboxes 
	     	  = document.getElementsByName('select');
	  
	 	 checkboxes.forEach((checkbox) => {
	     checkbox.checked = selectAll.checked;
		 })
		} 
		//개별삭제 버튼
		
		function deletebutton(sq) {
			if(confirm("삭제하시겠습니까?") == true){
			var comAjax = new ComAjax();
			comAjax.setUrl("<c:url value='/equipment/deleteEquipment.do' />"); //프로그램 URI
			comAjax.addParam("delete", sq);
			comAjax.setCallback(fn_deleteEquipmentCallBack);//콜백 선언
			comAjax.ajax();
			}else{
				return false;
			}
		}
		
		//전체삭제버튼
		function eqpmntdeleteall(){
		var eqpmntSqArr = new Array();
		var list =$("input[name='select']");
		
		
		
		for(var i =1; i<list.length; i++){
			if(list[i].checked){
				
				var obj = new Object();
				obj.eqpmntSq = parseInt(list[i].value);
				eqpmntSqArr.push(obj);
				//eqpmntSqArr.push(parseInt(list[i].value));
				
			}
		}	
		
		
		if(eqpmntSqArr.length == 0){
			alert("삭제할 장비를 선택하세요.");
		}else{
			
			$.ajax({
				url : "<c:url value='/equipment/deleteEquipmentAll.do' />",    
				type : "POST",
				data : JSON.stringify(eqpmntSqArr),
		        dataType : "json",
		        contentType : "application/json; charset=UTF-8",
				beforeSend : function() {
					console.log("[ajax.beforeSend]");
				},
				success : function(data) {
					console.log("[ajax.success]");
					console.log(data);
					fn_deleteEquipmentCallBack(data);
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
		
		}
		
		$(document).ready(function() {
			
			 
			
			// 검색 버튼 클릭 이벤트 바인딩
			  $("#button_sch").on("click", function() {
				var mbrPosition = $("#select_position").val();
				var condition = $("#select_cond").val();
				var search = $("#input_sch").val();
				var TcdArr = new Array();
				var list =$("input[name='select_Tcd']");
				
				for(var i =0; i<list.length; i++){
					if(list[i].checked){
						
						
						 var eqpmntTcd;
						eqpmntTcd= list[i].value;
						TcdArr.push(eqpmntTcd); 
						
					}
				}

				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/equipment/selectEquipmentListPage.do' />");
				
				if (condition != "all") {
					comAjax.addParam(condition, search);
				}
				
				if (mbrPosition != "all") {
					comAjax.addParam("eqpmntStsTcd", mbrPosition);
				}
				comAjax.addParam("eqpmntTcdArr",TcdArr);
				
				
				comAjax.setCallback(fn_EqpmntCallBack);//콜백 선언
				comAjax.ajax();
			});  
			
			//검색 이벤트
			$("button_sch, #select_position,#select_Tcd").on("click",function(){
				var eqpmntStsPosition = $("#select_position").val();
				var condition = $("#select_cond").val();
				var search = $("#input_sch").val();
				var TcdArr = new Array();
				var list =$("input[name='select_Tcd']");
				
				
				
				for(var i =0; i<list.length; i++){
					if(list[i].checked){
						
						 var eqpmntTcd;
						eqpmntTcd= list[i].value;
						TcdArr.push(eqpmntTcd); 
						
					}
				}
				
				for(var j=0; j<TcdArr.length; j++){
					console.log(TcdArr[j]);
				}
				
				 var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='selectEquipmentListPage.do' />");
				
				if(eqpmntStsPosition != "all"){
					comAjax.addParam("eqpmntStsTcd",eqpmntStsPosition);
					
				}
				if(condition != "all"){
					comAjax.addParam(condition,search);
				}
				comAjax.addParam("eqpmntTcdArr",TcdArr);
				
				comAjax.setCallback(fn_EqpmntCallBack);
				comAjax.ajax(); 
			});
			
			
			// 검색 입력창 엔터키 이벤트 바인딩
			$("#input_sch").on("keyup", function(e) {
				if (e.keyCode === 13)
					$("#button_sch").click();
			});
			
			// checkbox 클릭시 list-row(세부정보 조회) 클릭 이벤트 방지
			$(".checkbox-wrapper").on("click", function(e) {
				e.stopPropagation();
			});
			
		
		//체크박스 검색 이벤트
		$("input[name='select_Tcd']").on("change" , function(e){
			var eqpmntStsPosition = $("#select_position").val();
			var condition = $("#select_cond").val();
			var search = $("#input_sch").val();
			var TcdArr = new Array();
			var list =$("input[name='select_Tcd']");
			
			
			//체크된값 가져오기
			for(var i =0; i<list.length; i++){
				if(list[i].checked){
					
					//값들 가져와서 배열에 넣기
					 var eqpmntTcd;
					eqpmntTcd= list[i].value;
					TcdArr.push(eqpmntTcd); 
					
				}
			}
			
			for(var j=0; j<TcdArr.length; j++){
				console.log(TcdArr[j]);
			}
			
			 var comAjax = new ComAjax();
			comAjax.setUrl("<c:url value='selectEquipmentListPage.do' />");
			
			if(eqpmntStsPosition != "all"){
				comAjax.addParam("eqpmntStsTcd",eqpmntStsPosition);
				
			}
			if(condition != "all"){
				comAjax.addParam(condition,search);
			}
			comAjax.addParam("eqpmntTcdArr",TcdArr);
			
			comAjax.setCallback(fn_EqpmntCallBack);
			comAjax.ajax(); 
		});
			
		});
	</script>
</body>
</html>