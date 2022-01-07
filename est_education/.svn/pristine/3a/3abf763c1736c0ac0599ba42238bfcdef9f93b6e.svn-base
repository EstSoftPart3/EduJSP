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
   text-align: center;
}

#program_table .programNm{
   width: 5%;
   text-align: center;
}

#program_table .srcPath{
   width: 5%;
   text-align: center;
   vertical-align: middle;
}

#program_table .isUse{
   width: 1%;
   text-align: center;
   vertical-align: middle;
}

#program_table .not{
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
                     <h1 class="m-0 text-dark">PRACTICE > HR Management</h1>
                     <span style="font-size: 12px; color: gray;">인사관리 페이지입니다.</span>
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
                        <div class="col-sm-10">
                           <h3 class="card-title">인사관리</h3>
                        </div>
                       
                        <div class="col-sm-2">
                           <div class="float-right">
                              <input type="button" value="저장" id="hmnRsrcsSttstcsSave" class="btn btn-default" >
                              <input type="button" value="추가" id="humanresourcesInsert" class="btn btn-default" >
                              <input type="button" value="취소" id="humanresourcesCancel" class="btn btn-default" >
                           </div>
                        </div>
                     </div>
                     <!-- /.card-header -->
                     
      <!-- card-hmnRsrcsSttstcs List -->
                     <div class="card-body">
                        <div style="height: 100%; overflow: auto;">
                           <table id="hr_table" class="table table-hover table-striped table-bordered text-nowrap">
                              <thead>
                                 <tr>
                                 	
                                 	<th class="status">상태</th>
                                    <th class='hmnRsrcsSttstcsDt'>일자</th>
                                    
                                    <th class='hmnRsrcsSttstcsSriNtAc'>사람인_공고_지원자</th>
                                    <th class='hmnRsrcsSttstcsSriNtItv'>사람인_공고_대상자</th>
                                    <th class='hmnRsrcsSttstcsJkNtAc'>잡코리아_공고_지원자</th>
                                    <th class='hmnRsrcsSttstcsJkNtItv'>잡코리아_공고_대상자</th>
                                    
                                    <th class='hmnRsrcsSttstcsSriSrcRs'>사람인_인재검색_결과</th>
                                    <th class='hmnRsrcsSttstcsSriSrcSg'>사람인_인재검색_제안</th>
                                    <th class='hmnRsrcsSttstcsSriSrcAp'>사람인_인재검색_수락</th>
                                    <th class='hmnRsrcsSttstcsSriSrcAt'>사람인_인재검색_참석</th>
                                    <th class='hmnRsrcsSttstcsSriSrcAs'>사람인_인재검색_불참</th>
                                    <th class='hmnRsrcsSttstcsSriSrcCc'>사람인_인재검색_취소</th>
                                    
                                    <th class='hmnRsrcsSttstcsJkSrcRs'>잡코리아_인재검색_결과</th>
                                    <th class='hmnRsrcsSttstcsJkSrcSg'>잡코리아_인재검색_제안</th>
                                    <th class='hmnRsrcsSttstcsJkSrcAp'>잡코리아_인재검색_수락</th>
                                    <th class='hmnRsrcsSttstcsJkSrcAt'>잡코리아_인재검색_참석</th>
                                    <th class='hmnRsrcsSttstcsJkSrcAs'>잡코리아_인재검색_불참</th>
                                    <th class='hmnRsrcsSttstcsJkSrcCc'>잡코리아_인재검색_취소</th>
                                    
                                    <th class='hmnRsrcsSttstcsNt'>특이사항</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:choose>
                                    <c:when test="${ fn:length(humanresourcesList) == 0 }">
                                       <tr>
                                          <td colspan="18">조회 결과가 없습니다</td>
                                       </tr>
                                    </c:when>
                                    <c:otherwise>
                                       <c:forEach var="hmnRsrcsSttstcs" items="${ humanresourcesList }">
                                          <tr class="list-row">
                                          
                                          	<td class="status" data-status="R">
															
											</td>
                                             
                                             <td class='hmnRsrcsSttstcsDt'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsDt }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsDt }" /></p>
                                                <input name="hmnRsrcsSttstcsDt" class="hmnRsrcsSttstcsDt" type="hidden" value="${hmnRsrcsSttstcs.hmnRsrcsSttstcsDt}">
                                                
                                             </td>
                                             
                                             <td class='hmnRsrcsSttstcsSriNtAc'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriNtAc }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriNtAc }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsSriNtItv'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriNtItv }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriNtItv }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsJkNtAc'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkNtAc }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkNtAc }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsJkNtItv'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkNtItv }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkNtItv }" /></p>
                                             </td>
                                             
                                             <td class='hmnRsrcsSttstcsSriSrcRs'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcRs }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcRs }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsSriSrcSg'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcSg }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcSg }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsSriSrcAp'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcAp }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcAp }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsSriSrcAt'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcAt }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcAt }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsSriSrcAs'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcAs }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcAs }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsSriSrcCc'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcCc }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsSriSrcCc }" /></p>
                                             </td>
                                             
                                             <td class='hmnRsrcsSttstcsJkSrcRs'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcRs }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcRs }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsJkSrcSg'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcSg }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcSg }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsJkSrcAp'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcAp }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcAp }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsJkSrcAt'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcAt }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcAt }" /></p>
                                             </td>
                                             <td class='hmnRsrcsSttstcsJkSrcAs'>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcAs }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcAs }" /></p>
                                             </td>
                                             <td class=hmnRsrcsSttstcsJkSrcCc>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcCc }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsJkSrcCc }" /></p>
                                             </td>
                                             
                                             <td class=hmnRsrcsSttstcsNt>
                                                <p class='rowColumn' contenteditable='false' data-default='${ hmnRsrcsSttstcs.hmnRsrcsSttstcsNt }'><c:out value="${ hmnRsrcsSttstcs.hmnRsrcsSttstcsNt }" /></p>
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
                  
                  <!-- /.card-program List -->
                  
                  <!-- card-programAuth List -->
                  <div class="card" style="height: auto; overflow: auto;">
                     <div class="card-header">
                        <h3 class="card-title row">통계 관리</h3>
                         <div class="card-tools" style="margin: auto;">
                           <div class="input-group input-group-sm">
                             	  게시기간 : <input type="date" id="startDt" name="startDt"  value="${startDt}">
                             	  ~ <input type="date" id="endDt" name="endDt"  value="${endDt}"> 
                              <div class="input-group-append">
                                 <button id="button_sch" type="button" class="btn btn-default">
                                    <i class="fas fa-search"></i>
                                 </button>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="card-body">
                        <div style="height: auto; overflow: auto;">
                           <table id="hmnRsrcsSttstcsAuth_table" class="table table-hover table-striped table-bordered text-nowrap">
                              <thead>
                                 <tr>

                                    <th class='hmnRsrcsSttstcsSriNtAc'>사람인_공고_지원자</th>
                                    <th class='hmnRsrcsSttstcsSriNtItv'>사람인_공고_대상자</th>
                                    <th class='hmnRsrcsSttstcsJkNtAc'>잡코리아_공고_지원자</th>
                                    <th class='hmnRsrcsSttstcsJkNtItv'>잡코리아_공고_대상자</th>
                                    
                                    <th class='hmnRsrcsSttstcsSriSrcRs'>사람인_인재검색_결과</th>
                                    <th class='hmnRsrcsSttstcsSriSrcSg'>사람인_인재검색_제안</th>
                                    <th class='hmnRsrcsSttstcsSriSrcAp'>사람인_인재검색_수락</th>
                                    <th class='hmnRsrcsSttstcsSriSrcAt'>사람인_인재검색_참석</th>
                                    <th class='hmnRsrcsSttstcsSriSrcAs'>사람인_인재검색_불참</th>
                                    <th class='hmnRsrcsSttstcsSriSrcCc'>사람인_인재검색_취소</th>
                                    
                                    <th class='hmnRsrcsSttstcsJkSrcRs'>잡코리아_인재검색_결과</th>
                                    <th class='hmnRsrcsSttstcsJkSrcSg'>잡코리아_인재검색_제안</th>
                                    <th class='hmnRsrcsSttstcsJkSrcAp'>잡코리아_인재검색_수락</th>
                                    <th class='hmnRsrcsSttstcsJkSrcAt'>잡코리아_인재검색_참석</th>
                                    <th class='hmnRsrcsSttstcsJkSrcAs'>잡코리아_인재검색_불참</th>
                                    <th class='hmnRsrcsSttstcsJkSrcCc'>잡코리아_인재검색_취소</th>
                                    
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
                  <!-- /.card-programAuth List -->
               </div>
               <!-- /.card -->
            </div>
            <!-- /.row -->
         </div>
         <!-- /.container-fluid --> 
      </section>
      <!-- /.content -->
         
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

<!-- ------------------------------------------------------------------------------------------------------------------------------- -->
<script>

// 추가버튼 이벤트 바인딩
$("#humanresourcesInsert").on("click", function() {

    var table  = document.getElementById("hr_table");
    var row    = table.insertRow();//로우 추가 
    var cell1  = row.insertCell(0);
    var cell2  = row.insertCell(1);
    var cell3  = row.insertCell(2);
    var cell4  = row.insertCell(3);
    var cell5  = row.insertCell(4);
    var cell6  = row.insertCell(5);
    var cell7  = row.insertCell(6);
    var cell8  = row.insertCell(7);
    var cell9  = row.insertCell(8);
    var cell10 = row.insertCell(9);
    var cell11 = row.insertCell(10);
    var cell12 = row.insertCell(11);
    var cell13 = row.insertCell(12);
    var cell14 = row.insertCell(13);
    var cell15 = row.insertCell(14);
    var cell16 = row.insertCell(15);
    var cell17 = row.insertCell(16);
    var cell18 = row.insertCell(17);
    var cell19 = row.insertCell(18);
    
    row.className = "list-row";
    
    cell1.innerHTML = "추가";
    cell1.setAttribute('class', 'status');
    cell1.setAttribute('data-status', 'I');
    
    cell2.innerHTML = "<p class='rowColumn' contenteditable='true'></p>"; //contenteditable=true로 줌으로써 div 내에서 편집가능하게 함
    cell2.setAttribute('class', 'hmnRsrcsSttstcsDt');
    
    cell3.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";//setAttribute 메소드의 기본 데이터 타입 값을 전달
    cell3.setAttribute('class', 'hmnRsrcsSttstcsSriNtAc');//class 이름을 hmnRsrcsSttstcsSriNtAc로 설정(.setAttribute(name ,vlaue))
    
    cell4.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell4.setAttribute('class', 'hmnRsrcsSttstcsSriNtItv');
    
    cell5.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell5.setAttribute('class', 'hmnRsrcsSttstcsJkNtAc');
    
    cell6.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell6.setAttribute('class', 'hmnRsrcsSttstcsJkNtItv');
    
    cell7.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell7.setAttribute('class', 'hmnRsrcsSttstcsSriSrcRs');
    
    cell8.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell8.setAttribute('class', 'hmnRsrcsSttstcsSriSrcSg');
    
    cell9.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell9.setAttribute('class', 'hmnRsrcsSttstcsSriSrcAp');
    
    cell10.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell10.setAttribute('class', 'hmnRsrcsSttstcsSriSrcAt');
    
    cell11.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell11.setAttribute('class', 'hmnRsrcsSttstcsSriSrcAs');
    
    cell12.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell12.setAttribute('class', 'hmnRsrcsSttstcsSriSrcCc');
    
    cell13.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell13.setAttribute('class', 'hmnRsrcsSttstcsJkSrcRs');
    
    cell14.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell14.setAttribute('class', 'hmnRsrcsSttstcsJkSrcSg');
    
    cell15.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell15.setAttribute('class', 'hmnRsrcsSttstcsJkSrcAp');
    
    cell16.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell16.setAttribute('class', 'hmnRsrcsSttstcsJkSrcAt');
    
    cell17.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell17.setAttribute('class', 'hmnRsrcsSttstcsJkSrcAs');
    
    cell18.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell18.setAttribute('class', 'hmnRsrcsSttstcsJkSrcCc');
    
    cell19.innerHTML = "<p class='rowColumn' contenteditable='true'></p>";
    cell19.setAttribute('class', 'hmnRsrcsSttstcsNt');

});

//취소 이벤트
$("#humanresourcesCancel").on("click", function() {
		showSearchList();
		
	});

//focusout: 특정 엘리먼트가 선택된 경우에 해당 엘리먼트를 벋어나는 경우 focus out이 발생하여 이벤트를 동작
$(document).on("focusout", "table p", function() {
		
	if($(this).parents("tr").find(".status").data("status") == "U") {
			
		checkChangeCell($(this));
	}
});
	
function checkChangeCell(cell) {
		
		var changeCell = 0;
 		
		if($(cell).data("default") == $(cell).html().trim()) {
			$(cell).prop("contenteditable", false);
		}
		
 		$(cell).parents("tr").find("p").each(function(i) {
			
 			var defaultText = $(this).data("default");
 			var changeText = $(this).html().trim();
 			
 			if(defaultText != changeText) {
 				
 				changeCell++; 
 				
 			}
		})
		
		if(changeCell <= 0) {
			
			var statusCell = $(cell).parents("tr").find("td.status");
 			
 			statusCell.html("");
 			
 			statusCell.data("status", "R"); 
 			
		}
	}
	
//게시판에 뿌려줄 데이터를 가져옴
function showSearchList() {
		
	var dt;
		$.ajax({
			url : '/humanresources/searchHumanresources.do',
	        type: 'POST',
	        data: dt=1,
	        dataType:'json',
	        contentType:"application/json;charset=UTF-8",
	        success: function(data) {
				
	        	showHumanresourcesList(data);
	        	
	        },
	        error: function(x, e) {
	            //err msg 출력
	            $.failMsg('error');
	        }
		});
	}

//가져온 데이터를 뿌려줌
function showHumanresourcesList(data) {
	
	var humanresourcesList = data.humanresourcesList;
	
	var body = $("#hr_table tbody");
	body.empty();
	
	if(humanresourcesList.length > 0) {
		
		$.each(humanresourcesList, function(index, value) {
			
			str = "<tr class='list-row'>"
				+	"<td class='status' data-status='R'> </td>"
				+	"<td class='hmnRsrcsSttstcsDt'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsDt + "'>" + value.hmnRsrcsSttstcsDt + "</p>"
				+	"</td>"
				
				+	"<td class='hmnRsrcsSttstcsSriNtAc'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriNtAc + "'>" + value.hmnRsrcsSttstcsSriNtAc + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsSriNtItv'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriNtItv + "'>" + value.hmnRsrcsSttstcsSriNtItv + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsJkNtAc'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkNtAc + "'>" + value.hmnRsrcsSttstcsJkNtAc + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsJkNtItv'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkNtItv + "'>" + value.hmnRsrcsSttstcsJkNtItv + "</p>"
				+	"</td>"
				
				+	"<td class='hmnRsrcsSttstcsSriSrcRs'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcRs + "'>" + value.hmnRsrcsSttstcsSriSrcRs + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsSriSrcSg'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcSg + "'>" + value.hmnRsrcsSttstcsSriSrcSg + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsSriSrcAp'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcAp + "'>" + value.hmnRsrcsSttstcsSriSrcAp + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsSriSrcAt'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcAt + "'>" + value.hmnRsrcsSttstcsSriSrcAt + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsSriSrcAs'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcAs + "'>" + value.hmnRsrcsSttstcsSriSrcAs + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsSriSrcCc'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcCc + "'>" + value.hmnRsrcsSttstcsSriSrcCc + "</p>"
				+	"</td>"
				
				+	"<td class='hmnRsrcsSttstcsJkSrcRs'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcRs + "'>" + value.hmnRsrcsSttstcsJkSrcRs + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsJkSrcSg'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcSg + "'>" + value.hmnRsrcsSttstcsJkSrcSg + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsJkSrcAp'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcAp + "'>" + value.hmnRsrcsSttstcsJkSrcAp + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsJkSrcAt'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcAt + "'>" + value.hmnRsrcsSttstcsJkSrcAt + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsJkSrcAs'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcAs + "'>" + value.hmnRsrcsSttstcsJkSrcAs + "</p>"
				+	"</td>"
				+	"<td class='hmnRsrcsSttstcsJkSrcCc'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcCc + "'>" + value.hmnRsrcsSttstcsJkSrcCc + "</p>"
				+	"</td>"
				
				+	"<td class='hmnRsrcsSttstcsNt'>"
				+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsNt + "'>" + value.hmnRsrcsSttstcsNt + "</p>"
				+	"</td>"
				+"</tr>"
		
		body.append(str);
		}); //소스에 맞는 태그로 변경(실제 데이터 목록)
		
	} else {
		
		body.append("<tr>" + "<td colspan='18'>조회 결과가 없습니다</td>" + "</tr>");
		
	}
}

//저장 버튼 이벤트 바인딩
$("#hmnRsrcsSttstcsSave").on("click", function() {
	
	hmnRsrcsSttstcsSave();
});

 //저장
 function hmnRsrcsSttstcsSave() {
   
   var hmnRsrcsSttstcsList = [];

   $("#hr_table tbody .status").each(function(i) {
      
      if($(this).data('status') != 'R') {
         
         var data = {
               
        	   hmnRsrcsSttstcsStatus : $(this).data('status'),
               hmnRsrcsSttstcsDt : $(this).parents('tr').find(".hmnRsrcsSttstcsDt").text().trim(),
               hmnRsrcsSttstcsSriNtAc : $(this).parents('tr').find(".hmnRsrcsSttstcsSriNtAc").text().trim(),
               hmnRsrcsSttstcsSriNtItv : $(this).parents('tr').find(".hmnRsrcsSttstcsSriNtItv").text().trim(),
               hmnRsrcsSttstcsJkNtAc : $(this).parents('tr').find(".hmnRsrcsSttstcsJkNtAc").text().trim(),
               hmnRsrcsSttstcsJkNtItv : $(this).parents('tr').find(".hmnRsrcsSttstcsJkNtItv").text().trim(),
               hmnRsrcsSttstcsSriSrcRs : $(this).parents('tr').find(".hmnRsrcsSttstcsSriSrcRs").text().trim(),
               hmnRsrcsSttstcsSriSrcSg : $(this).parents('tr').find(".hmnRsrcsSttstcsSriSrcSg").text().trim(),
               hmnRsrcsSttstcsSriSrcAp : $(this).parents('tr').find(".hmnRsrcsSttstcsSriSrcAp").text().trim(),
               hmnRsrcsSttstcsSriSrcAt : $(this).parents('tr').find(".hmnRsrcsSttstcsSriSrcAt").text().trim(),
               hmnRsrcsSttstcsSriSrcAs : $(this).parents('tr').find(".hmnRsrcsSttstcsSriSrcAs").text().trim(),
               hmnRsrcsSttstcsSriSrcCc : $(this).parents('tr').find(".hmnRsrcsSttstcsSriSrcCc").text().trim(),
               hmnRsrcsSttstcsJkSrcRs : $(this).parents('tr').find(".hmnRsrcsSttstcsJkSrcRs").text().trim(),
               hmnRsrcsSttstcsJkSrcSg : $(this).parents('tr').find(".hmnRsrcsSttstcsJkSrcSg").text().trim(),
               hmnRsrcsSttstcsJkSrcAp : $(this).parents('tr').find(".hmnRsrcsSttstcsJkSrcAp").text().trim(),
               hmnRsrcsSttstcsJkSrcAt : $(this).parents('tr').find(".hmnRsrcsSttstcsJkSrcAt").text().trim(),
               hmnRsrcsSttstcsJkSrcAs : $(this).parents('tr').find(".hmnRsrcsSttstcsJkSrcAs").text().trim(),
               hmnRsrcsSttstcsJkSrcCc : $(this).parents('tr').find(".hmnRsrcsSttstcsJkSrcCc").text().trim(),
               hmnRsrcsSttstcsNt : $(this).parents('tr').find(".hmnRsrcsSttstcsNt").text().trim(),
               
            };
         
         hmnRsrcsSttstcsList.push(data);
         }
         
      });
   
   var hmnRsrcsSttstcsData = JSON.stringify(hmnRsrcsSttstcsList);
   
   $.ajax({
      url : '/hmnRsrcsSttstcs/hmnresourcesInsert.do',
        type: 'POST',
        data: {"hmnRsrcsSttstcsData" : hmnRsrcsSttstcsData},
        dataType:'json',
        success: function(data) {
           alert("저장되었습니다.");
        },
        error: function(x, e) {
            //err msg 출력
            $.failMsg('error');
        },
        complete: function() {
        	showSearchList("", "ALL");
      }
   });
}  
 
//통계 버튼 이벤트 바인딩
$("#button_sch").on("click", function() {
	 var startDt = $("#startDt").val();
	 var endDt = $("#endDt").val();
	 if(startDt > endDt){
		 alert("시작일자보다 종료일자가 더 큽니다. 다시 입력하세요. ");
		 return
	 }else{buttonSearch(startDt,endDt);
	 }
 });
 
//데이터를 가져옴
function buttonSearch(_startDt,_endDt) {
 		
	 var searchData = {
				
			 startDt : _startDt,
			 endDt : _endDt
						
			};
 
 		$.ajax({
 			url : '/humanresources/buttonHumanresources.do',
 	        type: 'POST',
 	        data: JSON.stringify(searchData),
 	        dataType:'json',
 	        contentType:"application/json;charset=UTF-8",
 	        success: function(data) {
 				
 	        	showButtonHumanresourcesList(data);
 	        	
 	        },
 	        error: function(x, e) {
 	            //err msg 출력
 	            $.failMsg('error');
 	        }
 		});
 	}
 	
//팝업에 데이터를 뿌려줌
function showButtonHumanresourcesList(data) {
		
		var humanresourcesList = data.humanresourcesList;
		
		var startDt = $("#startDt").val();
		var endDt = $("#endDt").val();
		
		var body = $("#hmnRsrcsSttstcsAuth_table tbody");
		body.empty();
		if(humanresourcesList.length > 0 ) {
			
			$.each(humanresourcesList, function(index, value) {

				str = "<tr class='list-row'>"

					+	"<td class='hmnRsrcsSttstcsSriNtAc'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriNtAc + "'>" + value.hmnRsrcsSttstcsSriNtAc + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsSriNtItv'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriNtItv + "'>" + value.hmnRsrcsSttstcsSriNtItv + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsJkNtAc'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkNtAc + "'>" + value.hmnRsrcsSttstcsJkNtAc + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsJkNtItv'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkNtItv + "'>" + value.hmnRsrcsSttstcsJkNtItv + "</p>"
					+	"</td>"
					
					+	"<td class='hmnRsrcsSttstcsSriSrcRs'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcRs + "'>" + value.hmnRsrcsSttstcsSriSrcRs + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsSriSrcSg'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcSg + "'>" + value.hmnRsrcsSttstcsSriSrcSg + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsSriSrcAp'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcAp + "'>" + value.hmnRsrcsSttstcsSriSrcAp + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsSriSrcAt'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcAt + "'>" + value.hmnRsrcsSttstcsSriSrcAt + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsSriSrcAs'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcAs + "'>" + value.hmnRsrcsSttstcsSriSrcAs + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsSriSrcCc'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsSriSrcCc + "'>" + value.hmnRsrcsSttstcsSriSrcCc + "</p>"
					+	"</td>"
					
					+	"<td class='hmnRsrcsSttstcsJkSrcRs'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcRs + "'>" + value.hmnRsrcsSttstcsJkSrcRs + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsJkSrcSg'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcSg + "'>" + value.hmnRsrcsSttstcsJkSrcSg + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsJkSrcAp'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcAp + "'>" + value.hmnRsrcsSttstcsJkSrcAp + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsJkSrcAt'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcAt + "'>" + value.hmnRsrcsSttstcsJkSrcAt + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsJkSrcAs'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcAs + "'>" + value.hmnRsrcsSttstcsJkSrcAs + "</p>"
					+	"</td>"
					+	"<td class='hmnRsrcsSttstcsJkSrcCc'>"
					+		"<p class='rowColumn' contenteditable='false' data-default='" + value.hmnRsrcsSttstcsJkSrcCc + "'>" + value.hmnRsrcsSttstcsJkSrcCc + "</p>"
					+	"</td>"

					+"</tr>"
				
			body.append(str);
			}); //소스에 맞는 태그로 변경(실제 데이터 목록)
		}
	}

//컬럼 더블클릭시 수정활성화 이벤트 바인딩
$("table").on("dblclick", "td", function() {
	
	var statusCell = $(this).parents("tr").find("td.status");
	
	//td class status가 I(insert)이거나 D(delete)면 반환하라.
	if(statusCell.data("status") == "I") {
		
		return;
		
	}
	
	$(this).find("p").attr("contenteditable", "true").focus();
	
	statusCell.html("수정");
	
	statusCell.data("status", "U");
	
});

</script>

</body>

</html>
