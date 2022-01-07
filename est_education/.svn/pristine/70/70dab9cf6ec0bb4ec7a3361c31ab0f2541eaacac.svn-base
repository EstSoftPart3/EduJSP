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
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1 class="m-0 text-dark">프로젝트 정보 추가</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<button class="btn btn-primary float-right" id="insertButton">등록</button>
								
								<a href='<c:url value="openProjectListPage.do" />' class="btn btn-info float-right" style="margin-right: 10px;">목록으로</a>
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
										<label for="inputSq" class="col-sm-2 col-form-label">직원 번호</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputSq" name="mbrSq" placeholder="직원 번호">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputNm" class="col-sm-2 col-form-label">프로젝트명</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputNm" name="prjctNm" placeholder="프로젝트명">
										</div>
										<label for="inputTyp" class="col-sm-2 col-form-label text-right">프로젝트 유형</label>
										<div class="col-sm-4">
											<select id="inputTyp" class="form-control">
												<option value="개발">개발</option>
												<option value="운영">운영</option>
												<option value="개발/운영">개발/운영</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="inputRole" class="col-sm-2 col-form-label">프로젝트 역할</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputRole" name="prjctRole"  placeholder="프로젝트목적">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputStrtDt" class="col-sm-2 col-form-label">프로젝트 시작일</label>
										<div class="col-sm-4">
											<input type="date" class="form-control" id="inputStrtDt" name="prjctStrtDt" placeholder="날짜를 선택하세요">
										</div>
										<label for="inputEntDt" class="col-sm-2 col-form-label text-right">프로젝트 종료일</label>
										<div class="col-sm-4">
											<input type="date" class="form-control" id="inputEntDt" name="prjctEndDt"  placeholder="날짜를 선택하세요">
										</div>
									</div>
									<div class="form-group row">
									    <label for="inputAddr" class="col-sm-2 col-form-label">프로젝트 주소</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputAddr" name="prjctAddr" placeholder="프로젝트주소">
										</div>
										<label for="inputMktgPt" class="col-sm-2 col-form-label text-right">프로젝트 고객사</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputMktgPt" name="prjctMktgPt" placeholder="프로젝트마케팅">
										</div>
									</div>
									<div class="form-group row">
									    <label for="inputWrkpl" class="col-sm-2 col-form-label">프로젝트 회사</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputWrkpl" name="prjctWrkpl" placeholder="프로젝트분산">
										</div>		
									</div>		
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
							
							
						</div>
						
						<div class="card" style="margin-right: 10px;">	
              				<!-- /.card-header -->
              				<div class="card-body p-0">
				                <table id="skill_table1" class="table table-sm">
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
				                <table id="skill_table2" class="table table-sm">
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
				                <table id="skill_table3" class="table table-sm">
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
				                <table id="skill_table4" class="table table-sm">
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
				                <table id="skill_table5" class="table table-sm">
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
				                <table id="skill_table6" class="table table-sm">
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
	var SqArr = new Array();
	var OSArr = new Array();
	var TOOLArr = new Array();
	var LANGArr = new Array();
	var FRAMEWORKArr = new Array();
	var DBMSArr = new Array();
	var ETCArr = new Array();
	var SkillArr = ["nothing","OS", "TOOL", "언어", "FRAMEWORK", "DBMS", "기타"];
	
	function element_isnull(obj) {
		return (!!obj) ? obj : '';
	}
	
	function fn_skillupdatebutton(number) {
		var comAjax = new ComAjax();
		var skillNm = SkillArr[number];
		
		comAjax.addParam("skillTypNm" , skillNm);
		comAjax.setUrl("<c:url value='/skill/selectskillListPage.do' />");
		comAjax.setCallback(fn_selectskillCallBack);
		comAjax.ajax();
	}
	
	//모달창에 스킬리스트 뿌려주기
	function fn_selectskillCallBack(data) {
		var skillList = data.skillList;
		var body = $("#skill_table>tbody");
		body.empty();
		
		if(skillList.length > 0) {
			skillList.forEach(skill => {
				body.append(
						"<tr class='list-row'>" +
							"<td class='checkbox-wrapper'>" +
								"<input type='checkbox' name='select' class='table-checkbox checkbox-item' value='"+ skill.skillSq +"' />" +
							"</td>" +
							"<td id = 'skillsq'>" + element_isnull(skill.skillSq) + "</td>" +
							"<td id = 'skillTypNm'>" + element_isnull(skill.skillTypNm) + "</td>" +
							"<td id = 'skillTypDtlNm'>" + element_isnull(skill.skillTypDtlNm) + "</td>" +
						"</tr>");
		});
	}
	}
	
	function setting(){
		for(var i=1; i<SkillArr.length; i++) {
			var number = i;
			fn_selectskillfirst(number);
		}
	}
	
	//처음 시작시 실행할 콜백함수
	function fn_selectskillfirst(number) {
		var updateButton = '<td><button type="button" onclick="fn_skillupdatebutton('+number+')" class="btn btn-primary float-middle" data-toggle="modal" data-target="#modal-1">등록하기</button></td>'
		var body = $('#skill_table'+number+'>tbody');	
		body.append("<tr>" + "<td>" + updateButton + "</td>" + "</tr>");
	}
	
	//모달창에서 스킬 SAVE시 실행할 콜백함수
	function fn_selectskill(data, skillone, number, SkillArray) {
		var skillList = data.skillList;
		var updateButton = '<td><button type="button" onclick="fn_skillupdatebutton('+number+')" class="btn btn-primary float-middle" data-toggle="modal" data-target="#modal-1">등록하기</button></td>'
		var body = $('#skill_table'+number+'>tbody');
		body.empty();
		
		if(skillList.length > 0) {
			skillList.forEach(skill => {
				if(skill.skillTypNm == skillone && SkillArray.includes(skill.skillTypDtlNm)){
					body.append(
							"<tr>" +
								"<td> </td>" +
								"<td>" + element_isnull(skill.skillTypDtlNm) + "</td>" +
							"</tr>");
				}
			});
		}
		body.append("<tr>" + "<td>" + updateButton + "</td>" + "</tr>");
		$('#projectskillclose').click();
	}
 	
	
	// 등록 버튼 클릭시 작동하는 함수
	function fn_insertProject(data) {
		var code = data.erpProjectVo;
		var Arr = new Array();
		var obj = null;
		
		console.log(code["prjctSq"]);
		
		//SqArr 배열에 값 저장 -> 각각의 배열을 LIST에 넣어서 for 1개로 리팩토링 가능
		for(var i=0; i<OSArr.length; i++) {
			SqArr.push(OSArr[i]);
		}
		
		for(var i=0; i<TOOLArr.length; i++) {
			SqArr.push(TOOLArr[i]);
		}
		
		for(var i=0; i<LANGArr.length; i++) {
			SqArr.push(LANGArr[i]);
		}
		
		for(var i=0; i<FRAMEWORKArr.length; i++) {
			SqArr.push(FRAMEWORKArr[i]);
		}
		
		for(var i=0; i<DBMSArr.length; i++) {
			SqArr.push(DBMSArr[i]);
		}
		
		for(var i=0; i<ETCArr.length; i++) {
			SqArr.push(ETCArr[i]);
		}
		
		//prjctSq, skillSq - data array 만들기
		SqArr.forEach(skillsq => {
			obj = new Object();
			obj.prjctSq = code["prjctSq"];
	        obj.skillSq = parseInt(skillsq);
			Arr.push(obj);
		});
		
		//스킬DB에 저장할 데이터를 ajax - array로 보내기 - > ajax 함수로 만들어서 리팩토링 가능
		$.ajax({
			url : "<c:url value='/projectskill/insertProjectSkill.do' />",    
			type : "POST",
			data : JSON.stringify(Arr),
	        dataType : "json",
	        contentType : "application/json; charset=UTF-8",
			async : false,
			beforeSend : function() {
				console.log("[ajax.beforeSend]");
			},
			success : function(data) {
				console.log("[ajax.success]");
				console.log(data);
				fn_insertProjectCallBack(data);
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
	
	//프로젝트 리스트 페이지로 이동하는 콜백함수
 	function fn_insertProjectCallBack(data) {
		var code = data.code;
		console.log(code);
		if(code == SqArr.length) {	// 정상 추가시 프로젝트 목록 화면으로 이동
			alert("프로젝트 추가가 정상적으로 완료되었습니다.");
		
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='openProjectListPage.do' />");
			comSubmit.submit();
			
		}else {
			alert("개발환경 추가에 실패하였습니다.");
		}
	}
	
 	// 전체 선택 함수
	function selectAll(selectAll)  {
		  const checkboxes 
		       = document.getElementsByName('select');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked;
		  })}
 	
		$(document).ready(function() {
			
			setting();
			
			//모달창 온클릭 체크박스 활성화
			$("#skill_table").on("click", ".list-row", function(e) {
				var checkbox = $(this).find('td:first-child :checkbox');
	            checkbox.attr('checked', !checkbox.is(':checked'));
			}); 

			//팝업 모달창의 저장 버튼 이벤트 바인딩 ajax 사용
			$("#projectskillinsert").click(function(){
				//팝업 모달의 체크한 값 변수에 저장
				var checkbox = $("input[name='select']:checked");
				
				var OS = new Array();
				var LANG = new Array();
				var DBMS = new Array();
				var TOOL = new Array();
				var FRAMEWORK = new Array();
				var ETC = new Array();
				
				var number = 0;
				var skillone = new String();
				var SkillArray = new Array();

				// 체크된 체크박스 값을 가져온다
				checkbox.each(function(i) {
					var tr = checkbox.parent().parent().eq(i);
					var td = tr.children();

					var skillSq = td.eq(1).text();
					var skillTypNm = td.eq(2).text();
					var skillTypDtlNm = td.eq(3).text();
					
					// 체크박스 체크한 값에서 조건에 따라 변수에 데이터 저장
					if (skillTypNm == "OS") {
						number = 1;
						SkillArray.push(skillTypDtlNm);
						skillone = SkillArr[number];
						OS.push(parseInt(skillSq));
						OSArr = OS;
					}
					
					if (skillTypNm == "TOOL") {
						number = 2;
						SkillArray.push(skillTypDtlNm);
						skillone = SkillArr[number];
						TOOL.push(parseInt(skillSq));
						TOOLArr = TOOL;
					}
					
					if (skillTypNm == "언어") {
						number = 3;
						SkillArray.push(skillTypDtlNm);
						skillone = SkillArr[number];
						LANG.push(parseInt(skillSq));
						LANGArr = LANG;
					}
					
					if (skillTypNm == "FRAMEWORK") {
						number = 4;
						SkillArray.push(skillTypDtlNm);
						skillone = SkillArr[number];
						FRAMEWORK.push(parseInt(skillSq));
						FRAMEWORKArr = FRAMEWORK;
					}
					
					if (skillTypNm == "DBMS") {
						number = 5;
						SkillArray.push(skillTypDtlNm);
						skillone = SkillArr[number];
						DBMS.push(parseInt(skillSq));
						DBMSArr = DBMS;
					}
					
					if (skillTypNm == "기타") {
						number = 6;
						SkillArray.push(skillTypDtlNm);
						skillone = SkillArr[number];
						ETC.push(parseInt(skillSq));
						ETCArr = ETC;
					}
				});
				
				//변수에 저장한 값으로 fn_selectskill 실행
				$.ajax({
					url : "<c:url value='/skill/selectskillListPage.do' />",    
					type : "POST",
					data : "",
			        dataType : "json",
			        contentType : "application/json; charset=UTF-8",
					async : false,
					beforeSend : function() {
						console.log("[ajax.beforeSend]");
					},
					success : function(data) {
						console.log("[ajax.success]");
						console.log(data);
						fn_selectskill(data, skillone, number, SkillArray);
					},
					complete:function(){
						console.log("[ajax.complete]");
				    },
				    error:function(request,status,error){
				    	console.log("[ajax.error]");
				    	return false;
					}
				});
			});
			
			//등록버튼 클릭 이벤트 바인딩
			$("#insertButton").on("click", function() {

				var sq = $("#inputSq").val();
				var name = $("#inputNm").val();
				var typ = $("#inputTyp").val();
				var role = $("#inputRole").val();
				var strtDt = $("#inputStrtDt").val();
				var entDt = $("#inputEntDt").val();
				var addr = $("#inputAddr").val();
				var mktgPt = $("#inputMktgPt").val();
				var wrkpl = $("#inputWrkpl").val();
				
				// 유효성 체크
				if(gfn_isNull(sq)) {
					alert("SQ를 입력해주세요.");
					return false;
				}
				
				if(gfn_isNull(name)) {
					alert("프로젝트명을 입력해주세요.");
					return false
				}
				
				if(gfn_isNull(typ)) {
					alert("프로젝트유형을 입력해주세요.");
					return false
				}
				
				if(gfn_isNull(role)) {
					alert("프로젝트역할을 입력해주세요.");
					return false
				}
				
				if(gfn_isNull(strtDt)) {
					alert("프로젝트 시작일을 입력해주세요.");
					return false
				}
				
				if(gfn_isNull(addr)) {
					alert("프로젝트주소를 입력해주세요.");
					return false
				}
				
				if(gfn_isNull(mktgPt)) {
					alert("프로젝트 고객사를 입력해주세요.");
					return false
				}
				
				if(gfn_isNull(wrkpl)) {
					alert("프로젝트 회사를 입력해주세요.");
					return false
				}

				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='insertProject.do' />"); //프로그램 URI
							
				comAjax.addParam("mbrSq", sq);
				comAjax.addParam("prjctNm", name);
				comAjax.addParam("prjctTyp", typ);
				comAjax.addParam("prjctRole", role);
				comAjax.addParam("prjctStrtDt", strtDt);
				comAjax.addParam("prjctEndDt", entDt);
				comAjax.addParam("prjctAddr", addr);
				comAjax.addParam("prjctMktgPt", mktgPt);
				comAjax.addParam("prjctWrkpl", wrkpl);

				comAjax.setCallback(fn_insertProject);//콜백 선언
				comAjax.ajax();
			});
		})	
	</script>
	
	<!-- modal content -->
			      <div class="modal fade" id="modal-1">
			        <div class="modal-dialog">
			          <div class="modal-content bg-secondary">
			            <div class="modal-header">
			              <h4 class="modal-title">개발환경</h4>
			              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			                <span aria-hidden="true">&times;</span></button>
			            </div>
			            <div class="modal-body">
			            
			              <div style="height: 400px; overflow: auto;">
									<table id="skill_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class="checkbox-wrapper"><input type="checkbox" id="allCheckbox" class="table-checkbox" onclick='selectAll(this)'></th>
												<th>SQ</th>
												<th>기술 유형</th>
												<th>기술명</th>
											</tr>
										</thead>
										<tbody>
											
											
										</tbody>
									</table>
								</div>
								
			            </div>
			            <div class="modal-footer justify-content-between">
			              <button type="button" class="btn btn-outline-light" data-dismiss="modal" id="projectskillclose">닫기</button>
			              <button id="projectskillinsert" type="button" class="btn btn-outline-light">입력</button>
			            </div>
			          </div>
			          <!-- /.modal-content -->
			        </div>
			        <!-- /.modal-dialog -->
			      </div>
</body>
</html>