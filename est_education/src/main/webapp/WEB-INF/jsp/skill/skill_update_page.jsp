<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
<%-- 회원 전화번호 3등분 --%>
<c:if test="${ fn:length(memberVo.mbrHpNum) > 0 }">
	<c:set var="hpNum1" value="${ fn:substring(memberVo.mbrHpNum, 0, 3) }" />
	<c:set var="hpNum2" value="${ fn:substring(memberVo.mbrHpNum, 4, 8) }" />
	<c:set var="hpNum3" value="${ fn:substring(memberVo.mbrHpNum, 9, 13) }" />
</c:if>
<c:if test="${ fn:length(memberVo.mbrRltnshpHpNum1) > 0 }">
	<c:set var="rltnshpHpNum1_1" value="${ fn:substring(memberVo.mbrRltnshpHpNum1, 0, 3) }" />
	<c:set var="rltnshpHpNum1_2" value="${ fn:substring(memberVo.mbrRltnshpHpNum1, 4, 8) }" />
	<c:set var="rltnshpHpNum1_3" value="${ fn:substring(memberVo.mbrRltnshpHpNum1, 9, 13) }" />
</c:if>
<c:if test="${ fn:length(memberVo.mbrRltnshpHpNum2) > 0 }">
	<c:set var="rltnshpHpNum2_1" value="${ fn:substring(memberVo.mbrRltnshpHpNum2, 0, 3) }" />
	<c:set var="rltnshpHpNum2_2" value="${ fn:substring(memberVo.mbrRltnshpHpNum2, 4, 8) }" />
	<c:set var="rltnshpHpNum2_3" value="${ fn:substring(memberVo.mbrRltnshpHpNum2, 9, 13) }" />
</c:if>
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
								<h1 class="m-0 text-dark">회원 수정</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<div class="btn-wrapper float-right">
									<button class="btn btn-primary" id="updateBtn">수정</button>
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
									<h3 class="card-title">회원 정보</h3>
								</div>
								<!-- /.card-header -->

						<!-- card-body -->
								<div class="card-body">
									<div class="form-group row">
										<label for="inputselect" class="col-sm-2 col-form-label">
											기술 유형 코드</label>
										<div class="col-sm-4">
										<input type="radio" id= "inputselect1" name="Kinds" value="all"  checked="checked"> 전체 
										<input type="radio" id= "inputselect2" name="Kinds" value="detail"> 상세
										</div>
											
										<label for="inputdylnm"
									class="col-sm-2 col-form-label text-right selectnm" style="display: none;">스킬 유형 이름</label>
										<div id="inputdylnm_box" class="col-sm-4 selectnm"  style="margin-bottom:50px;display: none;">
										<select class="form-control" id="inputdylnm" >
											<option value="OS">OS</option>
											<option value="언어">언어</option>
											<option value="DBMS">DBMS</option>
											<option value="TOOL">TOOL</option>
											<option value="FRAME WORK">FRAME WORK</option>
											<option value="기타">기타</option>
										</select>
										</div>
															
										<label for="inputdylcode"
											class="col-sm-2 col-form-label text-right">스킬 유형 코드</label>
										<div class="col-sm-4" style="margin-bottom:50px">
											<input type="text" class="form-control textcode" name="mbrTypCd"
												id="inputdylcode" placeholder="예) 01" value="${SkillVo.skillTypCd}">
										</div>
										
										<label for="inputdylnm"
											class="col-sm-2 col-form-label text-right textnm">스킬 유형 이름</label>
										<div id = "inputdylnm_box" class="col-sm-4 textnm" style="margin-bottom:50px">
											<input type="text" class="form-control" name="mbrTypCd"
												id="inputdylnm" placeholder="예) OS" value="${SkillVo.skillTypNm}">
										</div>
										
										<label for="inputdylcodedtl"
											class="col-sm-2 col-form-label text-right">스킬 유형 코드 상세</label>
										<div class="col-sm-4" style="margin-bottom:50px">
											<input type="text" class="form-control" name="mbrTypCd"
												id="inputdylcodedtl" placeholder="예) 01" value="${SkillVo.skillTypDtlCd}">
										</div>
										
										<label for="inputdylnmdtl"
											class="col-sm-2 col-form-label text-right">스킬 유형 이름 상세</label>
										<div class="col-sm-4" style="margin-bottom:50px">
											<input type="text" class="form-control" name="mbrTypCd"
												id="inputdylnmdtl" placeholder="예) OS" value="${SkillVo.skillTypDtlNm}">
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
			
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
	//라디오 버튼 으로 전체 상세 정하기
	$("#inputselect1").click(function(){
        $(".textnm").show();
        $(".textcode").attr("readonly",false); //입력불가

        $(".selectnm").hide();
	});
	
	$("#inputselect2").click(function(){
        $(".textnm").hide();
        $(".textcode").attr("readonly",true); //입력불가

        $(".selectnm").show();
	});
	
	$("#inputselect2").click(function(){
        $(".textnm").hide();

        $(".selectnm").show();
	});

	$("#inputdylnm").on("change", function() {
		var nm = $("#inputdylnm option:selected").val();
	    var code;
	    var la ="FRAME WORK";
		switch(nm) {
	    case "OS": 
	        code="01"; break;
	    case "언어": 
	    	code="02"; break;
	    case "DBMS": 
	    	code="03"; break;
	    case "TOOL": 
	    	code="04"; break;
	    case la: 
	    	code="04"; break;	
	    case "기타": 
	    	code="99"; break;
	    default:
	         break;
		}
	    $('#inputdylcode').val(code);
	});		

	
	var skillSq = "${SkillVo.skillSq}";
		$(document).ready(function() {
			function fn_hpNumConvert(num1, num2, num3) {
				if(num2.length < 4 || num3.length < 4) return "";
				
				return num1 + "-" + num2 + "-" + num3;
			}
			
			function fn_dateNullCheck(element) {
				var date = $(element).val();
				if(date === "") return null;
				else			return date;
			}
			
			function fn_isCheckedYn(element) {
				var checked = $(element).is(":checked");
				if(checked)	return 'Y';
				else		return 'N';
			}
			
			function fn_updateMemberCallBack(data) {
				var code = data.code;
				if(code > 0) {	// 정상 추가시 회원 목록 화면으로 이동
					alert("회원 수정이 정상적으로 완료되었습니다.");
					var comSubmit = new ComSubmit();
					comSubmit.setUrl("<c:url value='/skill/openSkillListPage.do' />");
					comSubmit.submit();
				}else {
					alert("회원 수정에 실패하였습니다.");
				}
			}
			
			$("#updateBtn").on("click", function() {
				// 유효성 검사
				
				var code = $("#inputdylcode").val();
				var nm = $("#inputdylnm").val();
				var codedtl = $("#inputdylcodedtl").val();
				var nmdtl = $("#inputdylnmdtl").val();

				if(gfn_isNull(code)) {
					alert("코드를  입력해주세요.");
					return false;
				}
				
				if(gfn_isNull(nm)) {
					alert("이름을 입력해주세요.");
					return false;
				}
				
				if(gfn_isNull(codedtl)) {
					alert("코드상세 입력해주세요.");
					return false
				}
				
				if(gfn_isNull(nmdtl)) {
					alert("이름상제세 입력해주세요.");
					return false;
				}
				
				var comAjax = new ComAjax();
				comAjax.setUrl("<c:url value='/Skill/updateSkill.do' />"); //프로그램 URI
				
				/* addParam 필수값만 셋팅 후 나머지는 값 있을시 추가 */
				comAjax.addParam("skillSq", skillSq);
				comAjax.addParam("skillTypCd", code);
				comAjax.addParam("skillTypNm", nm);
				comAjax.addParam("skillTypDtlCd", codedtl);
				comAjax.addParam("skillTypDtlNm", nmdtl);
				
				comAjax.setCallback(fn_updateMemberCallBack);//콜백 선언
				comAjax.ajax();
			});
		});
	</script>
</body>
</html>