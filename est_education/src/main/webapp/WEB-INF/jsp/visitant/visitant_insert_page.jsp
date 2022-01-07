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

<!-- <script type="text/javascript" src="/js/timepicker/jquery.timepicker.min.js" ></script>타이머js -->
<!-- <link type="text/css" rel="stylesheet" href="/js/timepicker/jquery.timepicker.css" media=""/>타이머css -->


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
								<h1 class="m-0 text-dark">방문자 추가</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<button class="btn btn-primary float-right" id="insertButton">추가</button>
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
									<h3 class="card-title">방문자 정보</h3>
								</div>
								<!-- /.card-header -->

								<!-- card-body -->
								<div class="card-body">
									<div class="form-group row">
										<label for="inputNm" class="col-sm-2 col-form-label">* 이름</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputNm"
												name="visiNm" placeholder="이름">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputDt" class="col-sm-2 col-form-label">* 방문일자</label>
										<div class="col-sm-4">
											<input type="date" class="form-control" name="visiDt"
												id="inputDt">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputSt" class="col-sm-2 col-form-label">* 방문시각</label>
										<div class="col-sm-4">
											<select id="inputSt" class="form-control" name="visiSt">
												<option value="10:00">10:00</option>
												<option value="10:30">10:30</option>
												<option value="11:00">11:00</option>
												<option value="11:30">11:30</option>
												<option value="12:00">12:00</option>
												<option value="12:30">12:30</option>
												<option value="13:00">13:00</option>
												<option value="13:30">13:30</option>
												<option value="14:00">14:00</option>
												<option value="14:30">14:30</option>
												<option value="15:00">15:00</option>
												<option value="15:30">15:30</option>
												<option value="16:00">16:00</option>
												<option value="16:30">16:30</option>
												<option value="17:00">17:00</option>
												<option value="17:30">17:30</option>
												<option value="18:00">18:00</option>
												<option value="18:30">18:30</option>
												<option value="19:00">19:00</option>
												<option value="19:30">19:30</option>
												<option value="20:00">20:00</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="inputEn" class="col-sm-2 col-form-label">* 방문종료</label>
										<div class="col-sm-4">
											<select id="inputEn" class="form-control" name="visiEn">
												<option value="10:00">10:00</option>
												<option value="10:30">10:30</option>
												<option value="11:00">11:00</option>
												<option value="11:30">11:30</option>
												<option value="12:00">12:00</option>
												<option value="12:30">12:30</option>
												<option value="13:00">13:00</option>
												<option value="13:30">13:30</option>
												<option value="14:00">14:00</option>
												<option value="14:30">14:30</option>
												<option value="15:00">15:00</option>
												<option value="15:30">15:30</option>
												<option value="16:00">16:00</option>
												<option value="16:30">16:30</option>
												<option value="17:00">17:00</option>
												<option value="17:30">17:30</option>
												<option value="18:00">18:00</option>
												<option value="18:30">18:30</option>
												<option value="19:00">19:00</option>
												<option value="19:30">19:30</option>
												<option value="20:00">20:00</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="inputNum1" class="col-sm-2 col-form-label">* 전화번호</label>
										<div class="col-sm-2">
											<select id="inputNum1" class="form-control">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="012">012</option>
												<option value="013">013</option>
												<option value="0507">0507</option>
											</select>
										</div>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputNum2" maxlength="4">
										</div>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputNum3" maxlength="4">
										</div>
										<input type="hidden" name="visiNum" id="inputNum">
									</div>
									<div class="form-group row">
										<label for="inputTem" class="col-sm-2 col-form-label">* 체온</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="visiTem"
												id="inputTem" placeholder="ex)36.5">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputCd" class="col-sm-2 col-form-label">* 방문사유</label>
										<div class="col-sm-4">
<!-- 											<input type="text" class="form-control" name="visiTcd" -->
<!-- 												id="inputCd" placeholder="ex)면접, 직원, 기타"> -->
											<select class="form-control" id="inputCd" name="visiTcd">
												<option value="면접">면접</option>
												<option value="직원">직원</option>
												<option value="미팅">미팅</option>
												<option value="기타">기타</option>
											</select>
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
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
	
		$(document).ready(function() {
			function fn_hpNumConvert(num1, num2, num3) {
				if(num2.length < 4 || num3.length < 4) return "";
				
				return num1 + "-" + num2 + "-" + num3;
			}
			
			
			function fn_insertVisitantCallBack(data) {
				var code = data.code;
				if(code > 0) {	// 정상 추가시 회원 목록 화면으로 이동
					alert("방문자 추가가 정상적으로 완료되었습니다.");
					var comSubmit = new ComSubmit();
					comSubmit.setUrl("<c:url value='/visitant/openVisitantListPage.do' />");
					comSubmit.submit();
				}else {
					alert("방문자 추가에 실패하였습니다.");
				}
			}
			
			// 숫자 입력 이벤트 바인딩
			gfn_onlyNumber($("#inputNum2"));
			gfn_onlyNumber($("#inputNum3"));
			
			$("#insertButton").on("click", function() {
				// 유효성 검사
				var nm = $("#inputNm").val();
				var dt = $("#inputDt").val();
				var st = $("#inputSt").val();
				var en = $("#inputEn").val();
				var num2 = $("#inputNum2").val();
				var num3 = $("#inputNum3").val();
				var tem = $("#inputTem").val();
				var cd = $("#inputCd").val();
				
				// 이름 유효성 체크
				if(gfn_isNull(nm)) {
					alert("이름을  입력해주세요.");
					return false;
				}
				
				// 일자 유효성 체크
				if(gfn_isNull(dt)) {
					alert("날짜을 선택해주세요.");
					return false;
				}
				
				// 시각 유효성 체크
				if(gfn_isNull(st)) {
					alert("방문시간을 선택해주세요.");
					return false
				}
				
				// 중료 유효성 체크
				if(gfn_isNull(en)) {
					alert("방문종료를 선택해주세요.");
					return false;
				}
				// 전화번호 유효성 체크
				if(num2.length < 4 || num3.length < 4){
					alert("전화번호를 확인해주세요");
					return false;
				}
				// 체온 유효성 체크
				if(gfn_isNull(tem)) {
					alert("체온을 입력해주세요.");
					return false;
				}
 				// 방문사유 유효성 체크
				if(gfn_isNull(cd)) {
					alert("방문사유를 선택해주세요.");
					return false;
				}
				
 				
				
// 				var num = fn_hpNumConvert($("#inputNum1").val(), $("#inputNum2").val(), $("#inputNum3").val());
				var num1 = fn_hpNumConvert($("#inputNum1").val(), num2, num3);
				
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/visitant/insertVisitant.do' />"); //프로그램 URI
				
				
				
				/* addParam 필수값만 셋팅 후 나머지는 값 있을시 추가 */
				comAjax.addParam("visiNm", nm);
				comAjax.addParam("visiDt", dt);
				comAjax.addParam("visiSt", st);
				comAjax.addParam("visiEn", en);
				comAjax.addParam("visiNum", num1);
				comAjax.addParam("visiTem", tem);
				comAjax.addParam("visiTcd", cd);
				
				
				comAjax.setCallback(fn_insertVisitantCallBack);//콜백 선언
				comAjax.ajax();
			});
		})//end document.ready
	</script>
</body>
</html>