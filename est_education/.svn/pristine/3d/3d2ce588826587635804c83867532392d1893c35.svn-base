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
		<%-- <form method="POST" id="insertForm" action='<c:url value="/member/insertMember.do" />'> --%>
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1 class="m-0 text-dark">신규 장비 등록하기</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<button class="btn btn-primary float-right" id="insertButton">등록</button>
								<a href='<c:url value="/erp/equipment/openEquipmentListPage.do" />' class="btn btn-info float-right" style="margin-right: 10px;">목록으로</a>
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
									<h3 class="card-title">장비 정보</h3>
								</div>
								<!-- /.card-header -->

								<!-- card-body -->
								<div class="card-body">
									<div class="form-group row">
										<label for="inputSq" class="col-sm-2 col-form-label">Sq</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputSq"
												name="eqpmntSq" placeholder="자동입력" readonly>
										</div>
										<label for="inputStsTcd"
											class="col-sm-2 col-form-label text-right">장비 상태</label>
										<div class="col-sm-4">
											<select id="inputStsTcd" class="form-control">
												<option value="정상">정상</option>
												<option value="고장">고장</option>
												<option value="수리중">수리중</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="inputMngNum" class="col-sm-2 col-form-label">장비 관리번호</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="eqpmntMngNum"
												id="inputMngNum" placeholder="BNE-NB-000">
										</div>
										<label for="inputTcd"
											class="col-sm-2 col-form-label text-right">장비 구분</label>
										<div class="col-sm-4">
											<select id="inputTcd" class="form-control">
												<option value="노트북">노트북</option>
												<option value="데스크탑">데스크탑</option>
												<option value="모니터">모니터</option>
												<option value="기타">기타</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="inputBrand" class="col-sm-2 col-form-label">장비 브랜드</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="eqpmntBrand"
												id="inputBrand" placeholder="브랜드명">
										</div>
										
										<label for="inputRgstrDate" class="col-sm-2 col-form-label text-right">등록 일자</label>
										<div class="col-sm-4">
											<input type="Date" class="form-control" name="eqpmntRgstrDate"
												id="inputRgstrDate">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputModel" class="col-sm-2 col-form-label">장비 모델명</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" name="eqpmntModel"
												id="inputModel" placeholder="모델명">
										</div>
										
										<label for="inputRgstrDate" class="col-sm-2 col-form-label text-right">장비 대여 정보</label>
										<div class="col-sm-4">
											<select id="inputIsUse" class="form-control">
												<option value="Y" >Y : 대여중</option>
												<option value="N" >N : 대여가능</option>
												<option value="F" >F : 수리중</option>
												<option value="B" >B : 고장</option>
											</select>
										</div>
										
									</div>
									<div class="form-group row">
										<label for="inputSerial" class="col-sm-2 col-form-label">장비 시리얼넘버</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputSerial"  placeholder="시리얼 넘버">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputInfo" class="col-sm-2 col-form-label">장비 정보</label>
										<div class="col-sm-4">
											<!-- <input type="text" class="form-control" name="eqpmntInfo"
												id="inputInfo" placeholder="테스트 내용"> -->
											<textarea id="inputInfo" rows="3" cols="60" placeholder="테스트 내용"></textarea>
										</div>
									</div>
									
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- right column -->
						<div class="col-md-6">
							<!-- general form elements disabled -->
							
							<!-- /.card -->
						</div>
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


	<!-- 기능 부분 -->
	
	<script>
		 $(document).ready(function() {
			
			 //콜백함수
			function fn_insertEquipmentCallback(data){
				var code = data.code;
				console.log(data);
				if(code>0){
					alert("장비 등록에 성공하였습니다.");
					var comSubmit = new ComSubmit();
					comSubmit.setUrl("<c:url value='/erp/equipment/openEquipmentListPage.do' />");
					comSubmit.submit();
				}else {
					alert("장비 등록에 실패하였습니다.");
				}
			}
			
		
			//등록버튼
			$("#insertButton").on("click", function() {
				// 유효성 검사
				var Sq = $("#inputSq").val();
				var MngNum= $("#inputMngNum").val();
				var Brand = $("#inputBrand").val();
				var Model = $("#inputModel").val();
				var Serial = $("#inputSerial").val();
				var StsTcd = $("#inputStsTcd").val();
				var Tcd = $("#inputTcd").val();
				var IsUse = $("#inputIsUse").val();
				var Info = $("#inputInfo").val();
				var RgstrDate = $("#inputRgstrDate").val();
				var Image = $("inputImage").val();
				
			
				
				// 장비관리번호 유효성 체크
				if(gfn_isNull(MngNum)) {
					alert("장비관리번호를 입력해주세요.");
					return false;
				}
				
				// 브랜드 체크
				if(gfn_isNull(Brand)) {
					alert("브랜드를 입력해주세요.");
					return false;
				}
				
				
				// 모델명 유효성 체크
				if(gfn_isNull(Model)) {
					alert("모델명을 입력해주세요.");
					return false;
				}
				
				// 시리얼번호 유효성 체크
				if(gfn_isNull(Serial)){
					alert("시리얼번호를 입력해주세요");
					return false;
				}
				
				// 장비 정보 유효성 체크
				if(gfn_isNull(Info)){
					alert("장비정보를 입력해주세요");
					return false;
				}
				
				// 장비 등록 일자 유효성 체크
				if(gfn_isNull(RgstrDate)){
					alert("장비 등록일을 선택해주세요");
					return false;
				}
				
				// 대여 가능 여부 유효성 체크
				if(gfn_isNull(IsUse)){
					alert("장비 대여 가능 여부를 선택해주세요");
					return false;
				}
				
				
				
				
				//var eqpmntSq = $("#inputSq").val();
				var eqpmntMngNum = $("#inputMngNum").val();
				var eqpmntBrnd = $("#inputBrand").val();
				var eqpmntMdl = $("#inputModel").val();
				var eqpmntSrl = $("#inputSerial").val();
				var eqpmntStsCd = $("#inputStsTcd").val();
				var eqpmntIsUse = $("#inputIsUse").val();
				var eqpmntInfo = $("#inputInfo").val();
				var eqpmntTypCd = $("#inputTcd").val();
				var eqpmntRgstrDate = $("#inputRgstrDate").val();
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/erp/equipment/insertEquipment.do' />"); //프로그램 URI
				
				/* addParam */
				comAjax.addParam("eqpmntMngNum", eqpmntMngNum);
				comAjax.addParam("eqpmntBrnd", eqpmntBrnd);
				comAjax.addParam("eqpmntMdl", eqpmntMdl);
				comAjax.addParam("eqpmntSrl", eqpmntSrl);
				comAjax.addParam("eqpmntStsCd", eqpmntStsCd);
				comAjax.addParam("eqpmntIsUse", eqpmntIsUse);
				comAjax.addParam("eqpmntInfo", eqpmntInfo);
				comAjax.addParam("eqpmntTypCd", eqpmntTypCd);
				comAjax.addParam("eqpmntRgstrDate", eqpmntRgstrDate);
			
				
			 	
				
				comAjax.setCallback(fn_insertEquipmentCallback);//콜백 선언
				comAjax.ajax();
			});
		});
	</script>



</body>
</html>