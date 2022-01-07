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
.sq {
	display: none;
}
.checkbox-wrapper {
	vertical-align: middle !important;
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
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
						<i class="fas fa-th-large"></i>
					</a>
				</li>
			</ul>
		</nav>
		<!-- /navbar -->
		
		<%@ include file="/WEB-INF/jsp/comn/component/include-sideBar.jspf"%>
		
		
		
		<!----------------------------------------------------------------------- Main content ------------------------------------------------------------------------------>
		<div class="content-wrapper"> 
			<!-- content header -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h3 class="m-0 text-dark">
								<a href="/erp/member/selectMemberListPage.do">업무 > 직원관리</a>
								<span> > </span>
								<a href="#">정보 수정</a>
							</h3>
							<span>새로운 직원정보를 추가할 수 있습니다.</span>
						</div>
					</div>
				</div>
			</div>
			<!-- /content header -->
			
			<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<div class="card">
							
								<!-- card-header -->
								<div class="card-header">
									<div class="card-tools">
										<div class="input-group input-group-sm" style="width: 400px;">
											
											
										</div>
									</div>
								</div>
								<!-- /card-header -->
								
								<!-- card-body -->
								<div class="card-body">
									<div class="info-layout">
										<form id="fileForm" action="/erp/member/updateMember.do" method="POST" enctype="multipart/form-data">
											<input type="hidden" id="emplySq" name="emplySq" value="${emply.emplySq }"/>
											<h4 class="">인적 사항</h4>
											<a class="btn btn-success" id="goBackBtn">목록</a>
											<a class="btn btn-primary" id="goSubmit">수정</a>
											<table id="" class="table table-hover table-striped table-bordered text-nowrap">
												<tr>
													<th>ID</th>
													<td><input type="text" placeholder="아이디입력" id="emplyId" name="emplyId" value="${emply.emplyId }"/></td>
													<th colspan="2">Password</th>
													<td colspan="2"><input type="text" placeholder="test" id="emplyPw" name="emplyPw" value="${emply.emplyPw }"></td>		<!-- 모달로 정규식 검사 창 만들기 -->
												</tr>
												<tr>
													<th>성명</th>
													<td><input type="text" placeholder="이름입력" id="emplyNm" name="emplyNm" value="${emply.emplyNm }"/></td>
													<th colspan="2">주민등록번호</th>
													<td colspan="2"><input type="text" placeholder="100101-1234567" id="emplyRrn" name="emplyRrn" value="${emply.emplyRrn }"/></td>
												</tr>
												<tr>
													<th>계약구분</th>
													<td>
														<select id="cntrcTcd" name="cntrcTcd">
															<option value="정규직">정규직</option>
															<option value="계약직">계약직</option>
															<option value="업체">업체</option>
															<option value="알바">알바</option>
														</select>
													</td>
													<th colspan="2">부서</th>
													<td colspan="2">
														<select id="deptTcd" name="deptTcd">
															<option value="아르바이트">아르바이트</option>
															<option value="연구개발팀">연구개발팀</option>
															<option value="인사관리팀">인사관리팀</option>
															<option value="경영지원팀">경영지원팀</option>
														</select>
													</td>
												</tr>
												<tr>
													<th>직급</th>
													<td>
														<select id="rnkTcd" name="rnkTcd">
															<option value="대표">대표</option>
															<option value="부장">부장</option>
															<option value="차장">차장</option>
															<option value="팀장">팀장</option>
															<option value="대리">대리</option>
															<option value="사원">사원</option>
														</select>
													</td>
												<th colspan="2">전화번호</th>
													<td colspan="2"><input type="text" placeholder="010-0000-0000" id="emplyPhNum" name="emplyPhNum" value="${emply.emplyPhNum }"/></td>
												</tr>
												<tr>
													<th>이메일</th>
													<td><input type="text" placeholder="example@ex.com" id="emplyEml" name="emplyEml" value="${emply.emplyEml }"/></td>
													<th>은행</th>
													<td><input type="text" placeholder="은행 입력" id="emplyBnk" name="emplyBnk" value="${emply.emplyBnk }"/></td>
													<th>계좌번호</th>
													<td><input type="text" placeholder="계좌번호 입력" id="emplyAcct" name="emplyAcct" value="${emply.emplyAcct }"/></td>
												</tr>
												<tr>
													<th>주소</th>
													<td colspan="5"><input type="text" placeholder="주소 입력" id="emplyAddr" name="emplyAddr" value="${emply.emplyAddr }"/></td>
												</tr>
											</table>
											
											<h4 class="">학력</h4>
											<table class="table table-hover table-striped table-bordered text-nowrap">
												<thead>
													<tr id="trrr">
														<th>최종학력</th>
														<th>학과명</th>
														<th>졸업년월</th>
														<th>소재지</th>
														<th></th>
													</tr>
												</thead>
												<tbody id="tableEdu">
													<c:choose>
														<c:when test="${ fn:length(education) == 0 }">
														</c:when>
														<c:otherwise>
															<c:forEach var="edu" items="${ education }">
																<tr>
																	<td><input type="text" id="eductnFnl" name="eductnFnl" value='<c:out value="${ edu.eductnFnl }" />' /></td>
																	<td><input type="text" id="eductnMjr" name=eductnMjr value='<c:out value="${ edu.eductnMjr }" />' /></td>
																	<td><input type="text" id="eductnGrdtdDt" name="eductnGrdtdDt" value='<c:out value="${ edu.eductnGrdtdDt }" />' /></td>
																	<td><input type="text" id="eductnLc" name="eductnLc" value='<c:out value="${ edu.eductnLc }" />' /></td>
																	<td style="display:none;"><input type="hidden" id="eductnSq" name="eductnSq" value='<c:out value="${ edu.eductnSq }" />' /></td>
																	<th><a class="btn btn-danger" onclick="deleteRowBtn(this)">X</a></th>
																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
												</tbody>
												<tr id="btnTr">
													<th id="btnTh" colspan="5">
														<a class="btn btn-primary" id="addEduRowBtn">+</a>
													</th>
												</tr>
											</table>
											
											<h4 class="">경력</h4>
											<table class="table table-hover table-striped table-bordered text-nowrap">
												<tr>
													<th>근무 회사</th>
													<th>근무 기간</th>
													<th>직급</th>
													<th>담당 업무</th>
													<th>지역</th>
													<th>퇴사 사유</th>
													<th>연봉</th>
													<th></th>
												</tr>
												<tbody id="tableCarr">
													<c:choose>
														<c:when test="${ fn:length(carrer) == 0 }">
														</c:when>
														<c:otherwise>
															<c:forEach var="carr" items="${ carrer }">
																<tr>
																	<td><input type="text" id="carrNm" name="carrNm" value='<c:out value="${ carr.carrNm }" />	' /></td>
																	<td><input type="text" id="carrDt" name="carrDt" value='<c:out value="${ carr.carrDt }" />	' /></td>
																	<td><input type="text" id="carrRnk" name="carrRnk" value='<c:out value="${ carr.carrRnk }" />	' /></td>
																	<td><input type="text" id="carrWrk" name="carrWrk" value='<c:out value="${ carr.carrWrk }" />	' /></td>
																	<td><input type="text" id="carrLc" name="carrLc" value='<c:out value="${ carr.carrLc }" />	' /></td>
																	<td><input type="text" id="carrRsgnt" name="carrRsgnt" value='<c:out value="${ carr.carrRsgnt }"/>' /></td>
																	<td><input type="text" id="carrSlry" name="carrSlry" value='<c:out value="${ carr.carrSlry }" />' /></td>
																	<td style="display:none;"><input type="hidden" id="carrSq" name="carrSq" value='<c:out value="${ carr.carrSq }" />' /></td>
																	<th><a class="btn btn-danger" onclick="deleteRowBtn(this)">X</a></th>
																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
												</tbody>
												<tr id="btnTr">
													<th id="btnTh" colspan="8">
														<a class="btn btn-primary" id="addCarrRowBtn">+</a>
													</th>
												</tr>
											</table>
											
											<h4 class="">자격증</h4>
											<table class="table table-hover table-striped table-bordered text-nowrap">
												<tr>
													<th>자격증 명</th>
													<th>발행처/기관</th>
													<th>취득일</th>
													<th></th>
												</tr>
												<tbody id="tableCertf">
													<c:choose>
														<c:when test="${ fn:length(certification) == 0 }">
														</c:when>
														<c:otherwise>
															<c:forEach var="certf" items="${ certification }">
																<tr>
																	<td><input type="text" id="certfctnNm" name="certfctnNm" value="<c:out value='${ certf.certfctnNm }' />"/></td>
																	<td><input type="text" id="certfctnLc" name="certfctnLc" value="<c:out value='${ certf.certfctnLc }' />"/></td>
																	<td><input type="text" id="certfctnDt" name="certfctnDt" value="<c:out value='${ certf.certfctnDt }' />"/></td>
																	<td style="display:none;"><input type="hidden" id="certfctnSq" name="certfctnSq" value='<c:out value="${ certf.certfctnSq }" />' /></td>
																	<th><a class="btn btn-danger" onclick="deleteRowBtn(this)">X</a></th>
																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
												</tbody>
												<tr id="btnTr">
													<th id="btnTh" colspan="4">
														<a class="btn btn-primary" id="addCertfRowBtn">+</a>
													</th>
												</tr>
											</table>
											
											<h4 class="">대외 활동</h4>
											<table class="table table-hover table-striped table-bordered text-nowrap">
												<tr>
													<th>활동 구분</th>
													<th>활동 명</th>
													<th>기관/장소</th>
													<th>활동 기간</th>
													<th>활동 내용</th>
													<th></th>
												</tr>
												<tbody id="tableOA">
													<c:choose>
														<c:when test="${ fn:length(OA) == 0 }">
														</c:when>
														<c:otherwise>
															<c:forEach var="oa" items="${ OA }">
																<tr>
																	<td><input type="text" id="OADvsn" name="OADvsn" value='<c:out value="${ oa.OADvsn }" />'/></td>
																	<td><input type="text" id="OANm" name="OANm" value='<c:out value="${ oa.OANm }" />'/></td>
																	<td><input type="text" id="OAOrgnz" name="OAOrgnz" value='<c:out value="${ oa.OAOrgnz }" />'/></td>
																	<td><input type="text" id="OADt" name="OADt" value='<c:out value="${ oa.OADt }" />'/></td>
																	<td><input type="text" id="OADtl" name="OADtl" value='<c:out value="${ oa.OADtl }" />'/></td>
																	<td style="display:none;"><input type="hidden" id="OASq" name="OASq" value='<c:out value="${ oa.OASq }" />' /></td>
																	<th><a class="btn btn-danger" onclick="deleteRowBtn(this)">X</a></th>
																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
												</tbody>
												<tr id="btnTr">
													<th id="btnTh" colspan="6">
														<a class="btn btn-primary" id="addOARowBtn">+</a>
													</th>
												</tr>
											</table>
											
											<h4 class="">기타 사항</h4>
											<table id="" class="table table-hover table-striped table-bordered text-nowrap">
												<tr>
													<th>입사일</th>
													<td colspan="2"><input type="text" placeholder="2021.10.10" id="cntrcStrtDt" name="cntrcStrtDt" value="${emply.cntrcStrtDt }"/></td>
													<th>전환일</th>
													<td colspan="2"><input type="text" placeholder="2021.10.10" id="cntrcTrnstDt" name="cntrcTrnstDt" value="${emply.cntrcTrnstDt }"/></td>
												</tr>
												<tr>
													<th>퇴사일</th>
													<td colspan="4" id="fireBtn"><a href='javascript:fireHim();' class="btn btn-danger">퇴사처리</a></td>
												</tr>
												<tr>
													<th rowspan="2">비상연락망</th>
													<th>관계</th>
												<td>
													<select id="emplyEcnRelatnTcd1" name="emplyEcnRelatnTcd1">
														<option value="부">부</option>
														<option value="모">모</option>
														<option value="배우자">배우자</option>
														<option value="친구">친구</option>
														<option value="자녀">자녀</option>
														<option value="기타">기타</option>
													</select>
												</td>
												<th>전화번호</th>
													<td><input type="text" placeholder="010-0000-0000" id="emplyEcnRelatnNum1" name="emplyEcnRelatnNum1" value="${emply.emplyEcnRelatnNum1 }"/></td>
												</tr>
												<tr>
													<th>관계</th>
													<td>
														<select id="emplyEcnRelatnTcd2" name="emplyEcnRelatnTcd2">
															<option value="부">부</option>
															<option value="모">모</option>
															<option value="배우자">배우자</option>
															<option value="친구">친구</option>
															<option value="자녀">자녀</option>
															<option value="기타">기타</option>
														</select>
													</td>
													<th>전화번호</th>
													<td><input type="text" placeholder="010-0000-0000" id="emplyEcnRelatnNum2" name="emplyEcnRelatnNum2" value="${emply.emplyEcnRelatnNum2 }"/></td>
												</tr>
												<tr>
													<th>비고</th>
													<td colspan="4">
														<input type="text" placeholder="기타 정보를 입력하세요" id="emplyNote" name="emplyNote" value="${emply.emplyNote }"/>
													</td>
												</tr>
											</table>
											
											<h4 class="">대여장비</h4>
											<table id="" class="table table-hover table-striped table-bordered text-nowrap">
												<tr>
													<th>장비 관리번호</th>
													<th>장비 구분</th>
													<th>대여 일자</th>
													<th>반납 일자</th>
													<th></th>
												</tr>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<th><a class="btn btn-danger" onclick="deleteRowBtn(this)">X</a></th>
												</tr>
											</table>
											<a href='<c:url value="#" />' class="btn btn-primary">+</a>
											
											
											
											<h4 class="">서류확인</h4>
											<table  class="table table-hover table-striped table-bordered text-nowrap">
												<tr>
													<th>파일 리스트</th>
													<th></th>
												</tr>
												<tbody id="tableDoc">
													<c:forEach var="file" items="${document}">
														<tr>
															<td>
																<a href="#"onclick="fn_fileDown('${file.docSq}'); return false;" name="docOrgFile">
																	${file.docOrgFile}
																</a>
																<input type="hidden" id="DOC_SQ" name="DOC_SQ"
																	value="${file.docSq }">
															</td>
															<th><a class="btn btn-danger" onclick="deleteFileBtn(this)">X</a></th>
														</tr>
													</c:forEach>
													<tr class="fileTr">
														<td><input class='btn btn-default btn-sm' type='file' name='file_1'></td>
														<th><a class="btn btn-danger" onclick="deleteFileBtn(this)">X</a></th>
													</tr>
												</tbody>
										</table>
										</form>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /card-header -->
							
						</div>
					</div>
				</div>
			
		</div>
	<script type="text/javascript">
		/* -------------------------------- function --------------------------------*/
			function fn_fileDown(fileNo){
	
				var msg = confirm("다운로드를 하시겠습니까?"); 
				if (msg == true) { 
					
					var formObj = $("form[name='readForm']");
					$("#DOC_SQ").attr("value", fileNo);
					formObj.attr("action", "/erpFileDown.do");
					formObj.submit();
					
				}
			}
			function getListFromTable(table){
				var tbl = document.getElementById(table);	//id값으로 테이블객체 가져오기
				
				var findTd = "#";
				findTd +=table;
				findTd+=" tr td";							//table 내의 td 접근
			
				var tblRowCnt =  tbl.rows.length;			//row 개수 (몇 줄인지, 세로 개수)
				var tblColCnt = $(findTd).length / tblRowCnt;	//column 
			
				var list = "";
				
				//table내의 td 전체 돌면서 name으로 값 받아와서 string에 추가시키기
				for(var i=0; i<tblRowCnt; i++) {
					for(var j=0; j<tblColCnt; j++) {
						var name = tbl.rows[0].cells[j].firstChild.getAttribute('name');
						
						list += document.getElementsByName(name)[i].value;
						
// 						if(document.getElementsByName(name)[i]){
// 							list += document.getElementsByName(name)[i].value;
// 						}
// 						else {
// 							list +="/";
// 						}
						
						//마지막 열일 때
						if(j==tblColCnt-1){
							list +="/";
						}else {
							list +=",";
						}
					}
				}
							
				list = list.slice(0, -1);	//마지막문자 '/' 지우기
				var lastIndex = list.substr(list.length - 1);
				
				if(lastIndex===','){
					list+=0;
				}
				console.log(list);
				return list;
			}
		
			function fn_insertMemberCallBack(data) {
				if (code > 0) { // 정상 추가시 회원 목록 화면으로 이동
					alert("회원 추가가 정상적으로 완료되었습니다.");
					var comSubmit = new ComSubmit();
					comSubmit.setUrl("<c:url value='/erp/member/openMemberListPage.do' />");
					comSubmit.submit();
				} else {
					alert("회원 추가에 실패하였습니다.");
				}
			}
			/* -------------------------------- function --------------------------------*/
			
			
			
			/* -------------------------------- btn click event --------------------------------*/
			
			/* -------------------top button ------------------*/
			//뒤로가기버튼
			$("#goBackBtn").on("click",function() {
				history.back();
			});
			
			//저장버튼
			$("#goSubmit").on("click",function() {
				
				var f = $('#fileForm');
				f.append(
					'<input type="hidden" id="tblEdu" name="tblEdu"/>'+
					'<input type="hidden" id="tblCarr" name="tblCarr"/>'+
					'<input type="hidden" id="tblCertf" name="tblCertf"/>'+
					'<input type="hidden" id="tblOA" name="tblOA"/>'+
					'<input type="hidden" id="tblDoc" name="tblDoc"/>'
				);
				
				$('#tblEdu').val(getListFromTable('tableEdu'));
				$('#tblCarr').val(getListFromTable('tableCarr'));
				$('#tblCertf').val(getListFromTable('tableCertf'));
				$('#tblOA').val(getListFromTable('tableOA'));
// 				$('#tblDoc').val(getListFromTable('tableDoc'));

				alert('수정 되었습니다.');
				
				f.submit();
			});
			
			function fireHim() {
				var fire = $('#fireBtn');
				fire.empty();
				var today = new Date().toLocaleDateString();
				today=today.slice(0, -1).replaceAll(" ","");
				var str="";
				str+='퇴사일 : <input type="text" name="cntrcEndDt" value="'+today+'"/>'
				fire.append(str);
			}
			
			/* -------------------/top button ------------------*/
			
			
			
			/* -------------------content button ------------------*/
			/* --------- add content button ----------*/					//나중에 이것도 function으로 한 번에 처리했으면 좋겠다...
			$("#addEduRowBtn").on("click",function() {
				$('#tableEdu').append(                                                            
					'<tr>                                                 '+
					'<td><input type="text" name="eductnFnl" /></td>   '+
					'<td><input type="text" name="eductnMjr" /></td>   '+
					'<td><input type="text" name="edctnGrdtdDt" /></td>'+
					'<td><input type="text" name="edctnLc" /></td>     '+
					'<td style="display:none;"><input type="hidden" id="edcSq" name="edcSq"/></td>'+
					'<th><a class="btn btn-danger" onclick="deleteRowBtn(this)">X</a></th>'+
					'</tr>'
				);
			});
			
			$("#addCarrRowBtn").on("click",function() {
				$('#tableCarr').append(    
					'<tr>                                                                 '+
					'<td><input type="text" name="carrNm" /></td>                         '+
					'<td><input type="text" name="carrDt" /></td>                         '+
					'<td><input type="text" name="carrRnk" /></td>                        '+
					'<td><input type="text" name="carrWrk" /></td>                        '+
					'<td><input type="text" name="carrLc" /></td>                         '+
					'<td><input type="text" name="carrRsgnt"  /></td>                     '+
					'<td><input type="text" name="carrSlry"  /></td>                      '+
					'<td style="display:none;"><input type="hidden" id="carrSq" name="carrSq"/></td>'+
					'<th><a class="btn btn-danger" onclick="deleteRowBtn(this)">X</a></th>'+
					'</tr>                                                                '
				);
			});
			
			$("#addCertfRowBtn").on("click",function() {
				$('#tableCertf').append(    
					'<tr>                                                                   '+
					'<td><input type="text" name="certfctnNm"  /></td>                      '+
					'<td><input type="text" name="certfctnLc"  /></td>                      '+
					'<td><input type="text" name="certfctnDt"  /></td>                      '+
					'<td style="display:none;"><input type="hidden" id="certfctnSq" name="certfctnSq"/></td>'+
					'<th><a class="btn btn-danger" onclick="deleteRowBtn(this)">X</a></th>  '+
					'</tr>                                                                  '
				);                                                                          
			});
			
			$("#addOARowBtn").on("click",function() {
				$('#tableOA').append(                                                             
					'<tr>                                                                     '+
					'<td><input type="text" name="OADvsn"  /></td>                            '+
					'<td><input type="text" name="OANm"  /></td>                              '+
					'<td><input type="text" name="OAOrgnz"  /></td>                           '+
					'<td><input type="text" name="OADt"  /></td>                              '+
					'<td><input type="text" name="OADtl"  /></td>                             '+
					'<td style="display:none;"><input type="hidden" id="OASq" name="OASq"/></td>'+
					'<th><a class="btn btn-danger" onclick="deleteRowBtn(this)">X</a></th>    '+
					'</tr>                                                                    '
				);
				
				
			});
			
			//파일 업로드 시 row 추가
			var fileIndex = 1;
			$("#tableDoc").change(function(e){
				fileIndex++;
				$('#tableDoc').append(
					'<tr class="fileTr">                                                                    '+
					'<td><input class="btn btn-default btn-sm" type="file" name="file_'+fileIndex+'"/></td> '+
					'<th><a class="btn btn-danger" onclick="deleteFileBtn(this)">X</a></th>        			'+
					'</tr>                                                                       			'
				);
			});
			
			
			/* --------- /add content button ----------*/
			
			/* --------- delete content button ----------*/
			function deleteRowBtn(clicked){
				var tr = $(clicked).parent().parent();			//tr
				
				tr.remove();
			}
			
			function deleteFileBtn(file){
				var tr = $(file).parent().parent();
				var tableStr = tr.parent().attr('id');
				var trCnt = $("#" + tableStr + " tr").length;
				if(trCnt>1){
					tr.remove();
				}else {
					return false;
				}
			}
			/* --------- /delete content button ----------*/
			/* -------------------/content button ------------------*/
			
			/* -------------------------------- /btn click event --------------------------------*/
	</script>
	
	<!----------------------------------------------------------------------- /Main content ------------------------------------------------------------------------------>
		
		
		
	<form id="commonForm"></form>		<!-- include-body -->
	</div>
	<form name="frmPopup" id="frmPopup">
		<input type="hidden" name="popupMbrSq" id="popupMbrSq" />
	</form>
	<!-- /.content-wrapper -->
	<footer class="main-footer"> <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
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
	
</body>
</html>