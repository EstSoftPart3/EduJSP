<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTDHTML4.01Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
        </style>
    </head>
    <body class="hold-transition sidebar-mini layout-fixed">
        <div
            class="wrapper">
            <!-- Navbar -->
            <nav
                class="main-header navbar navbar-expand navbar-white navbar-light">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#" role="button">
                            <i class="fas fa-bars"></i>
                        </a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="/erp/sample/openSamplePage.do" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="#" class="nav-link">Contact</a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="/index.html" class="nav-link" target="_blank">Template</a>
                    </li>
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
                    <ul
                        class="navbar-nav ml-auto">
                        <!-- Messages Dropdown Menu -->
                        <li class="nav-item dropdown">
                            <a class="nav-link" data-toggle="dropdown" href="#">
                                <i class="far fa-comments"></i>
                                <span class="badge badge-danger navbar-badge">3</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                                <a
                                    href="#" class="dropdown-item">
                                    <!-- Message Start -->
                                    <div class="media">
                                        <img src="/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                                            <div class="media-body">
                                                <h3 class="dropdown-item-title">
                                                    Brad Diesel
                                                    <span class="float-right text-sm text-danger">
                                                        <i class="fas fa-star"></i>
                                                    </span>
                                                </h3>
                                                <p class="text-sm">Call me whenever you can...</p>
                                                <p class="text-sm text-muted">
                                                    <i class="far fa-clock mr-1"></i>
                                                    4 Hours Ago
                                                </p>
                                            </div>
                                        </div>
                                        <!-- Message End -->
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a
                                        href="#" class="dropdown-item">
                                        <!-- Message Start -->
                                        <div class="media">
                                            <img src="/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                                <div class="media-body">
                                                    <h3 class="dropdown-item-title">
                                                        Nora Silvester
                                                        <span class="float-right text-sm text-warning">
                                                            <i class="fas fa-star"></i>
                                                        </span>
                                                    </h3>
                                                    <p class="text-sm">The subject goes here</p>
                                                    <p class="text-sm text-muted">
                                                        <i class="far fa-clock mr-1"></i>
                                                        4 Hours Ago
                                                    </p>
                                                </div>
                                            </div>
                                            <!-- Message End -->
                                        </a>
                                        <div class="dropdown-divider"></div>
                                        <a
                                            href="#" class="dropdown-item">
                                            <!-- Message Start -->
                                            <div class="media">
                                                <img src="/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                                    <div class="media-body">
                                                        <h3 class="dropdown-item-title">
                                                            Nora Silvester
                                                            <span class="float-right text-sm text-warning">
                                                                <i class="fas fa-star"></i>
                                                            </span>
                                                        </h3>
                                                        <p class="text-sm">The subject goes here</p>
                                                        <p class="text-sm text-muted">
                                                            <i class="far fa-clock mr-1"></i>
                                                            4 Hours Ago
                                                        </p>
                                                    </div>
                                                </div>
                                                <!-- Message End -->
                                            </a>
                                            <div class="dropdown-divider"></div>
                                            <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                                        </div>
                                    </li>
                                    <!-- Notifications Dropdown Menu -->
                                    <li class="nav-item dropdown">
                                        <a class="nav-link" data-toggle="dropdown" href="#">
                                            <i class="far fa-bell"></i>
                                            <span class="badge badge-warning navbar-badge">15</span>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                                            <span class="dropdown-item dropdown-header">15 Notifications</span>
                                            <div class="dropdown-divider"></div>
                                            <a href="#" class="dropdown-item">
                                                <i class="fas fa-envelope mr-2"></i>
                                                4 new messages
                                                <span class="float-right text-muted text-sm">3 mins</span>
                                            </a>
                                            <div class="dropdown-divider"></div>
                                            <a href="#" class="dropdown-item">
                                                <i class="fas fa-users mr-2"></i>
                                                8 friend requests
                                                <span class="float-right text-muted text-sm">12 hours</span>
                                            </a>
                                            <div class="dropdown-divider"></div>
                                            <a href="#" class="dropdown-item">
                                                <i class="fas fa-file mr-2"></i>
                                                3 new reports
                                                <span class="float-right text-muted text-sm">2 days</span>
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
                            <!-- /.navbar -->
                            <%@ include file="/WEB-INF/jsp/comn/component/include-sideBar.jspf"%>
                            <!-- Content Wrapper. Contains page content -->
                            <div
                                class="content-wrapper">
                                <!-- Content Header (Page header) -->
                                <div class="content-header">
                                    <div class="container-fluid">
                                        <div class="row mb-2">
                                            <div class="col-sm-6">
                                                <h1 class="m-0 text-dark">장비 대여 게시판</h1>
                                            </div>
                                            <!-- /.col -->
                                            <div class="col-sm-6">
                                                <a href='<c:url value="/equipmentlental/openInsertEquipmentLentalPage.do" />' class="btn btn-primary float-right">장비 대여 등록</a>
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
                                                        <h3 class="card-title">EST 대여 목록</h3>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /.card-header -->
                                            <div class="card-body">
                                                <div style="height: 400px; overflow: auto;">
                                                    <table id="equipmentlentalList" class="table table-hover table-striped table-bordered text-nowrap">
                                                        <thead>
                                                            <tr>
                                                                <th class="checkbox-wrapper">
                                                                    <input type="checkbox" name='select' id="allCheckbox" class="table-checkbox" onclick='selectAll(this)'></th>
                                                                    <th>SQ</th>
                                                                    <th>장비 관리번호</th>
                                                                    <th>장비 구분</th>
                                                                    <th>대여 사원  번호</th>
                                                                    <th>대여 일자</th>
                                                                    <th>반납 일자</th>
                                                                    <th>비고</th>
                                                                    <th>반납</th>
                                                                    <th>삭제</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <c:choose>
                                                                    <c:when test="${ fn:length(equipmentlentalList) == 0 }">
                                                                        <tr>
                                                                            <td colspan="10">조회 결과가 없습니다</td>
                                                                        </tr>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <c:forEach var="List" items="${ equipmentlentalList }">
                                                                            <tr class="list-row">
                                                                                <td class="checkbox-wrapper">
                                                                                    <input type="checkbox" name='select' id="checkbox" class="table-checkbox checkbox-item" value='<c:out value="${ List.lntlSq }" />'/>
                                                                                </td>
                                                                                <td class="lntlSq">
                                                                                    <c:out value="${ List.lntlSq }"/></td>
                                                                                <td><c:out value="${ List.eqpmntSq }"/></td>
                                                                                <td><c:out value="${ List.eqpmntTcd }"/></td>
                                                                                <td><c:out value="${ List.mbrSq }"/></td>
                                                                                <td><c:out value="${ List.lntlStrtDate }"/></td>
                                                                                <td><c:out value="${ List.lntlRtrnDate }"/></td>
                                                                                <td><c:out value="${ List.lntlMemo}"/></td>
                                                                                <td>
                                                                                    <a href='<c:url value='/equipmentlental/openRtrnEquipmentLentalPage.do?update=${ List.lntlSq }' />' class='btn btn-primary float-center'>반납</a>
                                                                                </td>
                                                                                <td class='delete-btn'>
                                                                                    <button class='btn btn-primary float-center' onclick='fn_deletebutton(${ List.lntlSq });'>삭제</button>
                                                                                </td>
                                                                            </tr>
                                                                        </c:forEach>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <!-- /.card-body -->
                                                <div class="card-footer"></div>
                                            </div>
                                            <!-- /.card -->
                                        </div>
                                    </div>
                                    <!-- /.row -->
                                </div>
                                <!-- /.container-fluid -->
                            </section>
                            <!-- /.content -->
                            <form id="commonForm"></form>
                        </div>
                        <form name="frmPopup" id="frmPopup">
                            <input type="hidden" name="popupMbrSq" id="popupMbrSq"/>
                        </form>
                        <!-- /.content-wrapper -->
                        <footer class="main-footer">
                            <strong>Copyright &copy; 2014-2019
                                <a href="http://adminlte.io">AdminLTE.io</a>.
                            </strong>
                            All rights reserved.
                            <div class="float-right d-none d-sm-inline-block">
                                <b>Version</b>
                                3.0.5
                            </div>
                        </footer>
                        <!-- Control Sidebar -->
                        <aside
                            class="control-sidebar control-sidebar-dark"><!-- Control sidebar content goes here -->
                        </aside>
                        <!-- /.control-sidebar -->
                    </div>
                    <!-- ./wrapper -->
                    <%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf"%>
                    <script>
                        $(document).ready(function () {
                            $(".delete-btn").on("click", function (e) {
                                e.stopPropagation();
                            });
                        })
                        function fn_deletebutton(data) {
                            if (confirm("삭제하시겠습니까?") == true) {
                                var comAjax = new ComAjax();
                                comAjax.setUrl("<c:url value='/equipmentlental/deleteEquipmentLental.do'/>"); // 프로그램 URI
                                comAjax.addParam("delete", data);
                                comAjax.setCallback(fn_deleteEquipmentLentalCallBack); // 콜백 선언
                                comAjax.ajax();
                            }
                        }
                        function fn_deleteEquipmentLentalCallBack(data) {
                            var code = data.code;
                            if (code > 0) { // 정상 추가시 장비 대여 화면으로 이동
                                alert("삭제 성공하였습니다. ");
                                var comSubmit = new ComSubmit();
                                comSubmit.setUrl("<c:url value='/equipmentlental/openEquipmentLentalListPage.do'/>");
                                comSubmit.submit();
                            } else {
                                alert("삭제를 실패하였습니다.");
                            }
                        }
                    </script>
                </body>
            </html>