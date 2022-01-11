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

#groupCode_table td{
	height: 30px;
}

table .status{
	width: 5%;
	text-align: center;
}

#groupCode_table .checkbox-wrapper{
	width: 5%;
}

#groupCode_table .grpCd{
	width: 8%;
}

#groupCode_table .grpNm{
	width: 10%;
}

#groupCode_table .grpSortOrder{
	width: 5%;
	text-align: center;
}

#groupCode_table .grpIsUse{
	width: 5%;
	text-align: center;
	vertical-align: middle;
}

#groupCode_table .grpNote{
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
							<h1 class="m-0 text-dark">코드 관리</h1>
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
						<div class="card" style="height: 800px; overflow: auto;">
							<div class="card-header row">
								
								<div class="card-tools">
									<div class="input-group input-group-sm" style="width: 550px;">
										<!-- 회사 리스트 -->
										<select class="form-control" >
											<option value="all">전체</option>
											
											<option value="A">A</option>
											<option value="B">B</option>
											<option value="C">C</option>
											
										</select>
										
										<!-- 그룹 코드 리스트 -->
										<select class="form-control" id="select_department">
											<option value="all">전체</option>
											<option value="grpCd">그룹 코드</option>
											<option value="grpCdNm">그룹 코드명</option>
										</select>
										
										<input type="text" onkeyup="realTime($('#select_department option:selected').val() ,this.value)" 
										id="input_sch" name="search" class="form-control float-right" placeholder="Search">
										
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
								<div class="row">
									
									<div class="col-sm-12 float-right">
										<input type="radio" id="radioAll" class="grpCdUseWhthrRadio" name="grpCdUseWhthrRadio" value="ALL" checked="checked"> 전체
										<input type="radio" class="grpCdUseWhthrRadio" name="grpCdUseWhthrRadio" value="Y"> 사용
										<input type="radio" class="grpCdUseWhthrRadio" name="grpCdUseWhthrRadio" value="N"> 미사용
									</div>
									
									<div class="col-sm-12 float-right">
										<input type="button" value="저장" id="groupCodeSave" class="btn btn-primary">
										<input type="button" value="추가" id="groupCodeInsert" class="btn btn-primary">
										<input type="button" value="처음으로" id="groupCodeCancel" class="btn btn-primary">
									</div>
									
								</div>
							</div>
							
							<div class="card-body" >
								<div style="height: 550px; overflow: auto;">
									
									<table id="groupCode_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class='grpCd'>그룹 코드</th>
												<th class='compnySq'>회사 순번</th>
												<th class='grpNm'>그룹 코드명</th>
												<th class='grpCdOrder'>순서</th>
												<th class='grpCdUseWhthr'>사용여부</th>
												<th class='grpCdEnrlmDt'>등록 일자</th>
												<th class='grpCdCrrctnDt'>수정 일자</th>
												<th class='grpCdCrrctnUsrSq'>수정 사용자 순번</th>
												<th class='grpCdNote'>비고</th>
												<th class="status">상태</th>
												<th class="checkbox-wrapper"><input type="checkbox" class="table-checkbox delChkAll"></th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(groupCodeList) == 0 }">
													<tr>
														<td colspan="8">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="code" items="${ groupCodeList }">
														
														<tr class="list-row">
															
															<td class='grpCd'>
																<p style="color:blue;" onclick="searchDetailCodeList('${ code.grpCd }', 'ALL')" class='rowColumn' data-toggle="modal" data-target="#modal-1" contenteditable='false' data-default='${ code.grpCd }'><c:out value="${ code.grpCd }" /></p>
															</td>
															
															<td class='compnySq'>
																<p class='rowColumn' contenteditable='false' data-default='${ code.compnySq }'><c:out value="${ code.compnySq }" /></p>
															</td>
															
															<td class='grpCdNm'>
																<p class='rowColumn' contenteditable='false' data-default='${ code.grpCdNm }'><c:out value="${ code.grpCdNm }" /></p>
															</td>
															<td class='grpCdOrder'>
																<p class='rowColumn' contenteditable='false' data-default='${ code.grpCdOrder }'><c:out value="${ code.grpCdOrder }" /></p>
															</td>
															<td class='grpCdUseWhthr'>
																<c:if test="${code.grpCdUseWhthr == 'Y' }">
																	<input type="checkbox" checked="checked" data-isuse="Y" class="isUse" data-default='${ code.grpCdUseWhthr }'>
																</c:if>
																<c:if test="${code.grpCdUseWhthr == 'N' }">
																	<input type="checkbox" data-isuse="N" class="isUse" data-default='${ code.grpCdUseWhthr }'>
																</c:if>
															</td>
															
															<td class='grpCdEnrlmDt'>
																<p class='rowColumn' contenteditable='false' data-default='${ code.grpCdEnrlmDt }'><c:out value="${ code.grpCdEnrlmDt }" /></p>
															</td>
															<td class='grpCdCrrctnDt'>
																<p class='rowColumn' contenteditable='false' data-default='${ code.grpCdCrrctnDt }'><c:out value="${ code.grpCdCrrctnDt }" /></p>
															</td>
															<td class='grpCdCrrctnUsrSq'>
																<p class='rowColumn' contenteditable='false' data-default='${ code.grpCdCrrctnUsrSq }'><c:out value="${ code.grpCdCrrctnUsrSq }" /></p>
															</td>
															
															<td class='grpCdNote'>
																<p class='rowColumn' contenteditable='false' data-default='${ code.grpCdNote }'><c:out value="${ code.grpCdNote }" /></p>
															</td>
															
															<td class="status" data-status="R">
															
															</td>
															<td class="checkbox-wrapper">
																<input type="checkbox" class="table-checkbox checkbox-item delChk"/>
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
	
	
	
	<!-- modal content -->
	<div class="modal fade" id="modal-1">
	  <div class="modal-dialog" style="max-width: 100%; width: auto; display: table;">
	    <div class="modal-content bg-secondary">
	      <div class="modal-header">
	        <h4 class="modal-title">상세 코드</h4>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span></button>
	      </div>
	      
	     <div class="row">
			<div class="col-sm-5 float-left">
				<input type="radio" id="radioAll" class="dtlCdUseWhthrRadio" name="dtlCdUseWhthrRadio" value="ALL" checked="checked"> 전체
				<input type="radio" class="dtlCdUseWhthrRadio" name="dtlCdUseWhthrRadio" value="Y"> 사용
				<input type="radio" class="dtlCdUseWhthrRadio" name="dtlCdUseWhthrRadio" value="N"> 미사용
			</div>
			<div class="col-sm-7 float-right">
				<input type="button" value="저장" id="detailCodeSave" class="btn btn-primary">
				<input type="button" value="추가" id="detailCodeInsert" class="btn btn-primary">
				<input type="button" value="처음으로" id="detailCodeCancel" class="btn btn-primary">
			</div>
		</div>
	      
	      <div class="modal-body">
	      
	        <div style="height: 400px; overflow: auto;">
				<table id="detailCode_table" class="table table-hover table-striped table-bordered text-nowrap">
					<thead>
						<tr>
						
							<th class='dtlCd'>상세 코드</th>
							<th class='compnySq'>회사 순번</th>
							<th class='dtlCdNm'>상세 코드명</th>
							<th class='dtlCdOrder'>순서</th>
							<th class='dtlCdUseWhthr'>사용여부</th>
							<th class='dtlCdEnrlmDt'>등록 일자</th>
							<th class='dtlCdCrrctnDt'>수정 일자</th>
							<th class='dtlCdCrrctnUsrSq'>수정 사용자 순번</th>
							<th class='dtlCdPrprtVal1'>속성/값</th>
							<th class='dtlCdPrprtVal2'>속성/값</th>
							<th class='dtlCdPrprtVal3'>속성/값</th>
							<th class='dtlCdNote'>비고</th>
							<th class="status">상태</th>
							<th class="checkbox-wrapper"><input type="checkbox" class="table-checkbox delChkAll"></th>
														
						</tr>
					</thead>
					<tbody>
	
					</tbody>
				</table>
			</div>
	
		</div>
	
		<!-- /.modal-footer -->
	
		</div>
		<!-- /.modal-content -->
		
		</div>
		<!-- /.modal-dialog -->
		
	</div>
	
	
	
	
	
<%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf"%>


<script>
	
	//<<<<<<<<<<<<<<<<<<아래 내용>>>>>>>>>>>>>>>>>>>그룹 코드 검색 관련
	
	//[[ 검색 버튼 ]] 이벤트 바인딩
	$("#button_sch").on("click", function() {
		
		//console.log("[[ Search Button Test ]]");
		var department = $("#select_department").val();
		var keyword = $("#input_sch").val().trim();
		
		$(":radio[name='grpCdUseWhthrRadio'][value='ALL']").prop('checked', true);
		
		showSearchList(department, keyword, "ALL");
		
	});
	
	
	//[[ 검색창 실시간 검색 ]] 이벤트 바인딩
	function realTime(department, keyword){
		//console.log("[[ realTime Test ]]" + department + ":" + keyword);
		var grpCdUseWhthr =  $("input[name='grpCdUseWhthrRadio']:checked").val();
		//console.log(grpCdUseWhthr);
		showSearchList(department, keyword, grpCdUseWhthr);
	}
	
	
	//[[ 그룹 코드 사용여부 라디오 버튼 클릭 ]] 이벤트 바인딩
	$(".grpCdUseWhthrRadio").on("click", function() {
		var department = $("#select_department").val().trim();
		var keyword = $("#input_sch").val().trim();
		//console.log("[[ grpCdUseWhthrRadio Test ]]" + department + ":" + keyword);
		
		var grpCdUseWhthr =  $("input[name='grpCdUseWhthrRadio']:checked").val();
		
		if( ( department == 'grpCd' || department == 'grpNm' ) && keyword != ''){
			//showSearchList(department, keyword, grpCdUseWhthr);
			realTime(department, keyword)
		}else{
			showSearchList("", "", grpCdUseWhthr);
		}
		
		
	});
	
	
	
															// ajax 포함								callback
	//<<<<<<<<<<<<<<<<<<아래 내용>>>>>>>>>>>>>>>>>>> showSearchList(department, keyWord, isUse), showGroupCodeList(data)
	
	function showSearchList(_department, _keyWord, _isUse) {
		
		var searchData = {
				
			department : _department,	
			keyWord : _keyWord,
			isUse : _isUse
					
		};
		
		//console.log(searchData);
		
		$.ajax({
			url : '/erp/system/code/searchGroupCodeList.do',
	        type: 'POST',
	        data: JSON.stringify(searchData),
	        dataType:'json',
	        contentType:"application/json;charset=UTF-8",
	        success: function(data) {
				
	        	showGroupCodeList(data);
	            
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        }
		});
	}
	
	
	function showGroupCodeList(data) {
		
		var codeGroupList = data.groupCodeList;
		var body = $("#groupCode_table tbody");
		body.empty();
		
		//console.log(codeGroupList);
		
		if(codeGroupList.length > 0) {
		
			codeGroupList.forEach(code => {
				var grpCdEnrlmDt = new Date(code.grpCdEnrlmDt);
				var grpCdCrrctnDt = new Date(code.grpCdCrrctnDt);
				
				var str = 
						 "<tr class='list-row'>"
						 
						 
						+	"<td class='grpCd'>"
						+ "<p style = \'color:blue\' onclick=\""+"searchDetailCodeList(\'"+code.grpCd+"\',\'ALL\')\" class=\'rowColumn\' data-toggle=\'modal\' data-target=\'#modal-1\' contenteditable=\'false\' data-default=\'"+code.grpCd+"\'>"+code.grpCd
						+ "</p>"
						/* +	"<p style='color:blue;' onclick=&#39;" + "test('"+code.grpCd+"', 'ALL')" + "&#39; class='rowColumn' data-toggle='modal' data-target='#modal-1' contenteditable='false' data-default='"+code.grpCd+"'>"+ code.grpCd +"</p>"	
						 */+	"</td>"
						
						+	"<td class='compnySq'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + code.compnySq + "'>" + code.compnySq + "</p>"
						+	"</td>"
						
						+	"<td class='grpCdNm'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + code.grpCdNm + "'>" + code.grpCdNm + "</p>"
						+	"</td>"
						
						+	"<td class='grpCdOrder'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + code.grpCdOrder + "'>" + code.grpCdOrder + "</p>"
						+	"</td>"
						
						+	"<td class='grpCdUseWhthr'>";
							if(code.grpCdUseWhthr == 'Y') {
								str += "<input type='checkbox' checked='checked' data-isuse='Y' class='isUse' data-default='" + code.grpCdUseWhthr + "'>";
							} else {
								str += "<input type='checkbox' data-isuse='N' class='isUse' data-default='" + code.grpCdUseWhthr + "'>";
							}
					str += "</td>"
					
						+	"<td class='grpCdEnrlmDt'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + dateFormat(grpCdEnrlmDt) + ".0'>" + dateFormat(grpCdEnrlmDt) + ".0</p>"
						+	"</td>"
					
						+	"<td class='grpCdCrrctnDt'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + dateFormat(grpCdCrrctnDt) + ".0'>" + dateFormat(grpCdCrrctnDt) + ".0</p>"
						+	"</td>"
						
						+	"<td class='grpCdCrrctnUsrSq'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + code.grpCdCrrctnUsrSq + "'>" + code.grpCdCrrctnUsrSq + "</p>"
						+	"</td>"
						
						+	"<td class='grpCdNote'>"
						+		"<p class='rowColumn' contenteditable='false' data-default='" + code.grpCdNote + "'>" + code.grpCdNote + "</p>"
						+	"</td>"
						
						+	"<td class='status' data-status='R'> </td>"
						
						+	"<td class='checkbox-wrapper'>"
						+	"<input type='checkbox' class='table-checkbox checkbox-item delChk'/>"
						+	"</td>"
						
						+"</tr>";
						
					body.append(str);
				});
		
		} else {
			body.append("<tr>" + "<td colspan='11'>조회 결과가 없습니다</td>" + "</tr>");
			
		}
	}
	
	
	//[[ Date Format ]] 날짜 형식 변환 함수  << 그룹 코드, 상세 코드 공통 사용 >>
	function dateFormat(date) {
        let month = date.getMonth() + 1;
        let day = date.getDate();
        let hour = date.getHours();
        let minute = date.getMinutes();
        let second = date.getSeconds();

        month = month >= 10 ? month : '0' + month;
        day = day >= 10 ? day : '0' + day;
        hour = hour >= 10 ? hour : '0' + hour;
        minute = minute >= 10 ? minute : '0' + minute;
        second = second >= 10 ? second : '0' + second;

        return date.getFullYear() + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;
	}
	


	//[[ 그룹 코드 C, U, D 저장 버튼 ]] 이벤트 바인딩
	$("#groupCodeSave").on("click", function() {
		
		groupCodeSave();
	});
	
	function groupCodeSave() {
		var groupCodeList = [];
		var grpData;
		var undefined;
		
		$("#groupCode_table tbody .status").each(function(i) {
			
			if($(this).data('status') != 'R') {
				
				grpData = {
						
						grpCd : $(this).parents('tr').find("td.grpCd").text().trim(),
						compnySq : $(this).parents('tr').find("td.compnySq").text().trim(),
						grpCdNm : $(this).parents('tr').find("td.grpCdNm").text().trim(),
						grpCdOrder : $(this).parents('tr').find("td.grpCdOrder").text().trim(),
						grpCdUseWhthr : $(this).parents('tr').find("input.isUse").data("isuse"),
						
						grpCdCrrctnUsrSq : $(this).parents('tr').find("td.grpCdCrrctnUsrSq").text().trim(),
						grpCdNote : $(this).parents('tr').find("td.grpCdNote").text().trim(),
						
						grpStatus : $(this).data('status')
					
					};
				
				groupCodeList.push(grpData);
				//console.log("[[ groupCodeSave Test ]]" + grpData.grpCd);
				
			}
		});
		console.log(grpData);
		
		if(grpData==undefined){
			showSearchList("", "", "ALL");
			return;
		}
		
		if(grpData.grpCd == '' || grpData.compnySq == '' || grpData.grpCdNm == '' 
				|| grpData.grpCdOrder == '' || grpData.grpCdCrrctnUsrSq =='' ){
			
			alert('그룹 코드, 회사 순번, 그룹 코드명, 순서, 수정 사용자 순번은 필수 입력 사항입니다.');
			showSearchList("", "", "ALL");
			return;
		}
		
		var state = true;
		//console.log("[[ groupCodeSave Test ]]" + isNaN(grpData.compnySq));
		if( isNaN(grpData.compnySq) == state 
				|| isNaN(grpData.grpCdOrder) == state 
				|| isNaN(grpData.grpCdCrrctnUsrSq) == state ){
			
			alert('회사 순번, 순서, 수정 사용자 순번은 숫자로만 입력 가능합니다.');
			showSearchList("", "", "ALL");
			return;
		}
		
		var groupCodeData = JSON.stringify(groupCodeList);
		
		$.ajax({
			url : '/erp/system/code/cudCodeGrp.do',
	        type: 'POST',
	        data: {"groupCodeData" : groupCodeData},
	        dataType:'json',
	        success: function(data) {
	        	//alert(data.cudResult);
	        	
	        	if(data.cudResult == 0){
	        		alert("같은 그룹코드 명이 존재합니다.");
	        	}else{
	        		alert("저장되었습니다.");
	        	}
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        },
	        complete: function() {
	        	
	        	showSearchList("", "", "ALL");
	        	
			}
		});
	}
	
	//[[ 그룹 코드 추가 버튼 ]] 이벤트 바인딩
	$("#groupCodeInsert").on("click", function() {
		
		var table = document.getElementById("groupCode_table");
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
	    var cell11 = row.insertCell(10);
	    
	    row.className = "list-row";
	    
	    cell1.innerHTML = "<p class='rowColumn' contenteditable='true' ></p>";
	    cell1.setAttribute('class', 'grpCd');
	    
	    cell2.innerHTML = "<p class='rowColumn' contenteditable='true' ></p>";
	    cell2.setAttribute('class', 'compnySq');
	    
	    cell3.innerHTML = "<p class='rowColumn' contenteditable='true' ></p>";
	    cell3.setAttribute('class', 'grpCdNm');
	    
	    cell4.innerHTML = "<p class='rowColumn' contenteditable='true' ></p>";
	    cell4.setAttribute('class', 'grpCdOrder');
	    
	    cell5.innerHTML = "<input type='checkBox' checked data-isuse='Y' class='isUse' data-default='Y'/>";
	    cell5.setAttribute('class', 'grpCdUseWhthr');
	    
	    cell6.innerHTML = "<p class='rowColumn' contenteditable='false' value='default'>자동 등록</p>";
	    cell6.setAttribute('class', 'grpCdEnrlmDt');
	    
	    cell7.innerHTML = "<p class='rowColumn' contenteditable='false' value='sysdate()'>자동 등록</p>";
	    cell7.setAttribute('class', 'grpCdCrrctnDt');
	    
	    cell8.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell8.setAttribute('class', 'grpCdCrrctnUsrSq');
	    
	    cell9.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
	    cell9.setAttribute('class', 'grpCdNote');
	    
	    cell10.innerHTML = "추가";
	    cell10.setAttribute('class', 'status');
	    cell10.setAttribute('data-status', 'C');
	    
	    cell11.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item'/>"
	    cell11.setAttribute('class', 'checkbox-wrapper');
		
	});
	
	//[[ 그룹 코드 취소 버튼 ]] 이벤트 바인딩
	$("#groupCodeCancel").on("click", function() {
		
		$("input:radio[id='radioAll']").prop("checked", true);
		showSearchList("" ,"", "ALL");
		
	});
	
	//[[ 컬럼 더블클릭 시 수정 활성화 ]] 이벤트 바인딩
	$("#groupCode_table").on("dblclick", "td", function() {
		
		//console.log($(this).attr("class"));
		
		if($(this).attr("class") == "grpCd" 
				|| $(this).attr("class") == "grpCdEnrlmDt"
				|| $(this).attr("class") == "grpCdCrrctnDt" 
				|| $(this).attr("class") == "status"
				|| $(this).attr("class") == "checkbox-wrapper" ) {
			
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
	
	
	//[[ 사용여부 체크박스 ]] 이벤트 바인딩
	$("#groupCode_table").on("click", ".isUse", function() {
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		//console.log(statusCell.html());
		if(statusCell.html() == '추가'){
			
			statusCell.data("status", "C");
			
			if($(this).is(":checked")) {
				
				$(this).data("isuse", "Y");
				
			} else {
				
				$(this).data("isuse", "N");
			}
			
			checkChangeCell(this);
			
		} else {
		
		statusCell.html("수정");
		
		statusCell.data("status", "U");
		
		if($(this).is(":checked")) {
			
			$(this).data("isuse", "Y");
			
		} else {
			
			$(this).data("isuse", "N");
		}
		
		checkChangeCell(this);
		
		}
		
	});
	
	
	//[[ C, U, D 상태 체크 focusout ]] 이벤트 바인딩 << 그룹 코드, 상세 코드 공통 사용 >>
	$("table p").on("focusout", function() {
		
		if($(this).parents("tr").find(".status").data("status") == "U") {
			
			checkChangeCell($(this));
		}
	});
	
	
	//[[ C, U, D 상태 체크 focusout ]] 이벤트 바인딩 << 그룹 코드, 상세 코드 공통 사용 >>
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
	
	//[[ 삭제 체크박스 클릭시 ]] 이벤트 바인딩 << 그룹 코드, 상세 코드 공통 사용 >>
	$("table").on("click", ".delChk", function() {
		
		//console.log("[[ TEST ]]");
		
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
	
	//[[ 전체 삭제 체크박스 클릭시 ]] 이벤트 바인딩 << 그룹 코드, 상세 코드 공통 사용 >>
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
		
	});
	
	
	
	//<<<<<<<<<<<<<<<<<<아래 내용>>>>>>>>>>>>>>>>>>>상세 코드 검색 관련
	
	function searchDetailCodeList(_grpCd, _isUse){
		//console.log(grpCd);
		
		var searchData = {
				grpCd : _grpCd,
				isUse : _isUse
		};
		
		console.log(searchData);
		
		$.ajax({
			url : '/erp/system/code/searchDetailCodeList.do',
			type : 'POST',
			data : JSON.stringify(searchData),
			dataType : 'json',
			contentType : "application/json;charset=UTF-8",
			success : function(data){
				
				//console.log(searchData);
				showDetailCodeList(data);
				
			},
			error : function(x, e){
				//err msg 출력
	            //$.failMsg('[[ searchDetailCodeList error ]]');
			}
		});
		
	}
	
	function showDetailCodeList(data){
		//console.log("[[ showDetailCodeList TEST ]]");
		var detailCodeList = data.detailCodeList;
		var body = $("#detailCode_table > tbody");
		body.empty();
		
		//console.log(detailCodeList.length);
		
		if(detailCodeList.length == 0){
			//console.log("[[ showDetailCodeList Test ]]"+data.grpCd);
			body.append(
					"<tr class='list-row'>"
					/* data.grpCd는 상세코드가 비어있을 때 추가하기 위해 필요하다 */
					+"<input class='hiddenGrpCd' type='hidden' value='"+data.grpCd+"' >"
					+"<td colspan='14'>조회 결과가 없습니다</td>"
					+"</tr>"
					);
			
		}else if(detailCodeList.length > 0) {
			detailCodeList.forEach(detailCodeList => {
				
				var dtlCdEnrlmDt = new Date(detailCodeList.dtlCdEnrlmDt);
				var dtlCdCrrctnDt = new Date(detailCodeList.dtlCdCrrctnDt);
				
				var str =
					"<tr class='list-row'>"
					
						+ "<input class='hiddenGrpCd' type='hidden' value='"+detailCodeList.grpCd+"' >"
						
						+ "<td class='dtlCd'><p class='rowColumn' data-default='" + detailCodeList.dtlCd + "'>" + detailCodeList.dtlCd + "</p></td>" 
						+ "<td class='compnySq' contenteditable='false' ><p class='rowColumn' data-default='" + detailCodeList.compnySq + "'>" + detailCodeList.compnySq + "</p></td>" 
						+ "<td class='dtlCdNm' contenteditable='false' ><p class='rowColumn' data-default='" + detailCodeList.dtlCdNm + "'>" + detailCodeList.dtlCdNm + "</p></td>" 
						+ "<td class='dtlCdOrder' contenteditable='false' ><p class='rowColumn' data-default='" + detailCodeList.dtlCdOrder + "'>" + detailCodeList.dtlCdOrder + "</p></td>" 
						
						+	"<td class='grpCdUseWhthr'>";
						
						if(detailCodeList.dtlCdUseWhthr == 'Y') {
							str += "<input type='checkbox' checked='checked' data-isuse='Y' class='isUse' data-default='" + detailCodeList.dtlCdUseWhthr + "'>";
						} else {
							str += "<input type='checkbox' data-isuse='N' class='isUse' data-default='" + detailCodeList.dtlCdUseWhthr + "'>";
						}
						
					str += "</td>"
						
						+ "<td class='dtlCdEnrlmDt'><p class='rowColumn' data-default='" + dateFormat(dtlCdEnrlmDt) + ".0'>" + dateFormat(dtlCdEnrlmDt) + ".0</p></td>" 
						+ "<td class='dtlCdCrrctnDt'><p class='rowColumn' data-default='" + dateFormat(dtlCdCrrctnDt) + ".0'>" + dateFormat(dtlCdCrrctnDt) + ".0</p></td>" 
						+ "<td class='dtlCdCrrctnUsrSq'><p class='rowColumn' data-default='" + detailCodeList.dtlCdCrrctnUsrSq + "'>" + detailCodeList.dtlCdCrrctnUsrSq + "</p></td>" 
						+ "<td class='dtlCdPrprtVal1' contenteditable='false' ><p class='rowColumn' data-default='" + detailCodeList.dtlCdPrprtVal1 + "'>" + detailCodeList.dtlCdPrprtVal1 + "</p></td>" 
						+ "<td class='dtlCdPrprtVal2' contenteditable='false' ><p class='rowColumn' data-default='" + detailCodeList.dtlCdPrprtVal2 + "'>" + detailCodeList.dtlCdPrprtVal2 + "</p></td>" 
						+ "<td class='dtlCdPrprtVal3' contenteditable='false' ><p class='rowColumn' data-default='" + detailCodeList.dtlCdPrprtVal3 + "'>" + detailCodeList.dtlCdPrprtVal3 + "</p></td>" 
						+ "<td class='dtlCdNote' contenteditable='false' ><p class='rowColumn' data-default='" + detailCodeList.dtlCdNote + "'>" + detailCodeList.dtlCdNote + "</p></td>" 
						
						+	"<td class='status' data-status='R'> </td>"
						
						+	"<td class='checkbox-wrapper'>"
						+	"<input type='checkbox' class='table-checkbox checkbox-item delChk'/>"
						+	"</td>"
						
					+ "</tr>";
					
					body.append(str);
			});
		}
	}
	

	//[[ 상세 코드 사용여부 라디오 버튼 클릭 ]] 이벤트 바인딩
	$(".dtlCdUseWhthrRadio").on("click", function() {
		
		//alert("[[ dtlCdUseWhthrRadio ]]");
		
		var hiddenGrpCd = $(".hiddenGrpCd").val();
		var dtlCdUseWhthr = $("input[name='dtlCdUseWhthrRadio']:checked").val();
		
		//console.log("[[ hiddenGrpCd Test ]]" + hiddenGrpCd);
		
		searchDetailCodeList(hiddenGrpCd, dtlCdUseWhthr);
	});
	
	
	//[[ 상세 코드 추가 버튼 ]] 이벤트 바인딩
	$("#detailCodeInsert").on("click", function() {
	
	var table = document.getElementById("detailCode_table");
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
    var cell11 = row.insertCell(10);
    var cell12 = row.insertCell(11);
    var cell13 = row.insertCell(12);
    var cell14 = row.insertCell(13);
    
    row.className = "list-row";
    
    cell1.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell1.setAttribute('class', 'dtlCd');
    
    cell2.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell2.setAttribute('class', 'compnySq');
    
    cell3.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell3.setAttribute('class', 'dtlCdNm');
    
    cell4.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell4.setAttribute('class', 'dtlCdOrder');
    
    cell5.innerHTML = "<input type='checkBox' checked data-isuse='Y' class='isUse' data-default='Y'/>";
    cell5.setAttribute('class', 'dtlCdUseWhthr');
    
    cell6.innerHTML = "<p class='rowColumn' contenteditable='false' value='default'>자동 등록</p>";
    cell6.setAttribute('class', 'dtlCdEnrlmDt');
    
    cell7.innerHTML = "<p class='rowColumn' contenteditable='false' value='sysdate()'>자동 등록</p>";
    cell7.setAttribute('class', 'dtlCdCrrctnDt');
    
    cell8.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell8.setAttribute('class', 'dtlCdCrrctnUsrSq');
    
    
    cell9.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell9.setAttribute('class', 'dtlCdPrprtVal1');
    cell10.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell10.setAttribute('class', 'dtlCdPrprtVal2');
    cell11.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell11.setAttribute('class', 'dtlCdPrprtVal3');
    
    
    cell12.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell12.setAttribute('class', 'dtlCdNote');
    
    cell13.innerHTML = "추가";
    cell13.setAttribute('class', 'status');
    cell13.setAttribute('data-status', 'C');
    
    cell14.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item'/>"
    cell14.setAttribute('class', 'checkbox-wrapper');
	
});
	
	
	//[[ 상세 코드 저장 버튼 ]] 이벤트 바인딩
	$("#detailCodeSave").on("click", function() {
		//alert($(".hiddenGrpCd").val());
		detailCodeSave();
	});
	
	function detailCodeSave() {
		
		//console.log('[[ detailCodeSave ]]'+$(".hiddenGrpCd").val());
		var detailCodeList = [];
		var dtlData;
		var undefined;
		
		$("#detailCode_table tbody .status").each(function(i) {
			
			if($(this).data('status') != 'R') {
				
				dtlData = {
					
					grpCd : $(".hiddenGrpCd").val(),

					dtlCd : $(this).parents('tr').find("td.dtlCd").text().trim(),
					compnySq : $(this).parents('tr').find("td.compnySq").text().trim(),
					dtlCdNm : $(this).parents('tr').find("td.dtlCdNm").text().trim(),
					dtlCdOrder : $(this).parents('tr').find("td.dtlCdOrder").text().trim(),
					dtlCdUseWhthr : $(this).parents('tr').find("input.isUse").data("isuse"),
					dtlCdCrrctnUsrSq : $(this).parents('tr').find("td.dtlCdCrrctnUsrSq").text().trim(),
					dtlCdPrprtVal1 : $(this).parents('tr').find("td.dtlCdPrprtVal1").text().trim(),
					dtlCdPrprtVal2 : $(this).parents('tr').find("td.dtlCdPrprtVal2").text().trim(),
					dtlCdPrprtVal3 : $(this).parents('tr').find("td.dtlCdPrprtVal3").text().trim(),
					dtlCdNote : $(this).parents('tr').find("td.dtlCdNote").text().trim(),
					
					dtlStatus : $(this).data('status')
					
				};
				
				detailCodeList.push(dtlData);
			}
		});
		//console.log("[[ Save Test dtlData ]]" + dtlData.dtlStatus);
		
		if(dtlData==undefined){
			searchDetailCodeList($(".hiddenGrpCd").val(), "ALL");
			return;
		}
		
		if(dtlData.grpCd == '' || dtlData.dtlCd == '' || dtlData.compnySq == '' || dtlData.dtlCdNm == '' 
				|| dtlData.dtlCdOrder == '' || dtlData.dtlCdCrrctnUsrSq =='' ){
			
			alert('그룹 코드, 상세 코드, 회사 순번, 상세 코드명, 순서, 수정 사용자 순번은 필수 입력 사항입니다.');
			searchDetailCodeList($(".hiddenGrpCd").val(), "ALL");
			return;
		}
		
		var state = true;
		//console.log("[[ groupCodeSave Test ]]" + isNaN(dtlData.compnySq));
		if( isNaN(dtlData.compnySq) == state 
				|| isNaN(dtlData.dtlCdOrder) == state 
				|| isNaN(dtlData.dtlCdCrrctnUsrSq) == state ){
			
			alert('회사 순번, 순서, 수정 사용자 순번은 숫자로만 입력 가능합니다.');
			searchDetailCodeList($(".hiddenGrpCd").val(), "ALL");
			return;
		}
		
		var detailCodeData = JSON.stringify(detailCodeList);
		
		$.ajax({
			url : '/erp/system/code/cudCodeDtl.do',
	        type: 'POST',
	        data: {"detailCodeData" : detailCodeData},
	        dataType:'json',
	        success: function(data) {
	        	//alert("저장되었습니다.");
	        	
	        	if(data.cudResult == 0){
	        		alert("같은 상세코드 명이 존재합니다.");
	        	}else{
	        		alert("저장되었습니다.");
	        	}
	        },
	        error: function(request, status, error) {
	            //err msg 출력
	            //$.failMsg('error');
	            //console.log("[[ detailCodeSave Error ]]";)
	        },
	        complete: function() {
	        	searchDetailCodeList($(".hiddenGrpCd").val(), "ALL");
			}
		});
		
	}
	
	
	//[[ 상세 그룹 취소버튼 ]] 이벤트 바인딩
	$("#detailCodeCancel").on("click", function() {
		
		$("input:radio[id='radioAll']").prop("checked", true);
		var hiddenGrpCd = $(".hiddenGrpCd").val();
		searchDetailCodeList(hiddenGrpCd, "ALL");
		
	});
	
	
	//[[ 컬럼 더블클릭 시 수정 활성화 ]] 이벤트 바인딩
	$("#detailCode_table").on("dblclick", "td", function() {
		
		//console.log($(this).attr("class"));
		
		if($(this).attr("class") == "dtlCd" 
				|| $(this).attr("class") == "dtlCdEnrlmDt"
				|| $(this).attr("class") == "dtlCdCrrctnDt" 
				|| $(this).attr("class") == "status"
				|| $(this).attr("class") == "checkbox-wrapper" ) {
			
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
	
	
	//[[ 사용여부 체크박스 ]] 이벤트 바인딩
	$("#detailCode_table").on("click", ".isUse", function() {
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		//console.log(statusCell.html());
		if(statusCell.html() == '추가'){
			
			statusCell.data("status", "C");
			
			if($(this).is(":checked")) {
				
				$(this).data("isuse", "Y");
				
			} else {
				
				$(this).data("isuse", "N");
			}
			
			checkChangeCell(this);
			
		} else {
		
		statusCell.html("수정");
		
		statusCell.data("status", "U");
		
		if($(this).is(":checked")) {
			
			$(this).data("isuse", "Y");
			
		} else {
			
			$(this).data("isuse", "N");
		}
		
		checkChangeCell(this);
		
		}
		
	});
	
	
	//[[ 모달창이 닫힐때 ]] 이벤트 바인딩
	$('#modal-1').on('hidden.bs.modal', function(){
		
		$("input:radio[id='radioAll']").prop("checked", true);
		
	});

</script>

	
</body>
</html>