<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
<style>
	.list-row:hover {
		cursor: pointer;
	}
	
	.card-body-wrapper {
		vertical-align: middle !important;
	}
	
	.card-body-checkbox {
		display: block;
		margin: 0 auto;
	}
</style>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- Navbar -->
		<nav class="main-header navbar navbar-expand navbar-white navbar-light"> <!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a></li>
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
							<h1 class="m-0 text-dark"><a href="/erp/sample/sampleBoardPagingList.do">EEP 샘플 게시판</a></h1>
							<b style="color: lightgray;">여러가지 기능을 추가 및 테스트하는 연구개발중인 게시판 입니다..</b><br>
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
							<div class="card-header">
								<h3 class="card-title"><a href="/erp/sample/sampleBoardPagingList.do"><b>EEP 샘플 게시판</b></a></h3><br>
								<b style="color: lightgray;">현재 모든 처리를 Ajax형태로 바꾸는 단계 개발중..</b><br>						
								<div class="card-tools">
									<div class="input-group input-group-sm" style="width: 400px;">
									</div>
								</div>
							</div>
							<!-- /.card-header -->
							
							<div class="card-body">
								<div class="AllScrollbar" style="height: 400px; overflow: auto;">
									<b>업로드/다운로드</b>
									<form id="excelForm" name="excelForm" method="post" enctype="multipart/form-data">
								    	<input style="width: 20%" type="file" class="btn btn-default btn-sm" id="fileInput" name="fileInput">
								    	<button type="button" class="btn btn-primary" onclick="doExcelUploadProcess()">업로드</button>
								    	<button type="button" class="btn btn-warning" onclick="doExcelDownloadProcess()">다운로드</button>
									</form>
									<b>검색기능/글쓰기</b>
									<form method="post" action="/erp/sample/sampleBoardPagingList.do">
										<input style="width: 20%" type="text" name="keyword" class="btn btn-default" value="${map.keyword}" placeholder="제목을 입력해주세요..">
										<input type="submit" class="btn btn-primary " value="조회" >
										<a href='<c:url value="/erp/sample/openSampleInsertPage.do" />' class="btn btn-info">글쓰기</a>	
									</form>
									<hr>
									<!-- JSON 값 확인(아래 확인↓)
									<div id="result"></div> -->
									
									<b>EEP 샘플 게시판 정보(페이징처리)</b>	
									<table id="sampleBoard_table" class="table table-sm">
										<thead style="background-color: rgb(106, 130, 187);">
											<tr>
												<th>게시판 번호</th>
												<th>게시판 제목</th>
												<th>게시판 내용</th>
												<th>게시판 작성자</th>
												<th>게시판 작성일</th>
												<th>게시판 조회수</th>
												<!-- <th>게시판 상세바로보기</th> -->
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${ fn:length(map.list) == 0 }">
													<tr>
														<td colspan="8">게시판이 존재하지 않습니다.</td>
													</tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="list" items="${ map.list }">
														<tr class="list-row">
															<td class="sq">
																<c:out value="${ list.bno }" />
															</td>
															<td>
																<a href="/erp/sample/sampleBoardDetail.do?bno=${ list.bno }"><c:out value="${ list.title }" /></a>
															</td>
															<td>
																<c:out value="${ list.content }" />
															</td>
															<td>
																<c:out value="${ list.writer }" />
															</td>
															<td>
																<fmt:formatDate value="${ list.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/>
															</td>
															<td>
																<c:out value="${ list.viewcnt }" />
															</td>
															<%-- <td>
																<button type="button" class="btn btn-secondary btn-sm" data-toggle="modal" data-target="#exampleModal" data-whatever="넘버[${ list.bno }]">
																	게시판 상세
																</button>
															</td> --%>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
								</div>
								<b style="font-size: 16px;">총 게시물 개수 : <c:out value="${map.count }" /> EA</b>
							</div>
							<!-- /.card-body -->
							
							<!-- pageing -->
							<div class="card-tools" style="margin: auto;">
								<ul class="pagination pagination-sm">
										<!-- 처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
										<c:if test="${map.boardPager.curBlock > 1}">
											<li class="page-item">
												<a a class="page-link" href="javascript:list('1')">[처음]</a>
											</li>
										</c:if>
										
										<!-- 이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
										<c:if test="${map.boardPager.curBlock > 1}">
										<li class="page-item">
											<a class="page-link" href="javascript:list('${map.boardPager.prevPage}')">[이전]</a>
											</li>
										</c:if>
										
										<!-- **하나의 블럭 시작페이지부터 끝페이지까지 반복문 실행 -->
										<c:forEach var="num" begin="${map.boardPager.blockBegin}" end="${map.boardPager.blockEnd}">
											<!-- 현재페이지이면 하이퍼링크 제거 -->
											<c:choose>
												<c:when test="${num == map.boardPager.curPage}">
													<span style="background: lightblue;" class="page-link">${num}</span>&nbsp;
												</c:when>
												<c:otherwise>
													<a class="page-link" href="javascript:list('${num}')">${num}</a>&nbsp;
												</c:otherwise>
											</c:choose>
										</c:forEach>
										
										<!-- 다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
										<c:if test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
										<li class="page-item">
											<a class="page-link" href="javascript:list('${map.boardPager.nextPage}')">[다음]</a>
											</li>
										</c:if>
										
										<!-- 끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
										<c:if test="${map.boardPager.curPage <= map.boardPager.totPage}">
										<li class="page-item">
											<a class="page-link" href="javascript:list('${map.boardPager.totPage}')">[끝]</a>
											</li>
										</c:if>
								</ul>
							</div>
							<!-- /.paging end -->

						</div>
						<!-- /.card -->
					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid --> 
			
			<!-- modal info -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			      <h4 class="modal-title" id="exampleModalLabel">게시판 상세보기</h4>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			      </div>
			      <div class="modal-body">
			        <form>
			          <div class="form-group">
			            <label for="recipient-name" class="control-label">제목</label>
			            <input type="text" class="form-control" id="modalTitle">
			          </div>
			          <div class="form-group">
			            <label for="message-text" class="control-label">내용</label>
			            <textarea class="form-control" id="modalContent"></textarea>
			          </div>
			          <div class="form-group">
			            <label for="message-text" class="control-label">작성자</label>
			            <textarea class="form-control" id="modalWriter"></textarea>
			          </div>
			          <div class="form-group">
			            <label for="message-text" class="control-label">작성일</label>
			            <textarea class="form-control" id="modalDate"></textarea>
			          </div>
			          <div class="form-group">
			            <label for="message-text" class="control-label">조회수</label>
			            <textarea class="form-control" id="modalCount"></textarea>
			          </div>
			        </form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">목록</button>
			        <button type="button" class="btn btn-info btn-sm">수정</button>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- /.modal info -->
		</section>
		
		<!-- /.content -->
		<form id="commonForm"></form>
		</div>
		<form name="frmPopup" id="frmPopup">
			<input type="hidden" name="popupMbrSq" id="popupMbrSq"/>
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
	
	<script type="text/javascript">
	
		//페이지 시작시 자동 실행 func()
		$(document).ready(function() {
			
		});
		
		
		/* $('#exampleModal').on('show.bs.modal', function (event) {
			
			  var button = $(event.relatedTarget); // Button that triggered the modal
			  var recipient = button.data('whatever'); // Extract info from data-* attributes
			  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
			  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
			  var modal = $(this);
			  modal.find('.modal-title').text('게시판 상세내용 ' + recipient);
			  modal.find('.modal-body input').val();
			  
			}) */
		
		//엑셀 업로드 func()
	    function doExcelUploadProcess(){
			
	    	var UploadCheck = confirm("엑셀을 업로드 하시겠습니까?")
	    	var fileValue = $("#fileInput").val();
	    	
	    	if(fileValue == ''){
	    		
	    		alert("선택된 파일이 없습니다. 파일을 선택해주세요.") 
	    		return;
	    		
	    	}else if (UploadCheck == true) { 
	    		
	    		alert("엑셀 업로드를 시작합니다.") 
	    		var excelForm = new FormData(document.getElementById('excelForm'));
	    		
		        $.ajax({
		            url: "/ecxel/uploadExcelFile.do",
		            data: excelForm,
		            processData: false,
		            contentType: false,
		            type: "POST",
		            success: function(data){
		                console.log(data);
		                /* document.getElementById('result').innerHTML = JSON.stringify(data); */
		                alert("엑셀 업로드가 완료되었습니다."); 
		                
		                var comSubmit = new ComSubmit();
						comSubmit.setUrl("<c:url value='/erp/sample/sampleBoardPagingList.do' />");
						comSubmit.submit();
		            }
		        })
		        
	    	}else{
	    		
	    		alert("엑셀 업로드를 취소 했습니다.");
	    		
	    	}
	        
	    }
		
		//엑셀파일 다운로드 func()
	    function doExcelDownloadProcess(){
			
	    	var downCheck = confirm("엑셀을 다운로드 하시겠습니까?"); 
	    	var excelForm = document.excelForm;
	    	
	    	if(downCheck == true){ 
	    		
	    		alert("엑셀 파일을 다운로드 받습니다.");
	    		excelForm.action = "/ecxel/downloadExcelFile.do";
	    		excelForm.submit();
	    		
	    	}else if(downCheck == false){ 
	    		
	    		alert("엑셀 다운로드를 취소 했습니다.");
	    		
	    	}else{
	    		
	    		alert("엑셀 다운로드 에러가 발생했습니다. 관리자에게 문의바랍니다.");
	    		
	    	}
	    	
	    }
		
	    //리스트 페이징 Url 셋팅 func()
		function list(page, keyword){
	    	
			location.href="/erp/sample/sampleBoardPagingList.do?curPage="+page+"&keyword=${map.keyword}";
			
		}
	
	</script>
</body>
</html>