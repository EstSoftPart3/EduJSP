<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/comn/component/include-header.jspf"%>
</head>
<body>
	<div class="col-sm-4">
		<input type="hidden" name="mbrSqArr" id="mbrSqArr" value="<%=request.getParameter("mbrSqArr") %>" />
		<input type="date" class="form-control" name="mbrLeaveDt" id="inputLeaveDt" />
		<button type="button" id="leaveDt_popup_btn">등록</button>
	</div>
	<%@ include file="/WEB-INF/jsp/comn/component/include-body.jspf"%>
	<script>
		function fn_updateLeaveDtCallback(data) {
			var result = data.code;
			
			if (result > 0) {
				alert("퇴사처리 되었습니다.");
				window.opener.location.reload();
				window.close();
			}
		}
	
		$(document).ready(function() {
			$("#leaveDt_popup_btn").on("click", function(e) {
				var mbrSqArr = $("#mbrSqArr").val().split(",");
				var date = $("#inputLeaveDt").val();
				
				if (gfn_isNull(date)) {
					alert("날짜를 입력해주세요.");
				} else {
					var comAjax = new ComAjax();
					comAjax.setUrl("<c:url value='/member/updateLeaveDt.do' />");
					
					comAjax.addParam("mbrSqArr", mbrSqArr);
					comAjax.addParam("mbrLeaveDt", date);
					
					comAjax.setCallback(fn_updateLeaveDtCallback);
					comAjax.ajax();
				}
			});
		});
	</script>
</body>
</html>