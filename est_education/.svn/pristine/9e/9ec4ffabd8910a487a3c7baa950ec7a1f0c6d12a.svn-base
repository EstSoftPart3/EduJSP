
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- 여기부터 Navbar 입니다 -->
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
		<%@ include file="/WEB-INF/jsp/comn/component/include-sideBar.jspf"%>


		<!-- //여기까지 네비바입니다 -->


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">장비 관리2 게시판</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<a href='<c:url value="/erp/equipment/openEquipmentInsertPage.do" />' class="btn btn-primary float-right">장비 등록</a>
							<button id="eqpmntdeleteall" class="btn btn-primary float-right" style="margin-right: 10px; background-color: red;" onclick="eqpmntdeleteall();">삭제</button>
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
			<div class="container-fluid" >
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">EST ERP 시스템 장비 목록</h3>
								&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
								<!-- 체크박스 메뉴 -->
								<input style="margin: auto;" type="checkbox" name="select_TypCd" id="select_TypCd" value="노트북" checked>&nbsp;노트북&emsp;
								<input style="margin: auto;" type="checkbox" name="select_TypCd" id="select_TypCd" value="데스크탑" checked>&nbsp;데스크탑&emsp;
								<input style="margin: auto;" type="checkbox" name="select_TypCd" id="select_TypCd" value="모니터" checked>&nbsp;모니터&emsp;
								<input style="margin: auto;" type="checkbox" name="select_TypCd" id="select_TypCd" value="기타" checked>&nbsp;기타&emsp;
								<input style="margin: auto;" type="hidden" name="select_TypCd" id="select_TypCd" value="none" checked>&nbsp;&emsp;
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
											<option value="eqpmntBrnd" <c:if test="${condition eq 'eqpmntBrnd' }">selected</c:if>>브랜드명</option>
											<option value="eqpmntMdl" <c:if test="${condition eq 'eqpmntMdl' }">selected</c:if>>모델명</option>
											<option value="eqpmntSrl" <c:if test="${condition eq 'eqpmntSrl' }">selected</c:if>>시리얼넘버</option>
										</select> <input type="text" id="input_sch" name="search" class="form-control float-right" placeholder="search"	value="${keyword}">
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
								<div style="height: 550px; overflow: auto;">
									<table id="member_table" class="table table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class="checkbox-wrapper"><input type="checkbox"	name='select' id="allCheckbox" class="table-checkbox" onclick='selectAll(this)'></th>
												<th>SQ</th>
												<th>장비 관리번호</th>
												<th>장비 브랜드</th>
												<th>장비 모델명</th>
												<th>장비 시리얼넘버</th>
												<th>장비 상태</th>
												<th>장비 정보</th>
												<th>장비 등록일</th>
												<th>장비 구분</th>
												<th>대여 상태</th>
												<th>대여 이력</th>

											</tr>
										</thead>
										<tbody>
										<!-- 리스트 콜백으로 Ajax으로 로링 시 호출로 사용안함. -->
<!-- 											<c:choose>
												<c:when test="${ fn:length(map.list) == 0 }">
													<tr>
														<td colspan="10">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="eqpmnt" items="${ map.list }">
														<tr class="list-row">
															<td class="checkbox-wrapper">
																<input type="checkbox" name='select' id="checkbox" class="table-checkbox checkbox-item"	value='<c:out value="${ eqpmnt.eqpmntSq }" />' /></td>
															<td class="eqpmntSq"><c:out	value="${ eqpmnt.eqpmntSq }" /></td>
															<td><a href='<c:url value='/erp/equipment/openEquipmentContentPage.do?update=${ eqpmnt.eqpmntSq }' />'>
																<c:out value="${ eqpmnt.eqpmntMngNum }" /></a></td>
															<td><c:out value="${ eqpmnt.eqpmntBrnd }" /></td>
															<td><c:out value="${ eqpmnt.eqpmntMdl }" /></td>
															<td><c:out value="${ eqpmnt.eqpmntSrl }" /></td>
															<td><c:out value="${ eqpmnt.eqpmntStsCd }" /></td>
															<td><c:out value="${ eqpmnt.eqpmntInfo }" /></td>
															<td><c:out value="${ eqpmnt.eqpmntRgstrDate }" /></td>
															<td><c:out value="${ eqpmnt.eqpmntTypCd }" /></td>
															<td><c:out value="${ eqpmnt.eqpmntIsUse }" /></td>
															<td><a href='javascript:rentalDetail("${ eqpmnt.eqpmntSq }")' class='link-black text-sm'><i class='far fa-file-alt mr-1'></i>이력보기</a></td>															
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose> -->
										</tbody>
									</table>
								</div>								
							</div>
							<!-- /.card-body -->

							 <!-- Moa Modal-->
  								<div class="modal fade" id="moaModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   									 <div class="modal-dialog" role="document">
   									   <div class="modal-content" style="width:900px; align:center;">
    								    <div class="modal-header">
     								     <h5 class="modal-title" id="exampleModalLabel">장비 대여 이력</h5>
    								     <button class="close" type="button" data-dismiss="modal" aria-label="Close">
      								      <span aria-hidden="true">x</span>
      								    </button>
    								    </div>    								    					    
										<div class="modal-body">
											<table id="rent_equipment" class="table table-hover table-striped table-bordered text-nowrap">
												<thead>
													<tr>
														 <th>SQ</th>
                                                         <th>장비 관리번호</th>
                                                         <th>장비 구분</th>
                                                         <th>대여 사원  번호</th>
                                                         <th>대여 사원 이름</th>
                                                         <th>대여 일자</th>
                                                         <th>반납 일자</th>
                                                         <th>비고</th>
													</tr>
                                               </thead>
                                               <tbody>
                                                  <c:choose>
                                                    <c:when test="${ fn:length(equipmentLental) == 0 }">
                                                      <tr>
                                                        <td colspan="10">조회 결과가 없습니다</td>
                                                      </tr>
                                                    </c:when>
                                                    <c:otherwise>
                                                      <c:forEach var="list" items="${ equipmentLental }">
                                                      <tr>
                                                        	<td><c:out value="${ list.lntlSq }"/></td>
                                                      		<td><c:out value="${ list.eqpmntSq }"/></td>
                                                    	    <td><c:out value="${ list.eqpmntTypCd }"/></td>
                                                      		<td><c:out value="${ list.mbrSq }"/></td>
                                                      		<td><c:out value="${ list.mbrNm }"/></td>
                                                      		<td><c:out value="${ list.lntlStrtDate }"/></td>
                                                      		<td><c:out value="${ list.lntlRtrnDate }"/></td>
                                                      		<td><c:out value="${ list.lntlMemo}"/></td>
                                                  	  </tr>
                                               		  </c:forEach>
                                              		</c:otherwise>
                                                  </c:choose>
                                               </tbody>                                        
											</table>
										</div>
										<div class="modal-footer">
											<button class="btn btn-primary" type="button" data-dismiss="modal">Cancel</button>
										</div>
									</div>
								</div>
							</div>
							
							<div id="counter">
								<b style="font-size: 16px;">&nbsp; &nbsp; &nbsp; * 총 게시물 개수 : <c:out value="${ pager.count }" /> EA</b>
							</div>
 
							<!--페이징 처리 -->
							
							<div id="pageing" class="card-tools" style="margin: auto;">
								<ul class="pagination pagination-sm" id="pages">
								
								</ul>
							</div>
							<!-- 페이징 처리 끝 -->	

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
	
	/*개발 세팅
	
	기능
	
	Ajax에서 이벤트 발생되는 조건
	1. 체크박스 선택했을때 (노트북 데스크탑 모니터 기타) 바로 변경되어야함
	2. 시스템 코드 변경했을때 바로 변경되어야함
	3. 엔터키 눌렀을때 검색되어야함
	4. 검색버튼 클릭되었을때 검색되어야함
	
	리스트뷰 -> 1234 이후 조건으로  eqpmntTcdArr에 담아서 콜백해줘야함 
	
	페이징은 어떻게 구현? -> 자바스크립트 이용해서 구현한다*/
	
	
	
	//리스트 페이징 Url 셋팅 func()
	function list(curPage, keyword){
    	
	location.href="/erp/equipment/selectEquipmentListPage.do?curPage="+curPage+"&keyword=${map.keyword}";
	}
	
	function element_isnull(obj) {
		return (!!obj) ? obj : '';
	}
	
	// 체크박스 검색 이벤트 
	$("input[name='select_TypCd']").on("change" , function(e){		comAjaxCall(1);	});
	// 시스템 코드 (정상 고장 수리중 등등)에 대한 셀렉터 
	$("#select_position").on("change", function(e) {	comAjaxCall(1);	});
	// 검색 입력창 엔터키 이벤트 바인딩
	$("#input_sch").on("keyup", function(e) {	if (e.keyCode === 13){	comAjaxCall(1);	}});
	// 검색 버튼 클릭 이벤트 바인딩
	$("#button_sch").on("click", function(e) {	comAjaxCall(1);	}); 
	
	//시작되었을때 가장 먼저 실행되는 함수
	$(document).ready(function() {
		comAjaxCall(1); //openlist.do로 실행하기 때문에 필요X

		//체크박스 눌렀을때 이 이후의 실행을 막는다.
		$(".checkbox-wrapper").on("click", function(e) {
			e.stopPropagation();
		});
		//삭제 버튼을 눌렀을때 이 이후의 실행을 막는다.
		$(".delete-btn").on("click", function(e) {
			e.stopPropagation();
		});
	});
	
	///////////////////////////////////////////////////////////
	/*기능 시작 */
	///////////////////////////////////////////////////////////
	
	
	//리스트 콜 함수
	function comAjaxCall(curPage){
		
		var eqpmntPosition = $("#select_position").val(); //eqpmntStsCd (조회 기능 B에 해당(정상 고장 수리중))
		var condition = $("#select_cond").val(); //브랜드, 모델명, 시리얼넘버 (조회 기능 C에 해당(EQPMNT_BRND, EQPMNT_MDL, EQPMNT_SRL))
		var keyword = $("#input_sch").val(); //검색했을때 들어가는 텍스트 (조회 기능 D에 해당 (검색어))
				
		// 체크박스 세팅 -- 시작
		var list =$("input[name='select_TypCd']"); //체크박스에 해당 (조회기능 A에 해당)
		var TcdArr = new Array();
		
		for(var i =0; i<list.length; i++){
			if(list[i].checked){
				//값들 가져와서 배열에 넣기
				 var eqpmntTypCd;
				eqpmntTypCd= list[i].value;
				TcdArr.push(eqpmntTypCd); 
			}
		}		
		// 체크박스 세팅 -- 끝
		
		var comAjax = new ComAjax();
		comAjax.setUrl("<c:url value='/erp/equipment/selectEquipmentListPage.do' />");
				
		//상품 종류 코드를 담는다 (조회 A)
		comAjax.addParam("eqpmntTcdArray" ,TcdArr);
		//시스템 장애 코드를 담는다 (조회 B)
		comAjax.addParam("eqpmntStsCd", eqpmntPosition);
		//모델 상세 정보를 담는다 (조회 C)
		
		if (condition != "all") {
			comAjax.addParam(condition, keyword);
		} else {
			comAjax.addParam("eqpmntBrnd", keyword);
			comAjax.addParam("eqpmntSrl", keyword);
			comAjax.addParam("eqpmntMdl", keyword);	
		}
		
		//현재 페이지를 담는다
		comAjax.addParam("curPage",curPage);		
		comAjax.setCallback(fn_EqpmntCallBack);		
		
		console.log("#TcdArr : " + TcdArr);
		console.log("#eqpmntPosition : " + eqpmntPosition);
		console.log("#condition : " + condition);
		console.log("#keyword : " + keyword);
		console.log("#curPage : " + curPage);
 		comAjax.ajax();
	}
	
	// 리스트 콜백 함수
	function fn_EqpmntCallBack(data) {
		var equipmentList = data.equipmentList;
				
		var body = $("#member_table>tbody");
		body.empty();
		
		if(equipmentList.length > 0) {
			
			equipmentList.forEach(eqpmnt => {

				body.append(
						"<tr class='list-row'>" + 
							"<td class='checkbox-wrapper'>" +
								"<input type='checkbox' name='select' class='table-checkbox checkbox-item' value='"+ eqpmnt.eqpmntSq +"' />" +
							"</td>" +
							"<td class='eqpmntSq'>" + eqpmnt.eqpmntSq + "</td>" +
							"<td id='detail'><a href='/erp/equipment/openEquipmentContentPage.do?update=" + eqpmnt.eqpmntSq + "'>" + element_isnull(eqpmnt.eqpmntMngNum) + "</td>" +
							"<td>" + (eqpmnt.eqpmntBrnd) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntMdl) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntSrl) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntStsCd) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntInfo) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntRgstrDate) + "</td>" +
							"<td>" + element_isnull(eqpmnt.eqpmntTypCd) + "</td>" +						
							"<td>" + element_isnull(eqpmnt.eqpmntIsUse) + "</td>" +
							"<td><a href='javascript:rentalDetail(" + eqpmnt.eqpmntSq + ")' class='link-black text-sm'><i class='far fa-file-alt mr-1'></i>이력보기</a></td>" +								
						"</tr>" 
						);
					});
		
		} else {
			body.append("<tr>" + "<td colspan='10'>조회 결과가 없습니다</td>" + "</tr>"); 
			
		}
		
				
		//페이징 처리 -> Ajax로 자료 불러오는 것과 동시에 처리해야함
		var boardPager = data.boardPager;
		
		var ul = $("#pages");
		ul.empty();			
		//현재 블록이 1보다 클 경우에 이전과 처음 버튼을 생성한다
		if(boardPager.curBlock > 1) {
				
			ul.append(
			"<li class='page-item'><a class='page-link' href='javascript:comAjaxCall(1)'>[처음]</a></li>" +
			"<li class='page-item'><a class='page-link' href='javascript:comAjaxCall(" + boardPager.prevPage + ")'>[이전]</a></li>"
			);
		}
		//페이지 넘버가 시작번호부터 끝번호까지 계속 증가하면서 하나씩 만든다 (예: [1] [2] [3] [4] [5])
		for(var pageNum = boardPager.curBlock*10-9; pageNum <= boardPager.blockEnd; pageNum++){
			//현재 페이지와 같을 경우에는 하이퍼링크를 제거한다		
			if(pageNum == boardPager.curPage){
				ul.append(
				"<li class='page-link' style='background: lightblue;'>[" + pageNum + "]</span></li>"
				);
			//그 외에는 하이퍼링크를 넣는다	
			} else {
				ul.append(
				"<li class='page-item'><a class='page-link' href='javascript:comAjaxCall([" + pageNum + "])'>" + pageNum + "</a></li>"
				);
			}
		}
		
		//현재 블록이 전체 블록보다 작을때에는 다음 버튼과 끝 버튼을 넣는다
		if(boardPager.curBlock <= boardPager.totBlock){
			ul.append(
			"<li class='page-item'><a class='page-link' href='javascript:comAjaxCall(" + boardPager.nextPage + ")'>[다음]</a></li>" +
			"<li class='page-item'><a class='page-link' href='javascript:comAjaxCall(" + boardPager.totPage + ")'>[끝]</a></li>"
			);
		}				
		
		//전체 글 갯수 세기
		var count = data.count;
		
		var div = $("#counter");
		div.empty();
		
		if(1 == 1){
			div.append(
					"<b style='font-size: 16px;'> * 총 게시물 개수 : " + count + "EA</b>"
			);
		}
		
		
		 
	}
	
		
	
	//////////////////////////////////////////////////////////////////////////
		
		//대여이력 모달창	
		function rentalDetail(eqpmntSq) {
			alert("eqpmntSq :" + eqpmntSq);	
			console.log("eqpmntSq : " + eqpmntSq);
			
					
			var comAjax = new ComAjax();
			comAjax.addParam("eqpmntSq", eqpmntSq);
            comAjax.setUrl("<c:url value='/erp/equipment/selectEquipmentLentalOne.do' />");
            comAjax.setCallback(modal);
            comAjax.ajax();
			}
			
			function modal(data){
				
				$('#moaModal').modal('show');
				
				var equipmentLental = data.equipmentLental;
				
				var body = $("#rent_equipment>tbody");
				body.empty();
				
				if(equipmentLental.length > 0) {
					
					equipmentLental.forEach(list => {

						body.append(
							"<tr class='list-row'>" + 
								"<td class='eqpmntSq'>" + list.lntlSq + "</td>" +
								"<td>" + element_isnull(list.eqpmntSq) + "</td>" +
								"<td>" + element_isnull(list.eqpmntTypCd) + "</td>" +
								"<td>" + element_isnull(list.mbrSq) + "</td>" +
								"<td>" + element_isnull(list.mbrNm) + "</td>" +
								"<td>" + element_isnull(list.lntlStrtDate) + "</td>" +
								"<td>" + element_isnull(list.lntlRtrnDate) + "</td>" +
								"<td>" + element_isnull(list.lntlMemo) + "</td>" +				
							"</tr>" );				
		    	
			});
					} else { 
				body.append("<tr>" + "<td colspan='10'>조회 결과가 없습니다</td>" + "</tr>"); 
				
			
			}
    	   	
		}
    	   
    //////////////////////////////////////////////////////////////////////////
    
		//목록 전체선택함수
		function selectAll(selectAll)  {
			 const checkboxes 
		    	  = document.getElementsByName('select');
		 
			checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		 })
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
					url : "<c:url value='/erp/equipment/deleteEquipmentAll.do' />",    
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
		
		  
			

	</script>
</body>
</html>