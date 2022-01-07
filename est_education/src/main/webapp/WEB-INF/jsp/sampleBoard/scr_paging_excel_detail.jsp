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
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a></li>
                <li class="nav-item d-none d-sm-inline-block"><a href="index3.html" class="nav-link">Home</a></li>
                <li class="nav-item d-none d-sm-inline-block"><a href="#" class="nav-link">Contact</a></li>
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
            <form name="readForm" role="form" method="post">
                <input type="hidden" id="FILE_NO" name="FILE_NO" value="">
            </form>

            <!-- Right navbar links -->
            <ul class="navbar-nav ml-auto">
                <!-- Messages Dropdown Menu -->
                <li class="nav-item dropdown"><a class="nav-link" data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
                        <span class="badge badge-danger navbar-badge">3</span>
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
                            </div> <!-- Message End -->
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
                            </div> <!-- Message End -->
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
                            </div> <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item dropdown-footer">See All
                            Messages</a>
                    </div>
                </li>
                <!-- Notifications Dropdown Menu -->
                <li class="nav-item dropdown"><a class="nav-link" data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span class="badge badge-warning navbar-badge">15</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                        <span class="dropdown-item dropdown-header">15 Notifications</span>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item"> <i class="fas fa-envelope mr-2"></i> 4 new messages <span class="float-right text-muted text-sm">3 mins</span>
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
                    </div>
                </li>
                <li class="nav-item"><a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button"> <i class="fas fa-th-large"></i>
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
                            <h1 class="m-0 text-dark"><a href="/erp/sample/sampleBoardPagingList.do">게시판</a> > 게시판 상세 정보</h1>
                        </div>
                        <!-- /.col -->

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
                        <div class="col-md-12">
                            <!-- general form elements -->
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h3 class="card-title">[${ detail.bno }]번 게시판 상세</h3>
                                </div>
                                <!-- /.card-header -->

                                <!-- card-body -->
                                <div class="card-body">
                                    <input type="hidden" id="bno" value="${ detail.bno }" readonly="readonly">
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">글 제목</label>
                                        <label class="col-sm-4 col-form-label">${ detail.title }</label>
                                    </div>
                                    <hr>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">글 내용</label>
                                        <label class="col-sm-4 col-form-label">${ detail.content }</label>
                                    </div>
                                    <hr>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">글 작성자</label>
                                        <label class="col-sm-4 col-form-label">${ detail.writer }</label>
                                    </div>
                                    <hr>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">글 최초등록일</label>
                                        <label class="col-sm-10 col-form-label">
                                            <fmt:formatDate value="${ detail.regdate }" pattern="yyyy-MM-dd a HH:mm" /></label>
                                    </div>
                                    <hr>
                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">글 조회수</label>
                                        <label class="col-sm-4 col-form-label">${ detail.viewcnt } 회</label>
                                    </div>
                                    <hr>
                                    <div class="form-group row">
                                        <input type="hidden" id="FILE_NO" name="FILE_NO" value="">
                                        <label class="col-sm-2 col-form-label">첨부 파일</label>
                                        <c:forEach var="file" items="${file}">
                                            <a href="#" onclick="fn_fileDown('${file.FILE_NO}'); return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </c:forEach>
                                    </div>
                                    <hr>
                                    <b>해당 게시물의 저작권은 해당 게시물 작성자에게 있습니다. 불펌은 금합니다.</b>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <!-- right column -->
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="btn-wrapper float-middle">
                        <a href='<c:url value="/erp/sample/sampleBoardPagingList.do" />' class="btn btn-info">목록</a>
                        <a href='<c:url value="/erp/sample/openSampleUpdatePage.do?bno=${detail.bno}" />' class="btn btn btn-primary">수정</a>
                        <a href='<c:url value="/erp/sample/sampleBoardDelete.do?bno=${detail.bno }" />' class="btn btn-danger">삭제</a>
                    </div>
                </div>
                <br>
                
                <!-- 댓글 -->
                <!-- /.col -->
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header p-2">
                            <b>댓글</b><input class="btn btn btn-primary float-right" type="button" data-toggle="modal" data-target="#exampleModal" value="댓글 등록">
                        </div>
                        <div class="card-body">
                            <div class="tab-content">
                                <div class="active tab-pane" id="activity">
                                    <!-- 댓글 표시 -->

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 댓글 표시 끝 -->

                <!-- 댓글 등록 모달창 -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="exampleModalLabel">댓글 등록</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <input type="hidden" value="${ detail.bno }" id="replyBno">
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">댓글작성자</label>
                                        <input type="text" class="form-control" id="replyWriter" value="${ sessionScope.USER_SESSION_ID }" readonly="readonly">
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">새글 내용</label>
                                        <textarea class="form-control" id="replyText"></textarea>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">목록</button>
                                <button type="button" class="btn btn-info btn-sm" id="insertReply">등록</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 댓글 등록 모달창 끝 -->

				<!-- 댓글 수정 모달창 -->
                <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="exampleModalLabel">댓글 수정</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <input type="hidden" value="" id="modalReplyBno">
                                    <input type="hidden" value="" id="modalReplyNo">
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">댓글작성자</label>
                                        <input type="text" class="form-control" id="replyWriter" value="${ sessionScope.USER_SESSION_ID }" readonly="readonly">
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">변경할 내용</label>
                                        <textarea class="form-control" id="modalReplyText"></textarea>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">목록</button>
                                <button type="button" class="btn btn-info btn-sm" id="updateReply">수정</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 댓글 수정 모달창 끝 -->
                
            </section>
        </div>
        <!-- </form> -->


        <!-- 댓글  -->

        <!-- /.content-wrapper -->
        <footer class="main-footer"> <strong>Copyright
                &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.
            </strong> All rights reserved.
            <div class="float-right d-none d-sm-inline-block">
                <b>Version</b> 3.0.5
            </div>
        </footer>


        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    <%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf"%>
    <script>
		
    	
        //페이지 시작시 자동 실행 이벤트
        $(document).ready(function() {
            sampleBoardReplyList() //해당 게시판 댓글 출력(컨트롤러단에서 호출하는게 아닌 Ajax를 통해서 로드 될때 실행 되어 댓글을 출력.)
        });
        
      	//값에 대한 NULL, undifinde 등 체크 함수
        function element_isnull(obj) {
            return (!!obj) ? obj : '';
        }
        
      	//선택된 게시판 파일 다운로드 이벤트
        function fn_fileDown(fileNo) {

            var msg = confirm("다운로드를 하시겠습니까?");
            if (msg == true) {

                var formObj = $("form[name='readForm']");
                $("#FILE_NO").attr("value", fileNo);
                formObj.attr("action", "/fileDown.do");
                formObj.submit();

            }
        }
        
        //댓글목록 Ajax로 호출 함수
        function sampleBoardReplyList() {
            var bno = $("#bno").val();
            var comAjax = new ComAjax();
            comAjax.setUrl("<c:url value='/erp/sample/sampleBoardReplyList.do' />");
            comAjax.addParam("bno", bno);
            comAjax.setCallback(fn_ReplyCallBack);
            comAjax.ajax();
        }

        //게시판 댓글 CALLBACK 목록 
        function fn_ReplyCallBack(data) {
            var ReplyList = data.sampleBoardReplyList;
            var body = $("#activity");
            body.empty();
            if (ReplyList.length > 0) {

                ReplyList.forEach(reply => {

                    /* Timestemp 변환 코드 */
                    var timestamp = reply.regDate;
                    var date = new Date(timestamp);
                    var year = date.getFullYear().toString().slice(-2);
                    var month = ("0" + (date.getMonth() + 1)).slice(-2);
                    var day = ("0" + date.getDate()).slice(-2);
                    var hour = ("0" + date.getHours()).slice(-2);
                    var minute = ("0" + date.getMinutes()).slice(-2);
                    var second = ("0" + date.getSeconds()).slice(-2);
                    var returnDate = year + "." + month + "." + day + ". " + hour + ":" + minute + ":" + second;
                    /* Timestemp 변화 코드 끝 */

                    body.append(

                        "<div class='post'>" +
                        "  <div class='user-block'>" +
                        "    <img class='img-circle img-bordered-sm' src='../../dist/img/AdminLTELogo.png' alt='user image'>" +
                        "    <span class='username'>" +
                        "    <a href='#'>" + reply.replyWriter + "</a>" +
                        "    <a href='javascript:replyDelete(" + reply.replyNo + ")' class='float-right btn-tool'><i class='fas fa-times'></i></a>" +
                        "    </span> " +
                        "    <span class='description'>" + returnDate + "</span>" +
                        "  </div>" +
                        "  <p>" + reply.replyText + "</p>" +
                        "  <p>" +
                        /* "    <a href='#' class='link-black text-sm mr-2'><i class='fas fa-share mr-1'></i> Share</a>" +
                        "    <a href='#' class='link-black text-sm mr-2'><i class='far fa-thumbs-up mr-1'></i> Like</a>" + */
                        "    <a href='javascript:replyDetail(" + reply.replyNo + "," + reply.bno + ")' class='link-black text-sm'><i class='far fa-file-alt mr-1'></i> 수정</a>" +
                        "    <span class='float-right'>" +
                        "      <a href='#' class='link-black text-sm'>" +
                        "        <i class='far fa-comments mr-1'></i> Comments (0)" +
                        "      </a>" +
                        "    </span>" +
                        "  </p>" +
                        "  <input class='form-control form-control-sm' type='text' placeholder='덧글을 입력하세요.''>" +
                        "  <input type='hidden' id='bno' value='" + reply.bno + "'>" +
                        "</div>"

                    );
                });

            } else {

                body.append(

                    "<div class='post'>" +
                    "  <div class='user-block'>" +
                    "    <p>현재 게시판에는 댓글이 존재 하지 않습니다. 등록버튼을 눌러서 현재 게시판에 처음으로 댓글을 등록해보세요.</p>" +
                    "  </div>" +
                    "</div>"
                );
            }
        }

		//-----------------------------------------------------------------댓글 등록
        //댓글 등록 모달창
        $('#replyInsert').on('show.bs.modal', function(event) {

            var button = $(event.relatedTarget);
            var recipient = button.data('댓글입력');
            var modal = $(this);

        })

        //댓글 등록  이벤트
        $("#insertReply").on("click", function() {

            var bno = $("#replyBno").val();
            var replyWriter = $("#replyWriter").val();
            var replyText = $("#replyText").val();

            if (gfn_isNull(replyText)) {
                alert("댓글 내용을 입력해주세요.");
                return false;
            }


            var comAjax = new ComAjax();
            comAjax.setUrl("<c:url value='/erp/sample/sampleBoardReplyInsert.do' />");
            comAjax.addParam("bno", bno);
            comAjax.addParam("replyText", replyText);
            comAjax.addParam("replyWriter", replyWriter);
            comAjax.setCallback(fn_sampleBoardReplyinsertCall);
            comAjax.ajax();
        });

        //댓글 등록 CALLBACK
        function fn_sampleBoardReplyinsertCall() {

            alert("댓글이 등록 되었습니다.");
            var bno = $("#replyBno").val()
            var comSubmit = new ComSubmit();
            comSubmit.addParam("bno", bno);
            comSubmit.setUrl("<c:url value='/erp/sample/sampleBoardDetail.do' />");
            comSubmit.submit();
        }

    	//댓글 수정 모달창 + 모달창 호출 시 해당 상세내용 표시 되는 이벤트
	    function replyDetail(replyNo,bno) {
	        console.log("replyNo : " + replyNo);
	        console.log("bno : " + bno);
			
	        var con = true;

            con = confirm("댓글을 수정하시겠습니까?");

            if (con == false) {

                return false;
            } else {
            	
                var comAjax = new ComAjax();
                comAjax.addParam("replyNo", replyNo);
                comAjax.addParam("bno", bno);
                comAjax.setUrl("<c:url value='/erp/sample/sampleBoardReplyDetail.do' />");
                comAjax.setCallback(modal);
                comAjax.ajax();

            }
	
	    }
    	
	  	//수정 모달창 호출
    	function modal(data){
    		
    	   var detail = data.detail;
    	   $('#exampleModal2').modal('show');
    	   
    	   document.getElementById("modalReplyBno").value = detail.bno;
    	   document.getElementById("modalReplyNo").value = detail.replyNo;
    	   document.getElementById("modalReplyText").value = detail.replyText;
    	   

    	}	
	  	
	  	//수정 이벤트 발생
    	 $("#updateReply").on("click", function() {

             var bno = $("#modalReplyBno").val();
             var replyNo = $("#modalReplyNo").val();
             var replyText = $("#modalReplyText").val();

             if (gfn_isNull(replyText)) {
                 alert("댓글 내용을 입력해주세요.");
                 return false;
             }

			 
             var comAjax = new ComAjax();
             comAjax.setUrl("<c:url value='/erp/sample/sampleBoardReplyUpdate.do' />");
             comAjax.addParam("bno", bno);
             comAjax.addParam("replyNo", replyNo);
             comAjax.addParam("replyText", replyText);
             comAjax.addParam("replyWriter", replyWriter);
             comAjax.setCallback(fn_sampleBoardReplyUpdateCall);
             comAjax.ajax();
         });
	  	
    	 function fn_sampleBoardReplyUpdateCall() {

             alert("댓글이 수정 되었습니다.");
             $('#exampleModal2').modal('hide');
             var bno = $("#replyBno").val()
             var comAjax = new ComAjax();
             comAjax.setUrl("<c:url value='/erp/sample/sampleBoardReplyList.do' />");
             comAjax.addParam("bno", bno);
             comAjax.setCallback(fn_ReplyCallBack);
             comAjax.ajax();
         }

        //댓글 삭제 이벤트 
        function replyDelete(replyNo) {
            var con = true;

            con = confirm("댓글을 삭제하시겠습니까?");

            if (con == false) {

                return false;
            } else {

                alert("댓글이 삭제 되었습니다.");

                var bno = $("#replyBno").val()
                var comAjax = new ComAjax();
                comAjax.addParam("replyNo", replyNo);
                comAjax.setUrl("<c:url value='/erp/sample/sampleBoardReplyDelete.do' />");
                comAjax.setCallback(sampleBoardReplyList);
                comAjax.ajax();

            }
        }


        
    </script>
</body>

</html>