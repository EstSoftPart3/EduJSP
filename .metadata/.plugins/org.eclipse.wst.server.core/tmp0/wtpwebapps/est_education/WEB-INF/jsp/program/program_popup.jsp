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

#program_table td{
	height: 30px;
}

table .status{
	width: 5%;
	text-align: center;
}

#program_table .checkbox-wrapper{
	width: 5%;
}

#program_table .programGrp{
	width: 8%;
}

#program_table .programCd{
	width: 10%;
}

#program_table .programNm{
	width: 5%;
	text-align: center;
}

#program_table .programSrc{
	width: 5%;
	text-align: center;
	vertical-align: middle;
}



#program_table .programIsUse{
	width: 5%;
	text-align: center;
	vertical-align: middle;
}

#program_table .programNote{
	width: 5%;
	text-align: center;
}

#program_table .programGrpCd{
	display:none;
} 

</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<%@ include file="/WEB-INF/jsp/comn/component/include-sideBar.jspf"%>
		
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">프로그램 그룹</h1>
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
									<h3 class="card-title">프로그램 그룹 선택</h3>
									<span style="margin-left: 5px; font-size: 13px; color: gray;"> ※ 선택 : 클릭</span>

							<!-- card-program List -->
							<div class="card-body">
								<div style="height: 100%; overflow: auto;">
									<table id="programPop_table" class="table table-hover table-striped table-bordered text-nowrap">
										<thead>
											<tr>
												<th class="status">프로그램 그룹 이름</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(programPop) == 0 }">
													<tr>
														<td colspan="8">조회 결과가 없습니다</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="Pop" items="${ programPop }">
														<tr class="list-row">
															<td class='codeNm'>
																<a href="javascript:sendChildValue('${ Pop.codeNm }')">${ Pop.codeNm }</a>
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
						</div>
						</div>
						</div>
						</div>				 
				</section>

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

function sendChildValue(codeNm){

	opener.setChildValue(codeNm);

	window.close();

	}

</script>
</body>
</html>