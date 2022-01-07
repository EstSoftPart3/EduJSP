<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTDHTML4.01Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
                        <a href="index3.html" class="nav-link">Home</a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="#" class="nav-link">Contact</a>
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
                                    <img src="/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                                    <div class="media-body">
                                        <h3 class="dropdown-item-title">
                                            John Pierce
                                            <span class="float-right text-sm text-muted">
                                                <i class="fas fa-star"></i>
                                            </span>
                                        </h3>
                                        <p class="text-sm">I got your message bro</p>
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
                            <a href="#" class="dropdown-item dropdown-footer">See All
                                						Messages</a>
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
                                <span class="float-right text-muted text-sm">12
                                    							hours</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="fas fa-file mr-2"></i>
                                3 new reports
                                <span class="float-right text-muted text-sm">2
                                    							days</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item dropdown-footer">See All
                                						Notifications</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                            <i class="fas fa-th-large"></i>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <%@ include file="/WEB-INF/jsp/comn/component/include-sideBar.jspf"%>
        <!-- /.navbar -->
        <!-- Content Wrapper. Contains page content -->
        <%-- <form method="POST" id="insertForm" action='<c:url value="/member/insertMember.do" />'> --%>
            <div class="content-wrapper"> <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">장비 대여 신청</h1>
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
                    <div
                        class="row">
                        <!-- left column -->
                        <div
                            class="col-md-6">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">정보 입력</h3>
                                </div>
                                <!-- /.card-header -->
                                <!-- card-body -->
                                <div class="card-body">
                                    <div class="form-group row">
                                        <label for="inputlntlSq" class="col-sm-2 col-form-label">대여Sq</label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" id="inputlntlSq" name="lntlSq" placeholder="자동입력 " readonly>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEqpmntSq" class="col-sm-2 col-form-label">대여 장비 정보
                                        </label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" id="inputEqpmntSq" name="eqpmntSq" placeholder="장비관리번호 " value="" readonly>
                                        </div>
                                        <!-- <label for="inputEqpmntTcd" class="col-sm-2 col-form-label"> </label> -->
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" id="inputEqpmntTcd" name="eqpmntTcd" placeholder="장비구분(노트북)" value="" readonly>
                                        </div>
                                        <p>
                                            <button id="popEquipOpen" class="btn btn-primary float-right">장비 찾기</button>
                                        </p>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputMbrSq" class="col-sm-2 col-form-label">대여 사원 정보
                                        </label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" id="inputMbrSq" name="mbrSq" placeholder="사원번호" value="" readonly>
                                        </div>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" id="inputMbrNm" name="mbrNm" placeholder="사원이름" value="" readonly>
                                        </div>
                                        <p>
                                            <button id="popMemberOpen" class="btn btn-primary float-right">사원 찾기</button>
                                        </p>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputLntlStrtDate" class="col-sm-2 col-form-label text-right">대여일자</label>
                                        <div class="col-sm-4">
                                            <input type="date" class="form-control" name="lntlStrtDate" id="inputLntlStrtDate">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="inputEtcInfo" class="col-sm-2 col-form-label">비고</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="lntlMemo" id="inputLntlMemo"></div>
                                    </div>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <!-- right column -->
                    </div>
                </div>
            </section>
            <!-- 장비 modal content -->
            <div class="modal fade" id="modal-1">
                <div class="modal-dialog">
                    <div class="modal-content bg-secondary">
                        <div class="modal-header">
                            <h4 class="modal-title">장비대여</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div style="height: 400px; overflow: auto;">
                                <table id="equip_table" class="table table-hover table-striped table-bordered text-nowrap">
                                    <thead>
                                        <tr>
                                            <th class="checkbox-wrapper"><input type="checkbox" id="allCheckbox" class="table-checkbox" onclick='selectAll(this)'></th>
                                            <th>SQ</th>
                                            <th>기술 유형</th>
                                            <th>기술명</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:choose>
                                            <c:when test="${ fn:length(selectPsblEquipmentList) == 0 }">
                                                <tr>
                                                    <td colspan="10">조회 결과가 없습니다</td>
                                                </tr>
                                            </c:when>
                                            <c:otherwise>
                                                <c:forEach var="list" items="${ selectPsblEquipmentList }">
                                                    <tr class="list-row">
                                                        <td class="checkbox-wrapper">
                                                            <input id="checkbox" type="checkbox" name='select' class="table-checkbox checkbox-item" value='<c:out value="${ list.eqpmntSq }" />'/>
                                                        </td>
                                                        <td id="inputEqpmntSq"><c:out value="${list.eqpmntSq }"/></td>
                                                        <td><c:out value="${ list.eqpmntMngNum }"/></td>
                                                        <td id="inputEqpmntTcd"><c:out value="${ list.eqpmntTcd }"/></td>
                                                    </tr>
                                                </c:forEach>
                                            </c:otherwise>
                                        </c:choose>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer justify-content-between">
                            <button type="button" class="btn btn-outline-light" data-dismiss="modal">닫기</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- 사원 modal content -->
            <div class="modal fade" id="modal-2">
                <div class="modal-dialog">
                    <div class="modal-content bg-secondary">
                        <div class="modal-header">
                            <h4 class="modal-title">사원정보</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div style="height: 400px; overflow: auto;">
                                <table id="member_table" class="table table-hover table-striped table-bordered text-nowrap">
                                    <thead>
                                        <tr>
                                            <th class="checkbox-wrapper"><input type="checkbox" id="allCheckbox" class="table-checkbox" onclick='selectAll(this)'></th>
                                            <!-- <th>선택</th> -->
                                            <th>SQ</th>
                                            <th>사원이름</th>
                                            <th>사원직급</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:choose>
                                            <c:when test="${ fn:length(memberList) == 0 }">
                                                <tr>
                                                    <td colspan="10">조회 결과가 없습니다</td>
                                                </tr>
                                            </c:when>
                                            <c:otherwise>
                                                <c:forEach var="list" items="${ memberList }">
                                                    <tr class="list-row">
                                                        <td class="checkbox-wrapper">
                                                            <input id="checkbox" type="checkbox" name='select' class="table-checkbox checkbox-item" value='<c:out value="${ list.mbrSq }" />'/>
                                                        </td>
                                                        <td id="inputMbrSq"><c:out value="${ list.mbrSq }"/></td>
                                                        <td id="inputMbrNm"><c:out value="${ list.mbrNm }"/></td>
                                                        <td><c:out value="${ list.mbrPositnCd }"/></td>
                                                    </tr>
                                                </c:forEach>
                                            </c:otherwise>
                                        </c:choose>
                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer justify-content-between">
                                <button type="button" class="btn btn-outline-light" data-dismiss="modal">닫기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
        <%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf"%>
        <script>
            /* 추가버튼 동작 */
            function fn_insertEquipmentLentalCallBack(data) {
                var code = data.code;
                if (code > 0) { // 정상 추가시 장비 대여 화면으로 이동
                    alert("장비대여성공하였습니다. ");
                    var comSubmit = new ComSubmit();
                    comSubmit.setUrl("<c:url value='/equipmentlental/openEquipmentLentalListPage.do'/>");
                    comSubmit.submit();
                } else {
                    alert("대여를 실패하였습니다.");
                }
            }
            $("#insertButton").on("click", function () {
                // 유효성 검사
                // var lntlSq    = $("#inputlntlSq").val();
                var eqpmntSq = $("#inputEqpmntSq").val();
                var eqpmntTcd = $("#inputEqpmntTcd").val();
                var mbrSq = $("#inputMbrSq").val();
                var mbrNm = $("#inputMbrNm").val();
                var ltStrt = $("#inputLntlStrtDate").val();
                var ltMemo = $("#inputLntlMemo").val();
                // 장비관리번호 유효성 체크
                if (gfn_isNull(eqpmntSq)) {
                    alert("장비관리번호를  입력해주세요.");
                    return false;
                }
                // 장비구분 유효성 체크
                if (gfn_isNull(eqpmntTcd)) {
                    alert("장비구분를 입력해주세요.");
                    return false;
                }
                // 사원번호 유효성 체크
                if (gfn_isNull(mbrNm)) {
                    alert("사원번호를 입력해주세요.");
                    return false
                }
                // 대여일자 유효성 체크
                if (gfn_isNull(ltStrt)) {
                    alert("대여일자를  입력해주세요.");
                    return false;
                }
                //    var lntlSq= $("#inputlntlSq").val();
                var eqpmntSq = $("#inputEqpmntSq").val();
                var eqpmntTcd = $("#inputEqpmntTcd").val();
                var mbrSq = $("#inputMbrSq").val();
                var mbrNm = $("#inputMbrNm").val();
                var ltStrt = $("#inputLntlStrtDate").val();
                var ltMemo = $("#inputLntlMemo").val();
                var comAjax = new ComAjax();
                comAjax.setUrl("<c:url value='/equipmentlental/insertEquipmentLental.do' />");
                // comAjax.addParam("lntlSq", lntlSq);
                comAjax.addParam("eqpmntSq", eqpmntSq);
                comAjax.addParam("eqpmntTcd", eqpmntTcd);
                comAjax.addParam("mbrSq", mbrSq);
                comAjax.addParam("mbrNm", mbrNm);
                comAjax.addParam("lntlStrtDate", ltStrt);
                comAjax.addParam("lntlMemo", ltMemo);
                comAjax.setCallback(fn_insertEquipmentLentalCallBack); // 콜백 선언
                comAjax.ajax();
            });
            /* 추가버튼 동작끝 */
            /* 장비모달 */
            document.getElementById('popEquipOpen').addEventListener('click', function () {
                $("#modal-1").modal("show");
            });
            $("#equip_table tr").click(function () {
                var str = "";
                var tdArr = new Array();
                var tr = $(this);
                var td = tr.children();
                var eqpmntSq = td.eq(1).text();
                var eqpmntTcd = td.eq(2).text();
                document.getElementById("inputEqpmntSq").value = eqpmntSq;
                document.getElementById("inputEqpmntTcd").value = eqpmntTcd;
                console.log("aaaa" + eqpmntSq);
                console.log("bbbb" + eqpmntTcd);
                alert(eqpmntSq + " 번 " + eqpmntTcd + " 가 선택되었습니다. 닫기를 눌러주세요.");
            });
            /* 사람모달 */
            document.getElementById('popMemberOpen').addEventListener('click', function () {
                $("#modal-2").modal("show");
            });
            $("#member_table tr").click(function () {
                var str = "";
                var tdArr = new Array();
                var tr = $(this);
                var td = tr.children();
                var mbrSq = td.eq(1).text();
                var mbrNm = td.eq(2).text();
                document.getElementById("inputMbrSq").value = mbrSq;
                document.getElementById("inputMbrNm").value = mbrNm;
                console.log("cccc" + mbrSq);
                console.log("dddd" + mbrNm);
                alert(mbrSq + " 번 " + mbrNm + " 님이 선택되었습니다. 닫기를 눌러주세요.");
            });
        </script>
    </body>
</html>