<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
<style>
.text-right {
	text-align: right;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
								<h1 class="m-0 text-dark">업무 > 배송 관리 > 배송 등록 </h1>
								<b style="color: lightblack;">배송 등록을 할 수 있습니다.</b><br>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<div class="btn-wrapper float-right">
									<!-- <button class="btn btn-primary" id="updateBtn">수정</button>
									<button class="btn btn-danger" id="deleteBtn">삭제</button> -->
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
	<form name="insert" style="width: 50%; margin: auto;">
		<div class="form-group">
       	<label for="shpngDate">일시</label>
       	<input type="date" class="form-control" id="shpngDate" name="shpngDate" >
       	</div>
		<div class="form-group">
       	<label for="shpngRcpnt">수령인</label>
       	<input type="text" class="form-control" id="shpngRcpnt" name="shpngRcpnt" placeholder="수령인을 입력하세요.">
       	</div>
   		<div class="form-group">
   		<label for="shpngShop">구매처</label>
       	<input type="text" class="form-control" id="shpngShop" name="shpngShop" placeholder="구매처를 입력해주세요">
   		</div>
   		<div class="form-group">
   		<label for="shpngShopPhneNmbr">구매처 전화번호</label>
       	<input type="text" class="form-control" id="shpngShopPhneNmbr" name="shpngShopPhneNmbr" placeholder="구매처의 전화번호를 입력해주세요">
        </div>
        <div class="form-group">
       	<label for="shpngOrgn">출발지</label>
       	<input type="text" class="form-control" id="shpngOrgn" name="shpngOrgn" placeholder="배송(출발)지를 입력해주세요">
       	</div>
   		<div class="form-group">
   		<label for="shpngDstnt">도착지</label>
       	<input type="text" class="form-control" id="shpngDstnt" name="shpngDstnt" placeholder="수령(도착)지를 입력해주세요">
   		</div>
   		<div class="form-group">
   		<label for="shpngGoods">배송 상품</label>
       	<input type="text" class="form-control" id="shpngGoods" name="shpngGoods" placeholder="상품명을 입력해주세요">
        </div>
        <div class="form-group">
       	<label for="shpngCount">상품 개수</label>
       	<input type="text" class="form-control" id="shpngCount" name="shpngCount" placeholder="개수를 입력해주세요">
       	</div>
   		<div class="form-group">
   		<label for="shpngCountAmnt">상품 개당 가격</label>
       	<input type="text" class="form-control" id="shpngCountAmnt" name="shpngCountAmnt" placeholder="개당 가격을 입력해주세요">
       	</div>
       	<div class="form-group">
       	<input type="button" class="btn btn-primary" id="calculate" value="계산">
   		</div>
   		<div class="form-group">
   		<label for="shpngAllAmnt">총 결제 금액</label>
       	<input type="text" class="form-control" id="shpngAllAmnt" name="shpngAllAmnt" readonly="readonly" >
        </div>
        <div class="form-group">
       	<label for="shpngPymntStts">결제 상태</label>
       	<select id="codePymntStts" class="form-control">
		<c:forEach var="code" items="${codePymntStts}">
		<option value="${code.codeComCd}">${code.codeNm}</option>
		</c:forEach>
		</select>
       	</div>
       	<div id="sttsMsg">
		
		</div>
   		<div class="form-group">
   		<label for="shpngPymntMthd">결제 방식</label>
   		<select id="codePymntMthd" class="form-control">
		<c:forEach var="code" items="${codePymntMthd}">
		<option value="${code.codeComCd}">${code.codeNm}</option>
		</c:forEach>
		</select>
   		</div>
   		<div class="form-group">
   		<label for="shpngPymntDate">결제 일자</label>
       	<input type="date" class="form-control" id="shpngPymntDate" name="shpngPymntDate" >
        </div>
        <div class="form-group">
        <label for="shpngContent">비고</label>
        <textarea class="form-control" id="shpngContent" name="shpngContent" rows="10" placeholder="배송 정보를 입력해주세요."></textarea>
   	    </div>
      
		<div class="form-group" style="text-align:center;">
			<input type="hidden" name="shpngSq"  >
			<input type="reset" class="btn btn-danger" value="초기화" >&nbsp;&nbsp;
			<button type="button" id="insertshipping" class="btn btn-info">등록</button>&nbsp;&nbsp;
			<a href='<c:url value="/erp/shipping/openShippingListPage.do" />' class="btn btn-warning">뒤로가기</a>
		</div>
	</form>
		
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
		<aside class="control-sidebar control-sidebar-dark"><!-- Control sidebar content goes here --></aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf"%>
	
	<script>
	
		//페이지 로딩시 함수 지정
	 	$(document).ready(function() {	
	 		
	 	});
		
		// 총 결제 금액 계산 이벤트
		$("#calculate").on("click", function() {
			var shpngCount = $("#shpngCount").val();
			var shpngCountAmnt = $("#shpngCountAmnt").val();
			var shpngAllAmnt = shpngCount * shpngCountAmnt;
			
			console.log("결과값 : " + shpngAllAmnt);
			
			if(gfn_isNull(shpngCount)) {
				alert("상품 개수를 입력해주세요");
				return false;
			}else if(gfn_isNull(shpngCountAmnt)) {
				alert("개당 가격을 입력해주세요");
				return false;
			}else{

	            alert("계산이 완료되었습니다.");

	            $('input[name=shpngAllAmnt]').attr('value',shpngAllAmnt);
			}
	          
		});
		
		//결제 상태 select박스 클릭시 이벤트 발생.
		$("#codePymntStts").on("change", function() {
			
			var shpngPymntStts = $("#codePymntStts").val();
			var sttsMsg = "결제 상태가 완료시에만 결제 일자가 활성화 됩니다."
			document.getElementById("sttsMsg").style.color = "red";
			
			if(shpngPymntStts == "PAY_STTTS_0002" || shpngPymntStts == "PAY_STTTS_0003" || shpngPymntStts == "PAY_STTTS_0004"){
				
				$("#shpngPymntDate").attr("readonly", true);
				$("#codePymntMthd").attr("disabled", "true");
			    document.getElementById("sttsMsg").innerHTML=sttsMsg;
			    
			}else{
				
				$("#shpngPymntDate").removeAttr("readonly");
				$("#codePymntMthd").removeAttr("disabled");
				document.getElementById("sttsMsg").innerHTML= "";
				
			}
			
		});
		
		//게시판 정보 저장 이벤트
		$("#insertshipping").on("click", function() {
			
			var shpngRcpnt = $("#shpngRcpnt").val();
			var shpngShop = $("#shpngShop").val();
			var shpngShopPhneNmbr = $("#shpngShopPhneNmbr").val();
			var shpngGoods = $("#shpngGoods").val();
			var shpngCount = $("#shpngCount").val();
			var shpngCountAmnt = $("#shpngCountAmnt").val();
			var shpngAllAmnt = $("#shpngAllAmnt").val();
			var shpngPymntStts = $("#codePymntStts").val();
			var shpngDate = $("#shpngDate").val();
			var shpngPymntDate = $("#shpngPymntDate").val();
			var shpngPymntMthd = $("#codePymntMthd").val();
			var shpngOrgn = $("#shpngOrgn").val();
			var shpngDstnt = $("#shpngDstnt").val();
			var shpngContent = $("#shpngContent").val();
			
			if(gfn_isNull(shpngRcpnt)){
				alert("수령인을 입력해주세요.");
				return false;
			}else{

				var comAjax = new ComAjax();
				
	            comAjax.setUrl("<c:url value='/erp/shipping/shippingInsert.do' />");

	            comAjax.addParam("shpngRcpnt", shpngRcpnt);
	            comAjax.addParam("shpngShop", shpngShop);
	            comAjax.addParam("shpngShopPhneNmbr", shpngShopPhneNmbr);
	            comAjax.addParam("shpngGoods", shpngGoods);
	            comAjax.addParam("shpngCount", shpngCount);
	            comAjax.addParam("shpngCountAmnt", shpngCountAmnt);
	            comAjax.addParam("shpngAllAmnt", shpngAllAmnt);
	            comAjax.addParam("shpngPymntStts", shpngPymntStts);
	            comAjax.addParam("shpngDate", shpngDate);
	            comAjax.addParam("shpngPymntDate", shpngPymntDate);
	            comAjax.addParam("shpngPymntMthd", shpngPymntMthd);
	            comAjax.addParam("shpngOrgn", shpngOrgn);
	            comAjax.addParam("shpngDstnt", shpngDstnt);
	            comAjax.addParam("shpngContent", shpngContent);
	           
 	            comAjax.setCallback(fn_shippingListCallBack);
 	            
	            comAjax.ajax();
			}
			
			
		});
		
		
		//게시판 저장 후 게시판 목록으로 CALLBACK 이벤트
		function fn_shippingListCallBack() {
			
                alert("배송 등록되었습니다.");
                var comSubmit = new ComSubmit();
                comSubmit.setUrl("<c:url value='/erp/shipping/openShippingListPage.do'/>");
                comSubmit.submit();
                
        }
		
		
		
	</script>
</body>
</html>