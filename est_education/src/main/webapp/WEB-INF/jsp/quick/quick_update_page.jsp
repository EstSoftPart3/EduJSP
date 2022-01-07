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
								<h1 class="m-0 text-dark">회원 수정</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<div class="btn-wrapper float-right">
									<a href='<c:url value="/quick/openQuickListPage.do" />' class="btn btn-info">목록으로</a>
									<button class="btn btn-primary" id="updateBtn">수정</button>
									<button class="btn btn-danger" id="deleteBtn">삭제</button>
								</div>
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
									<h3 class="card-title">글 수정</h3>
								</div>
								<!-- /.card-header -->

								<!-- card-body -->
								<div class="card-body">
									<div class="form-group row">
									
										<label for="inputSq" class="col-sm-2 col-form-label">글번호</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputSq"
												 placeholder="Sq" value="${ quickOne.qckSq }" readonly>
										</div>
										
										<label for="inputDtm" class="col-sm-2 col-form-label">일시</label>
										<div class="col-sm-4">
											<input type="date" class="form-control" id="inputDtm"
												 value="${ quickOne.qckDtm }">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputNm" class="col-sm-2 col-form-label ">수령자</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" id="inputNm" 
												value="${ quickOne.qckRcpintNm }">
										</div>
										<label for="inputTcd" class="col-sm-2 col-form-label">배송상품</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" 
												id="inputTcd"  value="${ quickOne.qckArtclTcd }">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputStrtArea"
											class="col-sm-2 col-form-label ">출발지</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" 
												id="inputStrtArea"  value="${ quickOne.qckStrtArea }">
										</div>
										<label for="inputEndArea" class="col-sm-2 col-form-label">도착지</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" 
												id="inputEndArea"  value="${ quickOne.qckEndArea }">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputMemo"
											class="col-sm-2 col-form-label ">비고</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" 
												id="inputMemo"  value="${ quickOne.qckMemo }">
										</div>
									</div>
									<div class="form-group row">
										<label for="inputPaymntAmt" class="col-sm-2 col-form-label">결제금액</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" 
												id="inputPaymntAmt"  value="${ quickOne.qckPaymntAmt }">
										</div>
										<label for="inputPaymntDt" class="col-sm-2 col-form-label">결제일자</label>
										<div class="col-sm-4">
											<input type="date" class="form-control" 
												id="inputPaymntDt" value="${ quickOne.qckPaymntDt }">
										</div>
										<label for="inputPaymntStts"
											class="col-sm-2 col-form-label ">결제상태</label>
										<div class="col-sm-4">
											<input type="text" class="form-control" 
												id="inputPaymntStts"  value="${ quickOne.qckPaymntStts }">
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
		
 		var quickSq = "${quickOne.qckSq}"    //스트링으로 오니까  숫자처리 해야함 
		

		$(document).ready(function() {
			
				 
			$("#updateBtn").on("click", function() {
			
				// 폼에있는 value값 가져오기
				var qckSq = $("#inputSq").val();
				var qckDtm = $("#inputDtm").val();
				var qckRcpintNm = $("#inputNm").val();
				var qckArtclTcd = $("#inputTcd").val();
				var qckStrtArea = $("#inputStrtArea").val();
				var qckEndArea = $("#inputEndArea").val();
				var qckMemo = $("#inputMemo").val();
				var qckPaymntAmt = $("#inputPaymntAmt").val();
				var qckPaymntDt = $("#inputPaymntDt").val();
				var qckPaymntStts = $("#inputPaymntStts").val();
				
				// dtm 유효성 체크
				if(gfn_isNull(qckDtm)) {
					alert("일시를  입력해주세요.");
					return false;
				}
				// name 유효성 체크
				if(gfn_isNull(qckRcpintNm)) {
					alert("수령자를 입력해주세요.");
					return false;
				}
				// artcltcd 유효성 체크
				if(gfn_isNull(qckArtclTcd)) {
					alert("배송상품을 입력해주세요.");
					return false
				}
				// strtarea 유효성 체크
				if(gfn_isNull(qckStrtArea)) {
					alert("출발지를 입력해주세요.");
					return false;
				}
				// endarea 유효성 체크
				if(gfn_isNull(qckEndArea)) {
					alert("도착지를 입력해주세요.");
					return false;	
				}
				
				var qckSq = $("#inputSq").val();
				var qckDtm = $("#inputDtm").val();
				var qckRcpintNm = $("#inputNm").val();
				var qckArtclTcd = $("#inputTcd").val();
				var qckStrtArea = $("#inputStrtArea").val();
				var qckEndArea = $("#inputEndArea").val();
				var qckMemo = $("#inputMemo").val();
				var qckPaymntAmt = $("#inputPaymntAmt").val();
				var qckPaymntDt = $("#inputPaymntDt").val();
				var qckPaymntStts = $("#inputPaymntStts").val();
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/quick/updateQuick.do' />"); 
				
				
				comAjax.addParam("qckSq", qckSq);
				comAjax.addParam("qckDtm", qckDtm);
				comAjax.addParam("qckRcpintNm", qckRcpintNm);
				comAjax.addParam("qckArtclTcd", qckArtclTcd);
				comAjax.addParam("qckStrtArea", qckStrtArea);
				comAjax.addParam("qckEndArea", qckEndArea);
				comAjax.addParam("qckMemo", qckMemo);
				comAjax.addParam("qckPaymntAmt", qckPaymntAmt);
				comAjax.addParam("qckPaymntDt", qckPaymntDt);
				comAjax.addParam("qckPaymntStts", qckPaymntStts);
				
//				console.log(qckSq); //화면단에서 값이 잘넘어가는지 확인

				comAjax.setCallback(fn_updateQuickCallBack); //콜백 선언
				comAjax.ajax();
			});
			
			$("#deleteBtn").on("click", function() {
				if(confirm("정말 삭제하시겠습니까?")) {
					var comAjax = new ComAjax();
					comAjax.setUrl("<c:url value='/quick/deleteQuick.do' />");
					comAjax.addParam("delete", quickSq);
					comAjax.setCallback(fn_deleteCallback);
				comAjax.ajax();
				}
			});
		});     
 		
 			function fn_updateQuickCallBack(data) {
				var code = data.code;
				
				if(code > 0) {
					alert("글 수정이 정상적으로 완료되었습니다.");
					var comSubmit = new ComSubmit();
					comSubmit.setUrl("<c:url value='/quick/openQuickListPage.do' />"); //이동할 페이지 지정
					comSubmit.addParam("update", quickSq);
					comSubmit.submit();
				}else {
					alert("글 수정에 실패하였습니다.");
				}
			} 
 			 
			function fn_deleteCallback(data) {
				var code = data.code;
				if(code > 0) {
					alert("회원이 정상적으로 삭제되었습니다.");
					var comSubmit = new ComSubmit();
					comSubmit.setUrl("<c:url value='/quick/openQuickListPage.do' />");
					comSubmit.submit();
				}else {
					alert("회원 삭제에 실패하였습니다.");
				}
			} 
 			
		 
		
	</script>
</body>
</html>