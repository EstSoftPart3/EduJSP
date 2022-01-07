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
.card {
	height: 600px;
}

.card form-control float-right {
	width: 40%;
}

.card .row {
	justify-content: space-between;
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

#auth_table td {
	height: 30px;
}

table .status {
	width: 5%;
	text-align: center;
}

#auth_table .checkbox-wrapper {
	width: 5%;
}

#auth_table .authCd {
	width: 8%;
}

#auth_table .authNm {
	width: 10%;
}

#auth_table .useyna {
	width: 5%;
	text-align: center;
	vertical-align: middle;
}

#auth_table .note {
	width: 25%;
}
#auth_table .hidden-col{
display:none;
}

#memberTable .emplySq{
display:none;
}
#memberTable .usrSq{
display:none;
}
#memberTable .hidden-col{
display:none;
}
#authModal > div > div > div.modal-body > div{
align-items: center;
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
				href="#" role="button"> <i class="fas fa-bars"></i>
			</a></li>
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
							<h1 class="m-0 text-dark">권한 관리 페이지</h1>
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

									<h3 class="card-title">권한 관리</h3>
									<br> <span
										style="margin-left: 5px; font-size: 13px; color: gray;">
										더블클릭 후 수정이 가능합니다.<br> 수정 후 저장 버튼을 클릭하지 않으면 수정이 취소됩니다.
									</span>
								</div>
								<div class="col-sm-5" style="text-align: right; width: 100%">
									<select class=cmpnySelectBox>
									    <option>전체</option>
										<option value=1>eep company</option>
										<option value=2>erp company</option>
										<!-- 회사 테이블 부분이 확정되지 않아 임의로 셀렉트박스처리  -->
									</select>

								</div>

								<div class="col-sm-4" style="display: inline">
									<div class="input-group input-group-sm">

										<span>조회 조건</span> 
										<select class=authCondBox>
											<option value=authCd>권한 그룹 코드</option>
											<option value=authNm>권한 그룹 명</option>
										</select> <input type="text" id="input_sch" name="search"
											class="form-control float-right"
											placeholder="권한코드나 권한명을 검색해주세요." value="${search}">
										<div class="input-group-append">
											<button id="button_sch" type="button" class="btn btn-default">
												<i class="fas fa-search"></i>
											</button>
										</div>

									</div>
								</div>

								<div class="col-sm-4">
									<div class="float-right">
										<input type="radio" class="authUseWhthrRadio" name="authUseWhthrRadio" value="A" checked="checked">전체
										<input type="radio" class="authUseWhthrRadio" name="authUseWhthrRadio" value="Y"> 사용 
										<input type="radio" class="authUseWhthrRadio" name="authUseWhthrRadio" value="N"> 미사용 
										<input type="button" value="저장" id="authSave" class="btn btn-primary"> 
										<input type="button" value="추가" id="authInsert" class="btn btn-primary"> 
										<input type="button" value="조회" id="authDetail" class="btn btn-primary">
									</div>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div style="height: 100%; overflow: auto;">
									<table id="auth_table"
										class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class="status">상태</th>
												<th class="checkbox-wrapper"><input type="checkbox" class="table-checkbox delChkAll"></th>
												<th class='authCd'>권한 명</th>
												<th class='authNm'>권한 코드</th>
												<th class="authUseWhthr">사용여부</th>
												<!--    <th class="cmpnySq"> 회사 순번</th> -->
												<th class='authNote'>비고</th>
												<th class='hidden-col'></th>
											</tr>
										</thead>
										<tbody id=auth_table_tbody>
											<c:choose>
												<c:when test="${ fn:length(authorityCommList) == 0 }">
													<tr>
														<td colspan="8">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="authority" items="${authorityCommList}">
														<tr class="list-row">
															<td class="status" data-status="R"></td>
															<td class="checkbox-wrapper">
															<input type="checkbox" class="table-checkbox checkbox-item delChk" /></td>
															<td class='authNm'>
																<p class='rowColumn' contenteditable='false'
																	data-default='${ authority.authNm }'>
																	<c:out value="${ authority.authNm }" />
																</p>
															</td>
															<td class='authCd'>
																<p class='rowColumn' contenteditable='false'
																	data-default='${ authority.authCd }'>
																	<c:out value="${ authority.authCd }" />
																</p>
															</td>
															<td class='checkbox-wrapper'>
															<c:if test="${authority.authUseWhthr == 'Y' }">
															<input type="checkbox" checked="checked" data-authusewhthr="Y" class="useChk" data-default='${ authority.authUseWhthr }'>
														    </c:if> 
														    <c:if test="${authority.authUseWhthr == 'N' }">
																	<input type="checkbox" data-authusewhthr="N" class="useChk" data-default='${ authority.authUseWhthr }'>
															</c:if>
															</td>
															
															<td class='authNote'>
																<p class='rowColumn' contenteditable='false'
																	data-default='${ authority.authNote }'>
																	<c:out value="${ authority.authNote }" />
																</p>
															</td>
															<td class='hidden-col' data-select="">
															
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


						<!-- /.card-body -->
					</div>

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
	<form name="frmPopup" id="frmPopup">
		<input type="hidden" name="popupMbrSq" id="popupMbrSq" />
	</form>
	<!-- /.content-wrapper -->
	<footer class="main-footer"> <strong>Copyright &copy;
		2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.
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

<!--//////////////////////////////modal///////////////////////////////  -->
               <div class="modal fade" id="authModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                   <div class="modal-dialog" style="max-width:100%;width:auto;display:table;">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="exampleModalLabel">권한별 직원보기</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            </div>
                            <div class="modal-body" style="display:inline; ">
                              <div class="input-group input-group-sm" style="margin:10px;">
                              <span>조회 조건</span> 
										<select class=memberCondBox>
											<option value=emplyNm>직원 명</option>
											<option value=usrId>사용자 ID</option>
										</select> <input type="text" id="input_sch_mem" class="form-control float-right" placeholder="직원명이나 사용자ID를 이용하여 검색해주세요" value="${search}">
										<div class="input-group-append">
											<button id="button_sch_mem" type="button" class="btn btn-default">
												<i class="fas fa-search"></i>
											</button>
									    </div>
									    
									    <div class="modalBtnDiv">
											<div class="float-right">
										<input type="button" value="저장" id="memberSave" class="btn btn-primary"> 
										<input type="button" value="추가" id="memberInsert" class="btn btn-primary"> 
										<input type="button" value="조회" id="memberDetail" class="btn btn-primary">
	     								</div>
								</div>
								<div>
								<input type='hidden' class=hiddenAuth name=hiddenAuth value="" style="display:none">
								<input type='hidden' class=hiddenCmpny name=hiddenCmpny value="" style="display:none">
								</div>
                               </div>
                   			<table id="memberTable" border=1>
                   			<thead>
                   			<tr>
                   			<th class="status">상태</th>
                   			<th class="checkbox-wrapper"><input type="checkbox" class="table-checkbox delChkAll"></th>
                   			<th class='memberAuthCd'>권한 코드</th>
                   			<th class='memberUsrId'>사용자 ID</th>
                   			<th class='emplyNm'>직원 명</th>
                   			<th class='deptTcd'>부서</th>
                   			<th class='rnkTcd'>직급</th>
                   			<th class='authNote'>비고</th>
                   			<th class='emplySq'>emplySq</th>
                   			<th class='usrSq'>usrSq</th>
                   			<th class='hidden-col'>selectHidden</th>
                   			</tr>
                   			<tbody id=memberTable_tbody>
                   			
                   			</tbody>
                   			</table>
                            </div>
                            <div class="modal-footer">
                     <!--            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">목록</button>
                                <button type="button" class="btn btn-info btn-sm" id="insertReply">등록</button> -->
                            </div>
                        </div>
                    </div>
                </div>
          
          
          
          


	<!-- ./wrapper -->
	<%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf"%>
	<script>
	var nowAuthCd = 0;
		//검색 버튼 이벤트 바인딩
		$("#button_sch").on("click",function() {
					/* 검색버튼 클릭시 select box의 option val로 조건 구분,
					keyword 에 input_sch.val 값을 앞뒤 빈칸 자른뒤 담고
					   라디오버튼의 value가 A인 것에  checked true 속성부여(조회시 사용여부에 관계없이 보이기 위함), 
					   keyword와 Use A 를 담아 showSearchList 함수 실행
					 */
					 $("#auth_table tbody .status").each(function(i) {
						 //상태변경이 있을경우 confirm을 이용하여 저장 함수진행 
						if ($(this).data('status') != 'R') {

							con = confirm("변경사항이 있습니다. 현재 내용을 저장하시겠습니까?");

							if (con == true) {
								authSave();
							}
							return;
						}
					});
					$("#auth_table tbody .status").data('status','R');
					$("#auth_table tbody .status").html("")

					var searchCond = $(".authCondBox option:selected").val();
					console.log(searchCond);
					var authCd = "authCd";
					var authNm = "authNm";

					if (searchCond == authCd) {
						searchCond = "Cd";
					} else if (searchCond == authNm) {
						searchCond = "Nm"
					}
					console.log(searchCond);
					var keyword = $("#input_sch").val().trim();

					$(":radio[name='authUseWhthrRadio'][value='A']").prop(
							'checked', true);

					showSearchList(keyword, "A", searchCond);

				});

		$("#input_sch").on("keyup", function(e) {
			if (e.keyCode === 13)
				$("#button_sch").click();
			//input_sch (검색) 엔터시 클릭이벤트 발생
		});

		//저장 버튼 이벤트 바인딩
		$("#authSave").on("click", function() {

			authSave();
		});


		//권한 추가버튼 열추가
		$("#authInsert").on("click",function() {
							/*추가버튼 클릭시
							테이블에 row 추가 , cell추가
							각 셀 속성 html및 속성 부여
							hidden-col 은 권한별 조회를 위해 
							선택여부를 지정하기 위해 추가
							 */
							 if($(".cmpnySelectBox option:selected").val()=="전체"){
								 
								 alert("회사를 선택해주세요")
								 return;
							 }
							var table = document.getElementById("auth_table_tbody");
							if($("#auth_table #auth_table_tbody").find("td").text().trim()=="조회 결과가 없습니다"){
								$("#auth_table_tbody").empty();
							}
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
							cell3.setAttribute('class', 'authNm');

							cell4.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
							cell4.setAttribute('class', 'authCd');

							cell5.innerHTML = "<input type='checkBox' checked data-authusewhthr='Y' class=useChk data-default='Y'/>";
							/* cell5.setAttribute('class', 'useChk'); */

							cell6.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
							cell6.setAttribute('class', 'authNote');
							
							cell7.setAttribute('class','hidden-col');
							cell7.setAttribute('data-select','');

		});

		//권한  행 클릭 이벤트 바인딩
		$(document).on("click", "#auth_table tbody tr", function() {
			/*  
			 권한 행 클릭시 auth_table의 tbody의 tr의 border를 0px로 변경 후 
			 선택 tr의 border를 solid 2px로 변경
			hidden-col의 data-select 의 값을 선택한것만 s 로 변경
			 */
			 
			
			$(this).parents("tbody").children("tr").css("border", "0px");
			$(this).parents("tbody").find(".hidden-col").data('select','')
			$(this).css("border", "solid 3px")
			$(this).find(".hidden-col").data('select','s');

			console.log($(this).find(".hidden-col").data('select') + $(this).find("td.authNm").html())
			/* 해당 tr hidden-col에 값이 잘 들어갔는지 확인 */

		});
			 
		//권한 사용여부 라디오 버튼 클릭 이벤트 바인딩
		$(".authUseWhthrRadio").on("click",function() {
					
					var authUseWhthr = $("input[name='authUseWhthrRadio']:checked").val();
					
					/* 권한 사용여부 라디오버튼 클릭 시 라디오버튼 체크되어있는부분
					useyna에 담아줌 
					검색조건이 있을시 
					keyword 및 셀렉트박스 값 가져와서 보내기  */
					var keyWord = $("#input_sch").val().trim();
					var authCondBox = $(".authCondBox option:selected").val()
					console.log("keyWord:"+keyWord)
					if(keyWord==""||keyWord==null){
						showAuthUseWhthrSearchList(authUseWhthr,"","");
					}else{
						var authCd = "authCd";
						var authNm = "authNm";
					 	if (authCondBox == authCd) {
					  	 	searchCond = "Cd";
					    } else if (authCondBox == authNm) {
						    searchCond = "Nm";
			 			}
						/* 목록을 가져오기 위해 사용여부에 따른 조회 함수 실행 */
					showAuthUseWhthrSearchList(authUseWhthr,keyWord,searchCond);
					}
				});

		//사용여부에 따른 조회(ajax)
		function showAuthUseWhthrSearchList(_authUseWhthr,_keyWord,_searchCond) {
			console.log("authUseWhthr:"+_authUseWhthr+"keyWord:"+_keyWord+"searchCond:"+_searchCond)
			var comAjax = new ComAjax();
			comAjax.setUrl("/erp/authority/selectCommAuthUseWhthr.do");
			comAjax.addParam("cmpnySq",$(".cmpnySelectBox option:selected").val())
			comAjax.addParam("useYna", _authUseWhthr);
			comAjax.addParam("keyWord",_keyWord);
			comAjax.addParam("searchCond",_searchCond);
			comAjax.setCallback("fn_authUseWhthrSearchList");
			comAjax.ajax();

		}
		//showAuthUseWhthrSearchList Callback 함수
		function fn_authUseWhthrSearchList(data) {
			showAuthorityList(data);
		}
		//컬럼 더블클릭시 수정활성화 이벤트 바인딩 권한목록 ,모달창 공통사용
		$("table").on("dblclick", "td", function() {   
		
		if($(this).attr("class") == "authCd" || $(this).attr("class") == "emplyNm" 
				|| $(this).attr("class") == "checkbox-wrapper"
				|| $(this).attr("class") == "status" || $(this).attr("class") == "authWhthrUse" 
				|| $(this).attr("class") == "deptTcd"|| $(this).attr("class") == "rnkTcd"
				|| $(this).attr("id") == "memberAuthNote")
				 {
		
			
			return;
		}
		
		var statusCell = $(this).parents("tr").find("td.status");
		
		//셀의상태가 추가 및 delete 일경우 함수 종료(status변경을 안시키기 위함)
		if(statusCell.data("status") == "C" || statusCell.data("status") == "D") {
			return;
		}
		
		$(this).find("p").attr("contenteditable", "true").focus();
		
		statusCell.html("수정");
		
		statusCell.data("status", "U");
		
	});

		//삭제 체크박스 클릭시 이벤트 바인딩
		$(document).on("click",".delChk",function() {
					/* 삭제 체크박스 클릭시(개별) */

					var statusCell = $(this).parents("tr").find("td.status");
					/* 해당 삭제체크박스의 tr부모선택자를 찾아 td.status를 statusCell에 담아줌  */
					if ($(this).is(":checked")) {
						/* delchk가 체크되어있다면 */
						statusCell.html("삭제");
						/* "삭제" 입력 */
						statusCell.data("status", "D");
						/* cell의 status = D */
					} else {
						/* delchk가 체크되어있지 않다면 */
						statusCell.html("");

						statusCell.data("status", "R");
						/* status = R */
						$(this).parents("table").find(".delChkAll").prop(
								"checked", false);
						/* 클릭한 체크박스의 부모인 table . delchkAll을 찾아 checked를 false로 변경 */
					}

				});


		$(document).on("focusout", "table p", function() {
			/* 타 부분 클릭시 셀변경 체크함수 실행 */
			if ($(this).parents("tr").find(".status").data("status") == "U") {

				checkChangeCell($(this));
			}
		});
		//전체 삭제 클릭시
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

			var authorityCommList = data.authorityCommList;

			var body = $("#auth_table tbody");
			body.empty();

			if (authorityCommList.length > 0) {
			//데이터로 들어온 리스트값을 이용하여 동적 재생성
				$.each(authorityCommList,function(index, value) {

									str = "<tr class='list-row'>"
											+ "<td class='status' data-status='R'> </td>"
											+ "<td class='checkbox-wrapper'>"
											+ "<input type='checkbox' class='table-checkbox checkbox-item delChk'/>"
											+ "</td>"
											+ "<td class='authNm'>"
											+ "<p class='rowColumn' contenteditable='true' data-default='" + value.authNm + "'>"
											+ value.authNm
											+ "</p>"
											+ "</td>"
											+ "<td class='authCd'>"
											+ "<p class='rowColumn' contenteditable='true' data-default='" + value.authCd + "'>"
											+ value.authCd + "</p>" + "</td>"
											+ "<td class='checkbox-wrapper'>"
									if (value.authUseWhthr == 'Y') {
										str += "<input type='checkbox' checked='checked' data-authusewhthr='Y' class='useChk' data-default='" + value.authUseWhthr + "'>";
									} else {
										str += "<input type='checkbox' data-authusewhthr='N' class='useChk' data-default='" + value.authUseWhthr + "'>";
									}
									str += "</td>"
											+ "<td class='authNote'>"
											+ "<p class='rowColumn' contenteditable='false' data-default='" + value.authNote + "'>"
											+ value.authNote + "</p>" + "</td>"
									        + "<td class='hidden-col' data-select=''></td>"
											+ "</tr>"

									body.append(str);
								}); //소스에 맞는 태그로 변경(실제 데이터 목록)

			} else {
				body.append("<tr>" + "<td colspan='7'>조회 결과가 없습니다</td>"
						+ "</tr>");

			}

		}

		function showSearchList(_keyWord, _useYna, _searchCond) {
			/* 다중 조회 조건  조회용 함수 */

			var comAjax = new ComAjax();
			comAjax.setUrl("/erp/authority/selectCommAuthSch.do");
			comAjax.addParam("cmpnySq",$(".cmpnySelectBox option:selected").val())
			comAjax.addParam("keyWord", _keyWord);
			comAjax.addParam("useYna", _useYna);
			comAjax.addParam("searchCond", _searchCond);
			comAjax.setCallback(fn_showSearchListCallback);
			comAjax.ajax();
		}
		//showSearchList 콜백함수(권한리스트 뿌려주는 함수 실행)
		function fn_showSearchListCallback(data) {
			showAuthorityList(data);

		}

		//권한 저장함수
		function authSave() {
			var authList = [];

			$("#auth_table tbody .status").each(function(i) {
						/* status 값이 R이 아닌 행을
						var data에   status, authCd,authNm,,authNote 값을 each로 반복해서 
						authList에 담아줌*/
						if ($(this).data('status') != 'R') {
							if($(this).parents('tr').find("td.authNm").text().trim()==""	||
								$(this).parents('tr').find("td.authCd").text().trim()==""){
							alert("권한명 혹은 권한코드가 비어있습니다.")
							return;
							}
							var data = {

								status : $(this).data('status'),
								authNm : $(this).parents('tr').find("td.authNm").text().trim(),
								authCd : $(this).parents('tr').find("td.authCd").text().trim(),
								authUseWhthr : $(this).parents('tr').find("input.useChk").data('authusewhthr'),
								authNote : $(this).parents('tr').find("td.authNote").text().trim(),
								cmpnySq : $(".cmpnySelectBox option:selected").val()

							};

							authList.push(data);

						}

					});
			
			var authData = JSON.stringify(authList);
			console.log(authData);
			var comAjax = new ComAjax();
			comAjax.setUrl("/erp/authority/cudCommAuth.do");
			comAjax.setCallback("fn_authSaveCallBack");
			comAjax.addParam("authData", authData);
			comAjax.ajax();
		}
		//저장 콜백함수
		function fn_authSaveCallBack(data) {
			showSearchList("", "A", "")
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
			
			var isUseChkDefault = $(cell).parents("tr").find(".useChk").data("default");
	 		var isUseChkNow = $(cell).parents("tr").find(".useChk").data("authusewhthr");
			console.log(isUseChkDefault)
			console.log(isUseChkNow)
	 		if(isUseChkDefault != isUseChkNow) {
	 			
	 			changeCell++;
	 		}
			
			if(changeCell <= 0) {
				
				var statusCell = $(cell).parents("tr").find("td.status");
	 			
	 			statusCell.html("");
	 			
	 			statusCell.data("status", "R"); 
	 			
			}
			
		}
		//use chkAll 함수 (미적용, 추후 필요시 추가)
		/* $(".useChkAll").on("click", function() {
		
		var statusTd = $(this).parents("table").find("td.status");
		
		if($(this).is(":checked")) {
			
			var isUse = true;
			console.log(statusTd);
			
			$(statusTd).each(function(i) {
				
				var status = $(this).data("status");
				
				if(status != "R" && status !="U") {
					
					isUse = false;
					return;
				}
				
			});
			
			$(statusTd).each(function() {
				
				if(isUse) {
					
					$(this).data("status", "U");
					$(this).html("수정");
					$(this).parents("tr").find(".useChk").prop("checked",true);
				} else {
					
					alert("삭제중인 항목이있습니다.");
					
					$(this).parents("table").find(".useChkAll").prop("checked",false);
					return false;
				}
			});
			
			
		} else {
			
			$(statusTd).each(function() {
				
				$(this).data("status", "R");
				$(this).html("");
				$(this).parents("tr").find(".useChk").prop("checked",false);
				
			});
			
		}
		
	}) */
		 //사용여부 체크박스 클릭관련(개별)
		$(document).on("click", ".useChk", function() {
		
		var statusCell = $(this).parents("tr").find("td.status");
		if(statusCell.data("status")=="D" || statusCell.data("status")=="C"){
			alert("저장 후 수정해주시기 바랍니다.");
			if($(this).is(":checked")){
				$(this).prop("checked","false");	
			}else{
				$(this).prop("checked","true");
			}
			
			return;
		}//useChk 클릭한 행의 status가 C or D면 저장후 수정해주시기바랍니다 후 
		statusCell.html("수정");
		
		statusCell.data("status", "U");
		
		if($(this).is(":checked")) {
			
			$(this).data("authusewhthr", "Y");
			
		} else {
			
			$(this).data("authusewhthr", "N");
		}
		
		checkChangeCell(this);
		
	}); 
		
		//개별 useChk를 이용한 변경값 확인 및 전체체크 제거 함수, 미적용
/* 		function changeUseChk(cell,defaultCell) {
			var changeDefaultCell=defaultCell;
			
			if ($(this).is(":checked")) {
				$(this).prop("checked", false);
				$(this).parents("table").find(".useChkAll").prop("checked",false);
			} else {
				$(this).prop("checked",true);
			}

		    var changeCell = cell.parents("tr").find("td.status").data("status");
			console.log(changeCell +"changeCell")
			if(changeDefaultCell==changeCell){
				var statusCell=$(this).parents("tr").find("td.status");
				statusCell.html("");
				statusCell.data("status","R");
			}else {
				statusCell.html("수정")
				statusCell.data("status","U");
				
			}
			
			
		} */
		/* 권한별 멤버 조회 함수 */
		$("#authDetail").click(function(){
			

			$("#auth_table tbody .status").each(function(i) {
				 //상태변경이 있을경우 confirm을 이용하여 저장 함수진행 
				if ($(this).data('status') != 'R') {

					con = confirm("변경사항이 있습니다. 현재 내용을 저장하시겠습니까?");

					if (con == true) {
						authSave();
					}
					return;
				}
			});
			$("#auth_table tbody .status").data('status','R');
			$("#auth_table tbody .status").html("")

			var authCd=""
			$("#auth_table tbody .hidden-col").each(function(i) {
				if($(this).data('select')=="s"){
					authCd=$(this).parents('tr').find('td.authCd p').text().trim()
					
				}else{
					
				}
			})
			$('.hiddenAuth').val(authCd);
			if($('.hiddenAuth').val()==""){
				alert("코드를 선택해주세요")
				return;
			}
			alert($('.hiddenAuth').val())
			modalOpen(authCd)
			/* 모달창 실행시 권한에 따른 목록 뿌려주기 위한 호출 */
			$("#authModal").modal(); 
			
		});
		function modalOpen(authCd){
					var comAjax=new ComAjax();
					comAjax.setUrl("/erp/authority/selectAuthAllEmply.do")
					comAjax.addParam("authCd",authCd)
					comAjax.setCallback("fn_selectAuthAllEmply")
					comAjax.ajax();

		}
		//모달창 오픈시 멤버 조회 콜백 함수
		function fn_selectAuthAllEmply(data){

			memberList(data);
		}
		//조회해온 권한별 멤버리스트 뿌려주는 함수
		function memberList(data){
		
			
			var memberList = data.erpAuthorityEmplyList;
			/* var hidden=$('.hiddenAuth').val(memberList[0].authCd); */
			var body = $("#memberTable tbody");
			body.empty();
		    if (memberList.length > 0) {
			$.each(memberList,function(index, value) {
				
					var str=""
					str = "<tr class='list-row'>"
						+ "<td class='status' data-status='R'> </td>"
						+ "<td class='checkbox-wrapper'>"
						+ "<input type='checkbox' class='table-checkbox checkbox-item delChk'/>"
						+ "</td>"
						+ "<td class='authCd'>"
						+ "<p class='rowColumn' contenteditable='false' data-default='" + value.authCd + "'>"+ value.authCd	+ "</p>"
						+ "</td>"
						+ "<td class='usrId'>"
						+ "<p class='rowColumn' contenteditable='false' data-default='" + value.usrId + "'>"+ value.usrId	+ "</p>"
						+ "</td>"

						+ "<td class='emplyNm'>"
						+ "<p class='rowColumn' contenteditable='false' data-default='" + value.emplyNm + "'>"+ value.emplyNm + "</p>" + "</td>"
				        
						+ "<td class='deptTcd'>"
						+ "<p class='rowColumn' contenteditable='false' data-default='" + value.deptTcd + "'>"+ value.deptTcd + "</p>" + "</td>"
				        
				        
						+ "<td class='rnkTcd'>"
						+ "<p class='rowColumn' contenteditable='false' data-default='" + value.rnkTcd + "'>"+ value.rnkTcd + "</p>" + "</td>"
						+ "<td class='authNote' id='memberAuthNote'>"
						+ "<p class='rowColumn' contenteditable='false' data-default='" + value.authNote + "'>"+ value.authNote + "</p>" + "</td>"
						+ "<td class='emplySq'>"
						+ "<p class='rowColumn' contenteditable='false' data-default='" + value.emplySq + "'>"+ value.emplySq + "</p>" + "</td>"
						+ "<td class='hidden-col' data-select=''></td>"
						
						+ "<td class='usrSq'>"
						+ "<p class='rowColumn' contenteditable='false' data-default='"+value.usrSq+ "'>"+value.usrSq+"</p>"+"</td>"
						+ "</tr>";
					body.append(str);
					
				});
			}else{
				body.append("<tr>" + "<td colspan='9'>조회 결과가 없습니다</td>"
						+ "</tr>");
			}
		    
		}
		//모달창 멤버 저장버튼 클릭시 바인딩
		$("#memberSave").on("click", function() {

			memberSave();
		});
		$("#button_sch_mem").on("click",function() {
		/* var authCd=$('#authTable td.hidden-col').data("s").parent('tr').find('td.authCd').text().trim(); */
		 
		var authCd=$('.hiddenAuth').val();
		 alert(authCd)
		 var searchCond = $(".memberCondBox option:selected").val();
		 console.log(searchCond);
		 var emplyNm = "emplyNm";
		 var usrId = "usrId";
					
		 if (searchCond == emplyNm) {
		  	 searchCond = emplyNm;
		     } else if (searchCond == usrId) {
			 searchCond = usrId
			 }
		console.log(searchCond);
		var keyword = $("#input_sch_mem").val().trim();

	    showMemberSearchList(keyword, searchCond,authCd);
		})
		$("#input_sch_mem").on("keyup", function(e) {
			if (e.keyCode === 13)
				$("#button_sch_mem").click();
			//input_sch (검색) 엔터시 클릭이벤트 발생
		});
		//권한별 멤버 검색 함수
		function showMemberSearchList(_keyword,_searchCond,_authCd){
			var comAjax = new ComAjax();
			comAjax.setUrl("/erp/authority/selectAuthEmplySch.do");
			comAjax.addParam("keyWord", _keyword);
			comAjax.addParam("searchCond", _searchCond);
			comAjax.addParam("authCd",_authCd)
			comAjax.setCallback(fn_showMemberSearchListCallback);
			comAjax.ajax();
			}
		//showMemberSearchList 콜백함수
		function fn_showMemberSearchListCallback(data){
			memberList(data)
		}
		$(document).on("click", "#memberTable tbody tr", function() {
			/*  
			 권한 행 클릭시 auth_table의 tbody의 tr의 border를 0px로 변경 후 
			 선택 tr의 border를 solid 3px로 변경
			 */
			 
			
			$(this).parents("tbody").children("tr").css("border", "0px");
			$(this).parents("tbody").find(".hidden-col").data('select','')
			$(this).css("border", "solid 3px")
			$(this).find(".hidden-col").data('select','s');

			console.log($(this).find(".hidden-col").data('select') + $(this).find("td.authNm").html())
			/* 해당 tr hidden-col에 값이 잘 들어갔는지 확인 */

		});
			  
		//멤버 cud저장
		function memberSave() {
			var authList = [];

			$("#memberTable tbody .status").each(function(i) {
						/* status 값이 R이 아닌 행을
						var data에   status, 나머지 값을 each로 반복해서 
						authList에 담아줌*/
						if ($(this).data('status') != 'R') {
							
								if($(this).parents('tr').find("td.usrId").text().trim()==""){
								alert("사용자 id가 비어있습니다.")
								return;
								}
							
							var data = {

								status : $(this).data('status'),
								authCd : $(this).parents('tr').find("td.authCd").text().trim(),
								usrId : $(this).parents('tr').find("td.usrId").text().trim(),
								cmpnySq : $(".cmpnySelectBox option:selected").val(),
								usrSq:$(this).parents('tr').find("td.usrSq").text().trim()

							};

							authList.push(data);

						}
							
						
						
						

					});
			
			var authData = JSON.stringify(authList);
			console.log(authData);
			var comAjax = new ComAjax();
			comAjax.setUrl("/erp/authority/cudAuthEmply.do");
			comAjax.setCallback("fn_memberSaveCallBack");
			comAjax.addParam("authData", authData);
			comAjax.ajax();
		}
		//멤버 저장 콜백함수
		function fn_memberSaveCallBack(data) {
			showMemberSearchList("", "", $('.hiddenAuth').val())
		}
		$("#memberInsert").on("click",function() {
			/*추가버튼 클릭시
			테이블에 row 추가 , cell1~6추가
			각 셀 속성 부여
			 */

			var table = document.getElementById("memberTable_tbody");
			if($("#memberTable #memberTable_tbody").find("td").text().trim()=="조회 결과가 없습니다"){
				$("#memberTable_tbody").empty();
			}
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
			cell1.setAttribute('data-status', 'C');

			cell2.innerHTML = "<input type='checkbox' class='table-checkbox checkbox-item'/>"
			cell2.setAttribute('class', 'checkbox-wrapper');

			cell3.innerHTML = "<p class='rowColumn' contenteditable='false'>"+$('.hiddenAuth').val(); +"</p>";
			cell3.setAttribute('class', 'authCd');

			cell4.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
			cell4.setAttribute('class', 'usrId');
			cell5.innerHTML = "<p class='rowColumn' contenteditable='false'>자동입력</p>";
			cell5.setAttribute('class', 'emplyNm');

			cell6.innerHTML = "<p class='rowColumn' contenteditable='false'>자동입력</p>";
			cell6.setAttribute('class', 'deptTcd');
			
			cell7.innerHTML = "<p class='rowColumn' contenteditable='false'>자동입력</p>";
			cell7.setAttribute('class', 'rnkTcd');
			
			cell8.innerHTML = "<p class='rowColumn' contenteditable='false'>자동입력</p>";
			cell8.setAttribute('class', 'authNote');
			
			cell8.innerHTML = "<p class='rowColumn' contenteditable='false'>자동입력</p>";
			cell8.setAttribute('class', 'usrSq');
			
		});
		//셀렉트박스 변경이벤트(cmpny)
		$(".cmpnySelectBox").on("change",function(){
			$("#auth_table tbody .status").each(function(i) {
				 //상태변경이 있을경우 confirm을 이용하여 저장 함수진행 
				if ($(this).data('status') != 'R') {

					con = confirm("변경사항이 있습니다. 현재 내용을 저장하시겠습니까?");

					if (con == true) {
						authSave();
					}
					return;
				}
			});
			$("#auth_table tbody .status").data('status','R');
			$("#auth_table tbody .status").html("")

			var keyWord = $("#input_sch").val("");
		   showCmpnyAuthList();
		});
		//회사별 조회 AJAX
		function showCmpnyAuthList(){
			var cmpnySq=$(".cmpnySelectBox option:selected").val();
			var comAjax=new ComAjax();
			comAjax.setUrl("/erp/authority/selectCommCmpny.do");
			comAjax.addParam("cmpnySq",cmpnySq);
			comAjax.setCallback("fn_showCmpnyAuthListCallback")
			comAjax.ajax();
		}
		//showCmpnyAuthList 콜백함수
		function fn_showCmpnyAuthListCallback(data){
			showAuthorityList(data)
		}
		//멤버 상세페이지 이동
		$("#memberDetail").click(function(){
		var select=""
			$("#memberTable tbody .hidden-col").each(function(i) {
				if($(this).data('select')=="s"){
					select=$(this).parents('tr').find('td.emplySq p').text().trim()
					
				}else{
					
				}
			})

		
		location.href="/erp/member/openMemberDetailPage.do?emplySq="+select
		
		});
		
	</script>

</body>
</html>